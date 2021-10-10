package nvdla_bp.conv

import spinal.core._
import spinal.lib._
import spinal.lib.fsm.{EntryPoint, State, StateMachine}


case class fp_acc(eleWidth: Int) extends Component {
  val io = new Bundle {
    val ina = slave Stream (SInt(eleWidth bits))
    val out = master Stream (SInt(eleWidth bits))

    val par_acc_cnt = in UInt (16 bits) // r*s kernel size
    val acc_enable = in Bool()
  }

  noIoPrefix()

  val accnt = Reg(UInt(16 bits)) init (0)
  val par_acc_cnt = Reg(UInt(16 bits)) init (0)
  val result = Reg(SInt(eleWidth bits)) init (0) // initial zero
  val result_valid = Reg(Bool()) init (True) // initial valid
  val fp_adder = new fp_adder(eleWidth)

  io.ina.ready := False
  fp_adder.io.ina.payload := io.ina.payload
  fp_adder.io.ina.valid := io.ina.valid && io.ina.ready

  fp_adder.io.inb.payload := result
  fp_adder.io.inb.valid := result_valid && io.ina.valid && io.ina.ready // keep sync input

  fp_adder.io.out.ready := False


  io.out.valid := False
  io.out.payload := result


  // fsm
  val acc_fsm = new StateMachine {
    val IDLE = new State with EntryPoint
    val INIT = new State
    val INPUT = new State
    val CACU = new State
    val CHECK = new State
    val OUT = new State

    IDLE.whenIsActive {
      when(io.acc_enable) {
        goto(INIT)
      }
    }

    INIT.whenIsActive {
      par_acc_cnt := io.par_acc_cnt
      accnt := 0
      result := 0
      result_valid := True
      goto(INPUT)
    }

    INPUT.whenIsActive {
      io.ina.ready := True
      when(io.ina.ready && io.ina.valid) {
        accnt := accnt + 1
        result_valid := False
        goto(CACU)
      }
    }

    CACU.whenIsActive {
      fp_adder.io.out.ready := True
      when(fp_adder.io.out.valid && fp_adder.io.out.ready) {
        result := fp_adder.io.out.payload
        result_valid := True
        goto(CHECK)
      }
    }

    CHECK.whenIsActive {
      when(accnt === par_acc_cnt) {
        goto(OUT)
      }.otherwise {
        goto(INPUT)
      }
    }

    OUT.whenIsActive {
      io.out.valid := True
      when(io.out.valid && io.out.ready) {
        goto(IDLE)
      }
    }


  }


}

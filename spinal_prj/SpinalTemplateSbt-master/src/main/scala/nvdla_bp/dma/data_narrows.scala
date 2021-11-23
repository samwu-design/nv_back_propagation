package nvdla_bp.dma

import spinal.core._
import spinal.lib._
import spinal.lib.fsm.{EntryPoint, State, StateMachine}

case class data_narrows(eleWidth:Int)extends Component{
  val io = new Bundle{
    val in = Vec(slave Stream(UInt(eleWidth*8 bits)),8)
    val out = master Stream(UInt(eleWidth*8 bits))
  }

  val temp_data = Vec(Reg(UInt(eleWidth*8 bits))init(0),8)
  val cnt = Reg(UInt(4 bits))init(0)

  val in_ready = Bool()
  val in_valid = Bool()

  in_ready := False
  io.out.valid := False

  for(i<- 0 until 8){
    io.in(i).ready := in_ready
  }

  in_valid := io.in(0).valid && io.in(1).valid && io.in(2).valid && io.in(3).valid && io.in(4).valid && io.in(5).valid && io.in(6).valid && io.in(7).valid

  when(in_valid && in_ready){
    for(i<- 0 until 8) {
      temp_data(i) := io.in(i).payload
    }
  }

  io.out.payload := temp_data(cnt.resized)

  val narrows_fsm = new StateMachine {
    val IDLE = new State with EntryPoint
    val OUT_DATA = new State
    val CHECK = new State
    val END = new State

    IDLE.whenIsActive{
      in_ready := True
      when(in_ready && in_valid){
        goto(OUT_DATA)
      }
    }

    // make sure the next handshake is no interrupter
    OUT_DATA.whenIsActive{
      io.out.valid := True
      when(io.out.fire){
        cnt := cnt + 1
        when(cnt === 7){
          goto(END)
        }
      }
    }
//  inefficient state design
//    CHECK.whenIsActive{
//      when(cnt === 8){
//        goto(END)
//      }.otherwise{
//        goto(OUT_DATA)
//      }
//    }

    END.whenIsActive{
       cnt := 0
       goto(IDLE)
    }




  }

}

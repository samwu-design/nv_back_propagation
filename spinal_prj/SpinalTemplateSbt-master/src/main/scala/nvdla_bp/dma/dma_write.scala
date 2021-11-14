package nvdla_bp.dma

import spinal.core._
import spinal.lib._
import nvdla_bp._
import spinal.lib.bus.amba4.axi.Axi4WriteOnly
import spinal.lib.fsm.{EntryPoint, State, StateMachine}



case class dma_wr_para(addrwidth:Int) extends Bundle{
  val BaseAddr =  UInt(addrwidth bits)
  val burstlen =  UInt(16 bits)
}


case class dma_write(datawidth:Int,addrwidth:Int,idwidth:Int) extends Component{
 val axiconfig = MyTopLevelVerilog.getAxiConfig(datawidth, addrwidth, idwidth)
 val io = new Bundle {
   val axim = master(Axi4WriteOnly(axiconfig))
   val wr_para = dma_wr_para(addrwidth)
   val input = slave Stream(UInt(datawidth bits))
   val enable = Bool()
   val isIdle = Bool()
 }

  val fifo = StreamFifo(UInt(datawidth bits),16)

  val param = Reg(dma_wr_para(addrwidth))

  val w_cnt = Reg(UInt(16 bits))init(0)

  io.input <> fifo.io.push
  fifo.io.pop.ready := io.axim.w.ready

  param := io.wr_para

  io.axim.aw.payload.addr := param.BaseAddr
  io.axim.aw.payload.setBurstINCR()
  io.axim.aw.payload.size := log2Up(datawidth/8)
  io.axim.aw.payload.len := param.burstlen
  io.axim.aw.payload.id := 0

  io.axim.aw.valid := False
  io.axim.w.valid := False

  io.isIdle := False

  io.axim.w.last := (w_cnt === param.burstlen - 1)


  val dma_wr_fsm = new StateMachine {
    val IDLE = new State with EntryPoint
    val AW = new State
    val W = new State

    IDLE.whenIsActive {
      io.isIdle := True
      when(io.enable === True) {
        goto(AW)
      }
    }

    AW.whenIsActive {
      io.axim.aw.valid := True
      when(io.axim.aw.valid === True && io.axim.aw.ready === True) {
        goto(W)
      }
    }

    W.whenIsActive {
      io.axim.w.valid := fifo.io.pop.valid
      when(io.axim.w.ready === True && io.axim.w.valid === True) {
        w_cnt := w_cnt + 1
        when(io.axim.w.last === True) {
          goto(IDLE)
        }
      }
    }



  }






}

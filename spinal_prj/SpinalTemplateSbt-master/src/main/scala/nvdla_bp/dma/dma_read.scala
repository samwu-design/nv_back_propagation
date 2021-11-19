package nvdla_bp.dma

import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba4.axi.{Axi4, Axi4Config, Axi4ReadOnly}
import nvdla_bp._
import spinal.lib.fsm.{EntryPoint, State, StateMachine}


case class dma_rd_para(addrwidth:Int) extends Bundle{
  val BaseAddr =  in UInt(addrwidth bits)
  val burstlen =  in UInt(8 bits)
}


case class dma_read(datawidth:Int,addrwidth:Int,idwidth:Int) extends Component{
  val axiconfig = MyTopLevelVerilog.getAxiConfig(datawidth, addrwidth, idwidth)
  val io = new Bundle {
    val axim = master(Axi4ReadOnly(axiconfig))
    val rd_para = dma_rd_para(addrwidth)
    val output = master Stream(UInt(datawidth bits))
    val enable = in Bool()
    val isIdle = out Bool()
  }
  noIoPrefix()
  val fifo = StreamFifo(UInt(datawidth bits),16)

  val param = Reg(dma_rd_para(addrwidth))

  io.output <> fifo.io.pop

  param := io.rd_para


  io.axim.ar.payload.addr := param.BaseAddr
  io.axim.ar.payload.setBurstINCR()
  io.axim.ar.payload.size := log2Up(datawidth/8)
  io.axim.ar.payload.len := param.burstlen
  io.axim.ar.payload.id := 0

  io.axim.ar.valid := False
  io.axim.r.ready := False

  io.isIdle := False

  // store axi data in fifo
  //when(io.axim.r.payload.isOKAY() && io.axim.r.ready && io.axim.r.valid){
  //  fifo.io.push.payload := io.axim.r.payload.data.asUInt
  //}

  fifo.io.push.payload := io.axim.r.payload.data.asUInt
  fifo.io.push.valid := io.axim.r.valid && io.axim.r.ready


  val dma_rd_fsm = new StateMachine {
    val IDLE = new State with EntryPoint
    val AR = new State
    val R = new State

    IDLE.whenIsActive {
      io.isIdle := True
      when(io.enable === True) {
        goto(AR)
      }
    }

    AR.whenIsActive{
      io.axim.ar.valid := True
      when(io.axim.ar.valid === True && io.axim.ar.ready === True){
         goto(R)
      }
    }

    R.whenIsActive{
      io.axim.r.ready := fifo.io.push.ready
      when(io.axim.r.ready === True && io.axim.r.valid === True){
        when(io.axim.r.last === True){
          goto(IDLE)
        }
      }
    }


  }







}

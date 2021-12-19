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
    val is_dtwt_in = in Bool()

    val dt_output = master Stream(UInt(datawidth bits))
    val wt_output = master Stream(UInt(datawidth bits))

    val enable = in Bool()
    val flush = in Bool()
    val isIdle = out Bool()
  }
  noIoPrefix()
  val dtfifo = StreamFifo(UInt(datawidth bits),32)
  val wtfifo = StreamFifo(UInt(datawidth bits),32)

  val param = Reg(dma_rd_para(addrwidth))

  dtfifo.io.flush := io.flush
  wtfifo.io.flush := io.flush

  io.dt_output <> dtfifo.io.pop
  io.wt_output <> wtfifo.io.pop

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

  dtfifo.io.push.payload := io.axim.r.payload.data.asUInt
  dtfifo.io.push.valid := io.is_dtwt_in && io.axim.r.valid && io.axim.r.ready
  wtfifo.io.push.payload := io.axim.r.payload.data.asUInt
  wtfifo.io.push.valid := (~io.is_dtwt_in) && io.axim.r.valid && io.axim.r.ready


  val burst_cnt = Reg(UInt(3 bits))init(0)


  val dma_rd_fsm = new StateMachine {
    val IDLE = new State with EntryPoint
    val AR = new State
    val R = new State

    IDLE.whenIsActive {
      io.isIdle := True
      burst_cnt := 0
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
      io.axim.r.ready := True
      when(io.axim.r.ready === True && io.axim.r.valid === True){
        burst_cnt := burst_cnt + 1
        when(burst_cnt === param.burstlen){
          //when(io.axim.r.last === True){
          goto(IDLE)
        }
      }
    }


  }







}

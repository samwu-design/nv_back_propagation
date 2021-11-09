package nvdla_bp.dma

import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba4.axi.{Axi4, Axi4Config, Axi4ReadOnly}
import nvdla_bp._
import spinal.lib.fsm.{EntryPoint, State, StateMachine}


case class dma_rd_para(addrwidth:Int) extends Bundle{
  val BaseAddr =  UInt(addrwidth bits)
  val burstlen =  UInt(16 bits)
}


case class dma_read(datawidth:Int,addrwidth:Int,idwidth:Int) extends Component{
  val axiconfig = MyTopLevelVerilog.getAxiConfig(datawidth, addrwidth, idwidth)
  val io = new Bundle {
    val axim = master(Axi4ReadOnly(axiconfig))
    val rd_para = dma_rd_para(addrwidth)
    val output = master Stream(UInt(datawidth bits))
    val enable = Bool()
  }

  val fifo = StreamFifo(UInt(datawidth bits),16)

  val param = Reg(dma_rd_para(addrwidth))

  param := io.rd_para


  io.axim.ar.payload.addr := param.BaseAddr
  io.axim.ar.payload.setBurstINCR()
  io.axim.ar.payload.size := log2Up(datawidth/8)
  io.axim.ar.payload.len := param.burstlen

  val dma_rd_fsm = new StateMachine {
    val IDLE = new State with EntryPoint
    val AR = new State
    val R = new State

  }







}

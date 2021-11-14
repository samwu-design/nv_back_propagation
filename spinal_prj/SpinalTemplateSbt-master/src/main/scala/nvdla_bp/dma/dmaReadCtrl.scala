package nvdla_bp.dma


import spinal.lib._
import spinal.core._
import spinal.lib.bus.amba4.axi.{Axi4, Axi4Config, Axi4ReadOnly}
import nvdla_bp._
import spinal.lib.fsm.{EntryPoint, State, StateMachine}


case class dma_cfg() extends Bundle{
  // default CUBE channel & Kernel Nume is 8
  val dtBaseAddr = in UInt(64 bits)
  val wtBaseAddr = in UInt(64 bits)
  val dtWidth = in UInt(16 bits)
  val dtHeight = in UInt(16 bits)
  val wtWidth = in UInt(16 bits)
  val wtHeight = in UInt(16 bits)
}



case class dmaReadCtrl(datawidth:Int,addrwidth:Int,idwidth:Int) extends Component{
  val axiconfig = MyTopLevelVerilog.getAxiConfig(datawidth, addrwidth, idwidth)
  val io = new Bundle {
    val axim = master(Axi4ReadOnly(axiconfig))
    val cfg = dma_cfg()
    val output = master Stream(UInt(datawidth bits))
    val enable = in Bool()
    val isIdle = out Bool()
  }


  val par = Reg(dma_cfg())
  val burstlen = Reg(UInt(8 bits))init(0)
  val BaseAddr = Reg(UInt(addrwidth bits))init(0)


  val dma_rd = new dma_read(datawidth,addrwidth,idwidth)

  dma_rd.io.enable := False
  dma_rd.io.rd_para.burstlen := burstlen
  dma_rd.io.rd_para.BaseAddr := BaseAddr




  val dma_ctrl_fsm = new StateMachine {
    val IDLE = new State with EntryPoint
    val GET_PARAM = new State
    val READ_DT = new State
    val CHECK_DT = new State
    val READ_WT = new State
    val CHECK_WT = new State
    val END = new State

    IDLE.whenIsActive {
      io.isIdle := True
      when(io.enable === True) {
        goto(GET_PARAM)
      }
    }

    GET_PARAM.whenIsActive{
      par := io.cfg
      goto(READ_DT)
    }

    READ_DT.whenIsActive{
      burstlen := par.dtWidth
      BaseAddr := par.dtBaseAddr
      when(dma_rd.io.isIdle === True){
        dma_rd.io.enable := True
        goto()
      }
    }





  }



}





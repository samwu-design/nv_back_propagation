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
  val oWidth = in UInt(16 bits)
  val oHeight = in UInt(16 bits)
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
  noIoPrefix()

  val par = Reg(dma_cfg())
  val burstlen = Reg(UInt(8 bits))init(0)
  val BaseAddr = Reg(UInt(addrwidth bits))init(0)

  val dt_wcnt = Reg(UInt(16 bits))init(0)
  val dt_vcnt = Reg(UInt(16 bits))init(0)
  val wt_wcnt = Reg(UInt(16 bits))init(0)
  val wt_vcnt = Reg(UInt(16 bits))init(0)

  val dma_rd = new dma_read(datawidth,addrwidth,idwidth)

  io.isIdle := False

  dma_rd.io.enable := False
  dma_rd.io.rd_para.burstlen := burstlen
  dma_rd.io.rd_para.BaseAddr := BaseAddr

  io.axim <> dma_rd.io.axim
  io.output <> dma_rd.io.output

  val dma_ctrl_fsm = new StateMachine {
    val IDLE = new State with EntryPoint
    val GET_PARAM = new State
    val READ_DT = new State
    val CHECK_DT = new State
    val READ_WT = new State
    val CHECK_WT = new State
    val END = new State

    IDLE.whenIsActive {
      dt_wcnt := 0
      dt_vcnt := 0
      wt_wcnt := 0
      wt_vcnt := 0
      io.isIdle := True
      when(io.enable === True) {
        goto(GET_PARAM)
      }
    }

    // update parameter only in needed time
    GET_PARAM.whenIsActive{
      par := io.cfg
      goto(READ_DT)
    }

    READ_DT.whenIsActive{
      burstlen := par.dtWidth.resized
      BaseAddr := par.dtBaseAddr
      when(dma_rd.io.isIdle === True){
        dma_rd.io.enable := True
        when(dt_wcnt === par.dtWidth){
          dt_vcnt := dt_vcnt + 1
          dt_wcnt := 0
        }.otherwise{
          dt_wcnt := dt_wcnt + 1
        }
        goto(CHECK_DT)
      }
    }

    CHECK_DT.whenIsActive{
      when(dma_rd.io.isIdle === True){
        when(dt_vcnt === par.dtHeight && dt_wcnt === par.dtWidth) {
          goto(READ_WT)
        }.otherwise{
          goto(READ_DT)
        }
      }
    }

    READ_WT.whenIsActive{
      burstlen := par.wtWidth.resized
      BaseAddr := par.wtBaseAddr
      when(dma_rd.io.isIdle === True){
        dma_rd.io.enable := True

        when(wt_wcnt === par.wtWidth){
          wt_vcnt := wt_vcnt + 1
          wt_wcnt := 0
        }.otherwise{
          wt_wcnt := wt_wcnt + 1
        }

        goto(CHECK_WT)
      }
    }

    CHECK_WT.whenIsActive{
      when(dma_rd.io.isIdle === True){
        when(wt_vcnt === par.wtHeight && dt_wcnt === par.wtWidth) {
          goto(END)
        }.otherwise{
          goto(READ_WT)
        }
      }
    }

    END.whenIsActive{
      goto(IDLE)
    }


  }



}





package nvdla_bp.dma


import spinal.lib._
import spinal.core._
import spinal.lib.bus.amba4.axi.{Axi4, Axi4Config, Axi4ReadOnly}
import nvdla_bp._
import spinal.lib.fsm.{EntryPoint, State, StateMachine}




case class dmaReadCtrl(datawidth:Int,addrwidth:Int,idwidth:Int) extends Component{
  val axiconfig = MyTopLevelVerilog.getAxiConfig(datawidth, addrwidth, idwidth)
  val io = new Bundle {
    val axim = master(Axi4ReadOnly(axiconfig))
    val cfg = slave Stream(glb_param())
    val dt_output = master Stream(UInt(datawidth bits))
    val wt_output = master Stream(UInt(datawidth bits))
    val enable = in Bool()
    val isIdle = out Bool()
    val dma_rd_finished = out Bool()
  }
  noIoPrefix()

  val par = Reg(glb_param())
  val burstlen = Reg(UInt(8 bits))init(0)
  val BaseAddr = Reg(UInt(addrwidth bits))init(0)

  val dt_wcnt = Reg(UInt(16 bits))init(0)
  val dt_vcnt = Reg(UInt(16 bits))init(0)
  val wt_wcnt = Reg(UInt(16 bits))init(0)
  val wt_vcnt = Reg(UInt(16 bits))init(0)

  val dma_rd = new dma_read(datawidth,addrwidth,idwidth)

  val is_dtwt_mux = Reg(Bool())init(False)
  dma_rd.io.is_dtwt_in := is_dtwt_mux

  io.dma_rd_finished := False

  io.isIdle := False

  io.cfg.ready := False

  dma_rd.io.flush := io.enable
  dma_rd.io.enable := False
  dma_rd.io.rd_para.burstlen := burstlen
  dma_rd.io.rd_para.BaseAddr := BaseAddr

  io.axim <> dma_rd.io.axim
  io.dt_output <> dma_rd.io.dt_output
  io.wt_output <> dma_rd.io.wt_output

  val dma_rdctrl_fsm = new StateMachine {
    val IDLE = new State with EntryPoint
    val GET_DT_PARAM = new State
    val READ_DT = new State
    val CHECK_DT = new State
    val UPADDR_DT = new State
    val GET_WT_PARAM = new State
    val READ_WT = new State
    val CHECK_WT = new State
    val UPADDR_WT = new State
    val END = new State

    //1
    IDLE.whenIsActive {
      dt_wcnt := 0
      dt_vcnt := 0
      wt_wcnt := 0
      wt_vcnt := 0
      io.isIdle := True
      io.cfg.ready := True
      when(io.cfg.fire){
        par := io.cfg
      }
      when(io.enable === True) {
        goto(GET_DT_PARAM)
      }
    }

    //2 update parameter only in needed time
    GET_DT_PARAM.whenIsActive{
      burstlen := (par.dtWidth - 1).resized
      BaseAddr := par.rd_dtBaseAddr
      is_dtwt_mux := True
      goto(READ_DT)
    }

    //3
    READ_DT.whenIsActive{
      when(dma_rd.io.isIdle === True){
        dma_rd.io.enable := True
        dt_vcnt := dt_vcnt + 1
        goto(CHECK_DT)
      }
    }

    //4
    CHECK_DT.whenIsActive{
      when(dma_rd.io.isIdle === True){
        when(dt_vcnt === par.dtHeight) {   // 1x1  --> 1x0
          dt_vcnt := 0
          goto(GET_WT_PARAM)
        }.otherwise{
          goto(UPADDR_DT)
        }
      }
    }

    UPADDR_DT.whenIsActive{
      BaseAddr := (BaseAddr + (par.dtWidth |<< 5)).resized
      goto(READ_DT)
    }

    GET_WT_PARAM.whenIsActive{
      is_dtwt_mux := False
      //burstlen := (par.wtWidth - 1).resized
      burstlen := U(7)
      BaseAddr := par.rd_wtBaseAddr
      goto(READ_WT)
    }

    //5  8 kernel num
    READ_WT.whenIsActive{
      when(dma_rd.io.isIdle === True){
        dma_rd.io.enable := True

        when(wt_wcnt === par.wtWidth){
          wt_vcnt := wt_vcnt + 1
          wt_wcnt := 1
        }.otherwise{
          wt_wcnt := wt_wcnt + 1
        }

        goto(CHECK_WT)
      }
    }

    //6
    CHECK_WT.whenIsActive{
      when(dma_rd.io.isIdle === True){
        when(wt_vcnt === par.wtHeight-1 && wt_wcnt === par.wtWidth) {
          goto(END)
        }.otherwise{
          goto(UPADDR_WT)
        }
      }
    }

    UPADDR_WT.whenIsActive{
      BaseAddr := (BaseAddr + 256).resized
      goto(READ_WT)
    }

    //7
    END.whenIsActive{
      io.dma_rd_finished := True
      goto(IDLE)
    }


  }



}





package nvdla_bp.dma

import spinal.core._
import spinal.lib._
import nvdla_bp._
import spinal.lib.bus.amba4.axi.Axi4WriteOnly
import spinal.lib.fsm.{EntryPoint, State, StateMachine}


case class dmaWriteCtrl_dwt(datawidth:Int, addrwidth:Int, idwidth:Int, eleWidth:Int) extends Component{
  val axiconfig = MyTopLevelVerilog.getAxiConfig(datawidth, addrwidth, idwidth)
   val io = new Bundle {
     val axim = master(Axi4WriteOnly(axiconfig))
     val cfg = dma_cfg()
     val i_delta_wt = Vec(Vec(slave Stream (SInt(eleWidth bits)), 8), 8)
     val i_sigma = Vec(Vec(slave Stream (SInt(eleWidth bits)), 8), 8)
     val enable = in Bool()
     val is_delta_wt = in Bool()
     val isIdle = out Bool()
   }


  val cvt = Array.fill(8) (new cvt_stream2uint(eleWidth))

  val addr = Reg(UInt(addrwidth bits))init(0)
  val burst_len = Reg(UInt(8 bits))init(0)
  val burst_cnt = Reg(UInt(8 bits))init(0)
  val data = Reg(UInt(datawidth bits))init(0)

  for(i<- 0 until 8){
    io.i_delta_wt(i) <> cvt(i).io.in
  }

  io.axim.aw.valid := False
  io.axim.aw.payload.id := 0
  io.axim.aw.payload.addr := addr
  io.axim.aw.payload.setBurstINCR()
  io.axim.aw.payload.size := log2Up(datawidth/8)
  io.axim.aw.payload.len := burst_len - 1

  io.axim.w.valid := False
  io.axim.w.last := burst_cnt === (burst_len - 1)
  io.axim.w.data := data

  io.axim.w.strb := (~U(0,(datawidth/8) bits)).asBits

  io.axim.b.ready := False


  val dma_wrctrl_fsm = new StateMachine {
    val IDLE = new State with EntryPoint
    val CHECK_GET_PARAM = new State
    val AW = new State
    val W_DELTA_WT = new State
    val W_SIGMA = new State
    val END = new State


    IDLE.whenIsActive{
      when(io.enable === True){
        goto(CHECK_GET_PARAM)
      }
    }

    CHECK_GET_PARAM.whenIsActive{
      when(io.is_delta_wt === True){
        addr := io.cfg.dtBaseAddr
        burst_len := 8
      }.otherwise{
        addr := io.cfg.wtBaseAddr
        burst_len := 1
      }
      goto(AW)
    }

    AW.whenIsActive{
      io.axim.aw.valid := True
      when(io.axim.aw.fire){
        goto(W_DELTA_WT)
      }
    }

    W_DELTA_WT.whenIsActive{
      io.axim.w.valid := True
      when(io.axim.w.fire){
        when(io.axim.w.last){
          when(burst_cnt === 8){
            goto(END)
          }.otherwise{
            burst_cnt := burst_cnt + 1
            addr := addr + 32   // 256bit = 32byte
            goto(AW)
          }
        }
      }
    }

    W_SIGMA.whenIsActive{
      io.axim.w.valid := True
      when(io.axim.w.fire){
        when(io.axim.w.last){
          goto(END)
        }
      }
    }

    END.whenIsActive{
      goto(IDLE)
    }

  }


}

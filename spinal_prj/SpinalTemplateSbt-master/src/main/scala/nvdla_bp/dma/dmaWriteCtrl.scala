package nvdla_bp.dma

import spinal.core._
import spinal.lib._
import nvdla_bp._
import spinal.lib.bus.amba4.axi.Axi4WriteOnly
import spinal.lib.fsm.{EntryPoint, State, StateMachine}


case class dmaWriteCtrl(datawidth:Int, addrwidth:Int, idwidth:Int, eleWidth:Int) extends Component{
  val axiconfig = MyTopLevelVerilog.getAxiConfig(datawidth, addrwidth, idwidth)
   val io = new Bundle {
     val axim = master(Axi4WriteOnly(axiconfig))
     val cfg = slave Stream(glb_param())
     val i_delta_wt = Vec(Vec(slave Stream (SInt(eleWidth bits)), 8), 8)
     val i_sigma = Vec(slave Stream (SInt(eleWidth bits)), 8)
     val enable = in Bool()
     val is_delta_wt = in Bool()
     val conv_finished = out Bool()
   }


  val cvt_wt = Array.fill(8) (new cvt_stream2uint(eleWidth))
  val cvt_sgm = new cvt_stream2uint(eleWidth)

  //val narrows = new data_narrows(eleWidth)

  val addr = Reg(UInt(addrwidth bits))init(0)
  val burst_len = Reg(UInt(8 bits))init(0)
  val burst_cnt = Reg(UInt(8 bits))init(0)
  val data_wt = Vec(Reg(UInt(datawidth bits))init(0),8)
  val data_sgm = Reg(UInt(datawidth bits))init(0)

  val wt_cnt = Reg(UInt(4 bits))init(0)
  val cfg = Reg(glb_param())

  val o_wcnt = Reg(UInt(4 bits))init(0)
  val o_vcnt = Reg(UInt(4 bits))init(0)



  io.conv_finished := False
  // data cvt for axi
  for(i<- 0 until 8){
    io.i_delta_wt(i) <> cvt_wt(i).io.in
  }

 // for(i<- 0 until 8) {
 //   narrows.io.in(i) <> cvt_wt(i).io.out
 // }

  val cvt_wt_o_ready = Bool()
  val cvt_wt_o_valid = Bool()
  for(i<- 0 until 8){
    cvt_wt(i).io.out.ready := cvt_wt_o_ready
  }
  cvt_wt_o_ready := False
  cvt_wt_o_valid := cvt_wt(0).io.out.valid && cvt_wt(1).io.out.valid && cvt_wt(2).io.out.valid && cvt_wt(3).io.out.valid && cvt_wt(4).io.out.valid && cvt_wt(5).io.out.valid && cvt_wt(6).io.out.valid && cvt_wt(7).io.out.valid
  cvt_sgm.io.out.ready := False

  //narrows.io.out.ready := False
  io.i_sigma <> cvt_sgm.io.in


// axi4 bus
  io.axim.aw.valid := False
  io.axim.aw.payload.id := 0
  io.axim.aw.payload.addr := addr
  io.axim.aw.payload.setBurstINCR()
  io.axim.aw.payload.size := log2Up(datawidth/8)
  io.axim.aw.payload.len := burst_len

  io.axim.w.valid := False
  io.axim.w.last := (burst_cnt === burst_len)

  io.axim.b.ready := False
  //io.axim.w.data := data_wt.asBits
  when(io.is_delta_wt === True){
    io.axim.w.data := data_wt(0).asBits
  }.otherwise{
    io.axim.w.data := data_sgm.asBits
  }

  //io.axim.w.data := Mux(io.is_delta_wt,data_wt,data_sgm)

  io.axim.w.strb := (~U(0,(datawidth/8) bits)).asBits

  io.cfg.ready := True
  when(io.cfg.fire){
    cfg := io.cfg.payload
  }


  val dma_wrctrl_fsm = new StateMachine {
    val IDLE = new State with EntryPoint
    val INIT_GET_PARAM = new State
    val UPDATE_ADDR = new State
    val GET_DELTA_WT =  new State
    val GET_SGM =  new State
    val AW = new State
    val W_DELTA_WT = new State
    val W_SIGMA = new State
    val WBRESP = new State
    val W_CHECK = new State
    val END = new State


    IDLE.whenIsActive{
      when(io.enable === True){
        goto(INIT_GET_PARAM)
      }
    }

    INIT_GET_PARAM.whenIsActive{
      when(io.is_delta_wt === True){
        addr := cfg.wr_delta_wt_BaseAddr
        burst_len := U(7)
        goto(GET_DELTA_WT)
      }.otherwise{
        addr := cfg.wr_sigma_BaseAddr
        burst_len := U(0)
        goto(GET_SGM)
      }
    }

    UPDATE_ADDR.whenIsActive{
      when(io.is_delta_wt === True){
        addr := addr + 256
        burst_len := U(7)
        goto(GET_DELTA_WT)
      }.otherwise{
        addr := addr + 32
        burst_len := U(0)
        goto(GET_SGM)
      }
    }

    GET_DELTA_WT.whenIsActive{
      cvt_wt_o_ready := True
      when(cvt_wt_o_ready === True && cvt_wt_o_valid === True){
          for(i<- 0 until 8){
            data_wt(i) := cvt_wt(i).io.out.payload
          }
        //data_wt := cvt_wt(burst_cnt.resized).io.out.payload
        goto(AW)
      }
    }

    GET_SGM.whenIsActive{
      cvt_sgm.io.out.ready := True
      when(cvt_sgm.io.out.valid === True && cvt_sgm.io.out.ready === True){
        data_sgm := cvt_sgm.io.out.payload
        goto(AW)
      }

    }

    AW.whenIsActive{
      io.axim.aw.valid := True
      when(io.axim.aw.fire){
        when(io.is_delta_wt === True) {
          goto(W_DELTA_WT)
        }.otherwise{
          goto(W_SIGMA)
        }
      }
    }


    W_DELTA_WT.whenIsActive{
      io.axim.w.valid := True
      when(io.axim.w.fire){

        // shift register
        for(i<- 0 until 7){
          data_wt(i) := data_wt(i+1)
        }

        // check last
        burst_cnt := burst_cnt + 1
        when(burst_cnt === burst_len){
          goto(WBRESP)
        }
      }
    }

    W_SIGMA.whenIsActive{
      io.axim.w.valid := True
      when(io.axim.w.fire){
          goto(WBRESP)
      }
    }

    WBRESP.whenIsActive{
      io.axim.b.ready := True
      when(io.axim.b.fire){
        goto(W_CHECK)
      }
    }

    W_CHECK.whenIsActive{
      burst_cnt := 0
      when(o_vcnt === cfg.oHeight-1 && o_wcnt === cfg.oWidth-1){
        goto(END)
      }.otherwise {
        goto(UPDATE_ADDR)
        when(o_wcnt === cfg.oWidth - 1) {
          o_wcnt := 0
          o_vcnt := o_vcnt + 1
        }.otherwise {
          o_wcnt := o_wcnt + 1
        }
      }
    }


    END.whenIsActive{
      io.conv_finished := True
      goto(IDLE)
    }

  }


}

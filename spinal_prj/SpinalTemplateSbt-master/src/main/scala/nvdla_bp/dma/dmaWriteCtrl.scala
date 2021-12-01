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
     val cfg = dma_cfg()
     val i_delta_wt = Vec(Vec(slave Stream (SInt(eleWidth bits)), 8), 8)
     val i_sigma = Vec(slave Stream (SInt(eleWidth bits)), 8)
     val enable = in Bool()
     val is_delta_wt = in Bool()
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
  io.axim.aw.payload.len := burst_len - 1

  io.axim.w.valid := False
  io.axim.w.last := burst_cnt === (burst_len - 1)

  //io.axim.w.data := data_wt.asBits
  when(io.is_delta_wt === True){
    io.axim.w.data := data_wt(0).asBits
  }.otherwise{
    io.axim.w.data := data_sgm.asBits
  }


  //io.axim.w.data := Mux(io.is_delta_wt,data_wt,data_sgm)

  io.axim.w.strb := (~U(0,(datawidth/8) bits)).asBits

  io.axim.b.ready := False


  val dma_wrctrl_fsm = new StateMachine {
    val IDLE = new State with EntryPoint
    val CHECK_GET_PARAM = new State
    val GET_DATA_WT =  new State
    val GET_DATA_SGM =  new State
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
        goto(GET_DATA_WT)
      }.otherwise{
        addr := io.cfg.wtBaseAddr
        burst_len := 1
        goto(GET_DATA_SGM)
      }
    }

    GET_DATA_WT.whenIsActive{
      cvt_wt_o_ready := True
      when(cvt_wt_o_ready === True && cvt_wt_o_valid === True){
        switch(burst_cnt){
          is(0){
            data_wt(0) := cvt_wt(0).io.out.payload
          }
          is(1){
            data_wt(1) := cvt_wt(1).io.out.payload
          }
          is(1){
            data_wt(1) := cvt_wt(1).io.out.payload
          }
          is(1){
            data_wt(2) := cvt_wt(1).io.out.payload
          }
          is(1){
            data_wt(3) := cvt_wt(1).io.out.payload
          }
          is(1){
            data_wt(4) := cvt_wt(1).io.out.payload
          }
          is(1){
            data_wt(5) := cvt_wt(1).io.out.payload
          }
          is(1){
            data_wt(6) := cvt_wt(1).io.out.payload
          }
          default{
            data_wt(7) := cvt_wt(1).io.out.payload
          }
        }
        //data_wt := cvt_wt(burst_cnt.resized).io.out.payload
        goto(AW)
      }
    }

    GET_DATA_SGM.whenIsActive{
      cvt_sgm.io.out.ready := True
      when(cvt_sgm.io.out.valid === True && cvt_sgm.io.out.ready === True){
        data_sgm := cvt_sgm.io.out.payload
        goto(AW)
      }

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

        // shift register
        for(i<- 0 until 7){
          data_wt(i) := data_wt(i+1)
        }

        wt_cnt := wt_cnt + 1
        when(io.axim.w.last){
          wt_cnt := 0
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
          goto(END)
      }
    }

    END.whenIsActive{
      goto(IDLE)
    }

  }


}

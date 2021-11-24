package nvdla_bp

import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba3.apb._
import nvdla_bp._

// offset address define
/*
  ctrol     : 32'h0000_0000  32'h0000_000f
  param     : 32'h0000_0000  32'h~~~~~~~~~
*/
case class out_param() extends  Bundle{
  val rd_dtBaseAddr = out UInt(32 bits)
  val rd_wtBaseAddr = out UInt(32 bits)
  val wr_delta_wt_BaseAddr = out UInt(32 bits)
  val wr_sigma_BaseAddr = out UInt(32 bits)
  val dtWidth = out UInt(16 bits)
  val dtHeight = out UInt(16 bits)
  val wtWidth = out UInt(16 bits)
  val wtHeight = out UInt(16 bits)
  val oWidth = out UInt(16 bits)
  val oHeight = out UInt(16 bits)
}


case class config_space(apbAddr:Int,apbdata:Int) extends Component{
  val apb3cfg = MyTopLevelVerilog.getAPB3cfg(apbAddr:Int,apbdata:Int)
  val io = new Bundle{
    val apb_cfg = Apb3(apb3cfg)
    //
    val global_param = out_param()
  }

  io.global_param <> cfg

  io.apb_cfg.PREADY := True

  val cfg =  Reg(out_param())
  val start = Reg(Bool())

  start := False


  when(io.apb_cfg.PENABLE === True && io.apb_cfg.PSEL === 1){

    when(io.apb_cfg.PWRITE === True){
      // write
      switch(io.apb_cfg.PADDR){
        // enable
        is(B"32'h00000000"){
          start := io.apb_cfg.PWDATA(0)
        }


        is(B"32'h00000010"){
          cfg.dtWidth := io.apb_cfg.PWDATA.asUInt
        }
        is(B"32'h00000014"){
          cfg.dtHeight := io.apb_cfg.PWDATA.asUInt
        }
        is(B"64'h00000018"){
          cfg.wtWidth := io.apb_cfg.PWDATA.asUInt
        }
        is(B"64'h0000001c"){
          cfg.wtHeight := io.apb_cfg.PWDATA.asUInt
        }
        is(B"64'h00000020"){
          cfg.oWidth := io.apb_cfg.PWDATA.asUInt
        }
        is(B"64'h00000024"){
          cfg.oHeight := io.apb_cfg.PWDATA.asUInt
        }
        is(B"64'h00000028"){
          cfg.rd_dtBaseAddr := io.apb_cfg.PWDATA.asUInt
        }
        is(B"64'h0000002c"){
          cfg.rd_wtBaseAddr := io.apb_cfg.PWDATA.asUInt
        }
        is(B"64'h00000030"){
          cfg.wr_delta_wt_BaseAddr := io.apb_cfg.PWDATA.asUInt
        }
        is(B"64'h00000034"){
          cfg.wr_sigma_BaseAddr := io.apb_cfg.PWDATA.asUInt
        }

      }

    }.otherwise{
      // read
      switch(io.apb_cfg.PADDR){
        // status


        is(B"32'h00000010"){
          io.apb_cfg.PRDATA := cfg.dtWidth.asBits
        }
        is(B"32'h00000014"){
          io.apb_cfg.PRDATA := cfg.dtHeight.asBits
        }
        is(B"64'h00000018"){
          io.apb_cfg.PRDATA := cfg.wtWidth.asBits
        }
        is(B"64'h0000001c"){
          io.apb_cfg.PRDATA := cfg.wtHeight.asBits
        }
        is(B"64'h00000020"){
          io.apb_cfg.PRDATA := cfg.oWidth.asBits
        }
        is(B"64'h00000024"){
          io.apb_cfg.PRDATA := cfg.oHeight.asBits
        }
        is(B"64'h00000028"){
          io.apb_cfg.PRDATA := cfg.rd_dtBaseAddr.asBits
        }
        is(B"64'h0000002c"){
          io.apb_cfg.PRDATA := cfg.rd_wtBaseAddr.asBits
        }
        is(B"64'h00000030"){
          io.apb_cfg.PRDATA := cfg.wr_delta_wt_BaseAddr.asBits
        }
        is(B"64'h00000034"){
          io.apb_cfg.PRDATA := cfg.wr_sigma_BaseAddr.asBits
        }

        default{
          io.apb_cfg.PRDATA := U(B"32'hffffffff").asBits
        }

    }

    }

  }


}

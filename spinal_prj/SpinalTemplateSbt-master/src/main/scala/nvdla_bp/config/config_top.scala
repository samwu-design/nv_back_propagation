package nvdla_bp.config

import nvdla_bp.{MyTopLevelVerilog, glb_param}
import spinal.core._
import spinal.lib.bus.amba3.apb.Apb3
import spinal.lib.master

case class config_top(apbAddr: Int, apbdata: Int) extends Component {
  val apb3cfg = MyTopLevelVerilog.getAPB3cfg(apbAddr: Int, apbdata: Int)
  val io = new Bundle {
    val apb = Apb3(apb3cfg)


    // param
    val global_param = master Stream (glb_param())
    // ctrol
    val glb_enable = out Bool()

  }

  io.global_param.payload <> cfg
  io.global_param.valid := False

  io.glb_enable := start

  io.apb.PREADY := True

  val cfg = Reg(glb_param())
  val start = Reg(Bool())

  start := False


  when(io.apb.PENABLE === True && io.apb.PSEL === 1) {

    when(io.apb.PWRITE === True) {
      // write
      switch(io.apb.PADDR) {
        // enable
        is(B"32'h00000000") {
          start := io.apb.PWDATA(0) // only one cycle
        }


        is(B"32'h00000010") {
          cfg.dtWidth := io.apb.PWDATA.asUInt
        }
        is(B"32'h00000014") {
          cfg.dtHeight := io.apb.PWDATA.asUInt
        }
        is(B"64'h00000018") {
          cfg.wtWidth := io.apb.PWDATA.asUInt
        }
        is(B"64'h0000001c") {
          cfg.wtHeight := io.apb.PWDATA.asUInt
        }
        is(B"64'h00000020") {
          cfg.oWidth := io.apb.PWDATA.asUInt
        }
        is(B"64'h00000024") {
          cfg.oHeight := io.apb.PWDATA.asUInt
        }
        is(B"64'h00000028") {
          cfg.rd_dtBaseAddr := io.apb.PWDATA.asUInt
        }
        is(B"64'h0000002c") {
          cfg.rd_wtBaseAddr := io.apb.PWDATA.asUInt
        }
        is(B"64'h00000030") {
          cfg.wr_delta_wt_BaseAddr := io.apb.PWDATA.asUInt
        }
        is(B"64'h00000034") {
          cfg.wr_sigma_BaseAddr := io.apb.PWDATA.asUInt
        }

      }

    }.otherwise {
      // read
      switch(io.apb.PADDR) {
        // status


        is(B"32'h00000010") {
          io.apb.PRDATA := cfg.dtWidth.asBits
        }
        is(B"32'h00000014") {
          io.apb.PRDATA := cfg.dtHeight.asBits
        }
        is(B"64'h00000018") {
          io.apb.PRDATA := cfg.wtWidth.asBits
        }
        is(B"64'h0000001c") {
          io.apb.PRDATA := cfg.wtHeight.asBits
        }
        is(B"64'h00000020") {
          io.apb.PRDATA := cfg.oWidth.asBits
        }
        is(B"64'h00000024") {
          io.apb.PRDATA := cfg.oHeight.asBits
        }
        is(B"64'h00000028") {
          io.apb.PRDATA := cfg.rd_dtBaseAddr.asBits
        }
        is(B"64'h0000002c") {
          io.apb.PRDATA := cfg.rd_wtBaseAddr.asBits
        }
        is(B"64'h00000030") {
          io.apb.PRDATA := cfg.wr_delta_wt_BaseAddr.asBits
        }
        is(B"64'h00000034") {
          io.apb.PRDATA := cfg.wr_sigma_BaseAddr.asBits
        }

        default {
          io.apb.PRDATA := U(B"32'hffffffff").asBits
        }

      }

    }

  }


}

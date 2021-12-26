package nvdla_bp.config

import nvdla_bp.{MyTopLevelVerilog, glb_param}
import spinal.core._
import spinal.lib.bus.amba3.apb._
import spinal.lib._

case class config_top(apbAddr: Int, apbdata: Int) extends Component {
  val apb3cfg = MyTopLevelVerilog.getAPB3cfg(apbAddr: Int, apbdata: Int)
  val io = new Bundle {
    val apb = slave(Apb3(apb3cfg))


    // param
    val rdma_glb_param = master Stream (glb_param())
    val wdma_glb_param = master Stream (glb_param())
    val conv_glb_param = master Stream (glb_param())
    // ctrol
    val glb_enable = out Bool()
    val is_delta_wt = out Bool()

    val conv_finished = in Bool()
    val interrupter = out Bool()

  }

  val cfg = Reg(glb_param())
  val start = Reg(Bool())init(False)
  val is_delta_wt = Reg(Bool())init(False)
  val interrupter = Reg(Bool())init(False)
  val apb_addr = UInt(apbAddr bits)
  val clear_interrupter = Reg(Bool())init(False)
  clear_interrupter := False

  val state_reg = Reg(UInt(32 bits))init(0)

  apb_addr := io.apb.PADDR(15 downto 0).resized

  io.interrupter := interrupter

  // interrupter
  when(io.conv_finished){
    interrupter := True
  }.elsewhen(clear_interrupter === True){
    interrupter := False
  }


  io.rdma_glb_param.payload := cfg
  io.rdma_glb_param.valid := True

  io.wdma_glb_param.payload := cfg
  io.wdma_glb_param.valid := True

  io.conv_glb_param.payload := cfg
  io.conv_glb_param.valid := True

  io.glb_enable := start

  io.apb.PREADY := True
  io.apb.PRDATA := (B"32'd0")
  io.apb.PSLVERROR := False

  start := False

  io.is_delta_wt := is_delta_wt

  state_reg(0 downto 0) := (start === True).asUInt
  state_reg(1 downto 1) := (interrupter === True).asUInt
  state_reg(31 downto 2) := 0

  when(io.apb.PENABLE === True && io.apb.PSEL === 1) {

    when(io.apb.PWRITE === True) {
      // write
      //switch((io.apb.PADDR.asBits)) {
      switch(apb_addr.asBits) {
        // enable
        is(B"32'h00000000") {
          when(interrupter === False){
            start := io.apb.PWDATA(0) // only one cycle
          }
        }

        is(B"32'h00000004") {
          clear_interrupter := io.apb.PWDATA(0)// only one cycle
        }

        is(B"32'h00000008") {
          is_delta_wt := io.apb.PWDATA(0)
        }



        is(B"32'h00000010") {
          cfg.dtWidth := io.apb.PWDATA.asUInt.resized
        }
        is(B"32'h00000014") {
          cfg.dtHeight := io.apb.PWDATA.asUInt.resized
        }
        is(B"32'h00000018") {
          cfg.wtWidth := io.apb.PWDATA.asUInt.resized
        }
        is(B"32'h0000001c") {
          cfg.wtHeight := io.apb.PWDATA.asUInt.resized
        }
        is(B"32'h00000020") {
          cfg.oWidth := io.apb.PWDATA.asUInt.resized
        }
        is(B"32'h00000024") {
          cfg.oHeight := io.apb.PWDATA.asUInt.resized
        }
        is(B"32'h00000028") {
          cfg.rd_dtBaseAddr := io.apb.PWDATA.asUInt.resized
        }
        is(B"32'h0000002c") {
          cfg.rd_wtBaseAddr := io.apb.PWDATA.asUInt.resized
        }
        is(B"32'h00000030") {
          cfg.wr_delta_wt_BaseAddr := io.apb.PWDATA.asUInt.resized
        }
        is(B"32'h00000034") {
          cfg.wr_sigma_BaseAddr := io.apb.PWDATA.asUInt.resized
        }

      }

    }.otherwise {
      // read
      switch((apb_addr).asBits) {
        // status
        is(B"32'h00000000") {
          io.apb.PRDATA := state_reg.asBits.resized //
          /*
          * [0] := busy
          * [1] := interrupter active
          *
          * */
        }

        is(B"32'h00000010") {
          io.apb.PRDATA := cfg.dtWidth.asBits.resized
        }
        is(B"32'h00000014") {
          io.apb.PRDATA := cfg.dtHeight.asBits.resized
        }
        is(B"32'h00000018") {
          io.apb.PRDATA := cfg.wtWidth.asBits.resized
        }
        is(B"32'h0000001c") {
          io.apb.PRDATA := cfg.wtHeight.asBits.resized
        }
        is(B"32'h00000020") {
          io.apb.PRDATA := cfg.oWidth.asBits.resized
        }
        is(B"32'h00000024") {
          io.apb.PRDATA := cfg.oHeight.asBits.resized
        }
        is(B"32'h00000028") {
          io.apb.PRDATA := cfg.rd_dtBaseAddr.asBits.resized
        }
        is(B"32'h0000002c") {
          io.apb.PRDATA := cfg.rd_wtBaseAddr.asBits.resized
        }
        is(B"32'h00000030") {
          io.apb.PRDATA := cfg.wr_delta_wt_BaseAddr.asBits.resized
        }
        is(B"32'h00000034") {
          io.apb.PRDATA := cfg.wr_sigma_BaseAddr.asBits.resized
        }

        default {
          io.apb.PRDATA := U(B"32'hffffffff").asBits.resized
        }

      }

    }

  }


}

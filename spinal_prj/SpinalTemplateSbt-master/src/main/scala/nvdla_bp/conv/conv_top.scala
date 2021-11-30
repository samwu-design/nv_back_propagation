package nvdla_bp.conv

import nvdla_bp._
import spinal.core._
import spinal.lib._

case class conv_top(eleWidth: Int, addrwidth: Int) extends Component {
  val io = new Bundle {
    val cfg = slave Stream(glb_param())

    val read_enable = in Bool()
    val acc_enable = in Bool()
    val is_delta_wt = in Bool()

    val dt_ramrd = ram_rd(addrwidth, eleWidth * 8)
    val wt_ramrd = Vec(ram_rd(addrwidth, eleWidth * 8), 8)

    val o_delta_wt = Vec(Vec(master Stream (SInt(eleWidth bits)), 8), 8)
    val o_sigma = Vec(Vec(master Stream (SInt(eleWidth bits)), 8), 8)


  }

  noIoPrefix()

  val read_req = new buff2conv(eleWidth, addrwidth)
  val data_cvt = new dataType_cvt_in(eleWidth)
  val conv_core = new mac_acc_array(eleWidth)
  val mux = new conv_mux(eleWidth)


  read_req.io.read_enable := io.read_enable
  read_req.io.cfg <> io.cfg
  read_req.io.dt_ramrd <> io.dt_ramrd
  read_req.io.wt_ramrd <> io.wt_ramrd

  data_cvt.io.i_ft <> read_req.io.o_ft
  data_cvt.io.i_wt <> read_req.io.o_wt

  conv_core.io.par_acc_cnt := (io.cfg.wtWidth*io.cfg.wtHeight - 1).resized
  conv_core.io.acc_enable := io.acc_enable
  conv_core.io.s_ft <> data_cvt.io.o_ft
  conv_core.io.s_wt <> data_cvt.io.o_wt

  mux.io.is_delta_wt := io.is_delta_wt
  mux.io.indata <> conv_core.io.s_out
  io.o_delta_wt <> mux.io.o_delta_wt
  io.o_sigma <> mux.io.o_sigma


}

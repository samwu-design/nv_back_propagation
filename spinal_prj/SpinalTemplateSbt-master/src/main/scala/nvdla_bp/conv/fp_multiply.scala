package nvdla_bp.conv

import spinal.core._
import spinal.lib._

case class fp_multiply(eleWidth: Int) extends Component {
  val io = new Bundle {
    val ina = slave Stream (SInt(eleWidth bits))
    val inb = slave Stream (SInt(eleWidth bits))
    val out = master Stream (SInt(eleWidth bits))
  }

  noIoPrefix()

  val fp_multi = new fp_multi_bb(eleWidth)

  io.ina.ready := fp_multi.io.s_axis_a_tready
  fp_multi.io.s_axis_a_tdata := io.ina.payload
  fp_multi.io.s_axis_a_tvalid := io.ina.valid

  io.inb.ready := fp_multi.io.s_axis_b_tready
  fp_multi.io.s_axis_b_tdata := io.inb.payload
  fp_multi.io.s_axis_b_tvalid := io.inb.valid

  fp_multi.io.m_axis_result_tready := io.out.ready
  io.out.valid := fp_multi.io.m_axis_result_tvalid
  io.out.payload := fp_multi.io.m_axis_result_tdata

}

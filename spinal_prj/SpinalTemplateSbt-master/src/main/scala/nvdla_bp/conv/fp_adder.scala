package nvdla_bp.conv

import spinal.core._
import spinal.lib._

case class fp_adder(eleWidth: Int) extends Component {
  val io = new Bundle {
    val ina = slave Stream (SInt(eleWidth bits))
    val inb = slave Stream (SInt(eleWidth bits))
    val out = master Stream (SInt(eleWidth bits))
  }
  noIoPrefix()

  val fp_adder = new fp_adder_bb(32)

  fp_adder.io.s_axis_a_tvalid := io.ina.valid
  fp_adder.io.s_axis_a_tdata := io.ina.payload
  io.ina.ready := fp_adder.io.s_axis_a_tready

  fp_adder.io.s_axis_b_tvalid := io.inb.valid
  fp_adder.io.s_axis_b_tdata := io.inb.payload
  io.inb.ready := fp_adder.io.s_axis_b_tready

  io.out.valid := fp_adder.io.m_axis_result_tvalid
  io.out.payload := fp_adder.io.m_axis_result_tdata
  fp_adder.io.m_axis_result_tready := io.out.ready

}

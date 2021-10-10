package nvdla_bp.conv

import spinal.core._

// xilinx IP fp multiply
// fp_width = dataWidth * atomSize
case class fp_multi_bb (eleWidth:Int) extends BlackBox{
  val io = new Bundle{
    val aclk = in Bool()
    val s_axis_a_tvalid = in Bool()
    val s_axis_a_tready = out Bool()
    val s_axis_a_tdata = in SInt(eleWidth bits)
    val s_axis_b_tvalid = in Bool()
    val s_axis_b_tready = out Bool()
    val s_axis_b_tdata = in SInt(eleWidth bits)

    val m_axis_result_tvalid = out Bool()
    val m_axis_result_tready = in Bool()
    val m_axis_result_tdata = out SInt(eleWidth bits)
  }

  noIoPrefix()
  // deal the clk domain of float point multiply IP of xilinx
  mapCurrentClockDomain(io.aclk)
}

// fp adder Xilinx IP blackbox
case  class fp_adder_bb(eleWidth:Int) extends BlackBox{
  val io = new Bundle{
    val aclk = in Bool()
    val s_axis_a_tvalid = in Bool()
    val s_axis_a_tready = out Bool()
    val s_axis_a_tdata = in SInt(eleWidth bits)
    val s_axis_b_tvalid = in Bool()
    val s_axis_b_tready = out Bool()
    val s_axis_b_tdata = in SInt(eleWidth bits)

    val m_axis_result_tvalid = out Bool()
    val m_axis_result_tready = in Bool()
    val m_axis_result_tdata = out SInt(eleWidth bits)
  }
  noIoPrefix()
  // deal the clk domain of float point multiply IP of xilinx
  mapCurrentClockDomain(io.aclk)
}

case class blk_ram256_1024_bb() extends BlackBox{
  val io = new Bundle{
      val clka = in Bool()
      val ena  = in Bool()
      val addra = in UInt(10 bits)
      val douta = in UInt(256 bits)
      val clkb  = in Bool()
      val enb  = in Bool()
      val addrb = in UInt(10 bits)
      val doutb = out UInt(256 bits)
  }
  noIoPrefix()
  mapCurrentClockDomain(io.clkb)
}
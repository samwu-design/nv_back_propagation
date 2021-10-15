package nvdla_bp

import spinal.core._

case class conv_cfg_param() extends Bundle{
  val fea_width = UInt(16 bits)
  val fea_height = UInt(16 bits)
  val fea_channel = UInt(16 bits)
  val wt_width = UInt(16 bits)
  val wt_height = UInt(16 bits)
  val wt_channel = UInt(16 bits)
  val kerNum = UInt(16 bits)
  val o_width = UInt(16 bits)
  val o_height = UInt(16 bits)
  val o_channel = UInt(16 bits)

  val top_pad = UInt(16 bits)
  val bot_pad = UInt(16 bits)
  val left_pad = UInt(16 bits)
  val right_pad = UInt(16 bits)

  val dt_stridex = UInt(16 bits)
  val dt_stridey = UInt(16 bits)
  val wt_stridex = UInt(16 bits)
  val wt_stridey = UInt(16 bits)

}

case class ram_rd(addrwidth:Int,datawidth:Int) extends Bundle{
  val addr = out UInt(addrwidth bits)
  val data = in  UInt(datawidth bits)
  val en   = out Bool()
}

case class ram_wr(addrwidth:Int,datawidth:Int) extends Bundle{
  val addr = out UInt(addrwidth bits)
  val data = out  UInt(datawidth bits)
  val en   = out Bool()
}
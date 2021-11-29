package nvdla_bp

import spinal.core._

//case class dma_cfg_para() extends Bundle{
//  val dt_width = UInt(16 bits)
//  val dt_height = UInt(16 bits)
//  val wt_width = UInt(16 bits)
//  val wt_height = UInt(16 bits)
//}


case class glb_param() extends  Bundle{
  val rd_dtBaseAddr =  UInt(32 bits)
  val rd_wtBaseAddr =  UInt(32 bits)
  val wr_delta_wt_BaseAddr =  UInt(32 bits)
  val wr_sigma_BaseAddr =  UInt(32 bits)
  val dtWidth =  UInt(16 bits)
  val dtHeight =  UInt(16 bits)
  val wtWidth =  UInt(16 bits)
  val wtHeight =  UInt(16 bits)
  val oWidth =  UInt(16 bits)
  val oHeight =  UInt(16 bits)
}



case class dma_cfg() extends Bundle{
  // default CUBE channel & Kernel Nume is 8
  val dtBaseAddr = in UInt(64 bits)
  val wtBaseAddr = in UInt(64 bits)
  val dtWidth = in UInt(16 bits)
  val dtHeight = in UInt(16 bits)
  val wtWidth = in UInt(16 bits)
  val wtHeight = in UInt(16 bits)
  val oWidth = in UInt(16 bits)
  val oHeight = in UInt(16 bits)
}


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

  val par_acc_cnt = UInt(16 bits)
}

case class conv_ctrl_flag() extends  Bundle {
  val read_enable = Bool()
  val acc_enable = Bool()
  val is_delta_wt = Bool()
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

case class ram_slv_rd(addrwidth:Int,datawidth:Int) extends Bundle{
  val addr = in UInt(addrwidth bits)
  val data = out  UInt(datawidth bits)
  val en   = in Bool()
}

case class ram_slv_wr(addrwidth:Int,datawidth:Int) extends Bundle{
  val addr = in UInt(addrwidth bits)
  val data = in  UInt(datawidth bits)
  val en   = in Bool()
}
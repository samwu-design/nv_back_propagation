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
  val dtBaseAddr = in UInt(32 bits)
  val wtBaseAddr = in UInt(32 bits)
  val dtWidth = in UInt(16 bits)
  val dtHeight = in UInt(16 bits)
  val wtWidth = in UInt(16 bits)
  val wtHeight = in UInt(16 bits)
  val oWidth = in UInt(16 bits)
  val oHeight = in UInt(16 bits)
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
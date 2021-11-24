package nvdla_bp

import spinal.lib._
import spinal.core._
import spinal.lib.bus.amba4.axi.{Axi4ReadOnly, Axi4WriteOnly}
import spinal.lib.bus.amba4.axilite.AxiLite4

import nvdla_bp.dma._
import nvdla_bp.conv._
import nvdla_bp.atom_adder._
import nvdla_bp.mem._
import spinal.lib.bus.amba3.apb._
import nvdla_bp._

case class bp_fpga_top(datawidth:Int,addrwidth:Int,idwidth:Int,eleWidth:Int,deepth:Int) extends Component {
  val axiconfig = MyTopLevelVerilog.getAxiConfig(datawidth, addrwidth, idwidth)
  val apb3cfg = MyTopLevelVerilog.getAPB3cfg(32,32)
  //val axilitecfg = MyTopLevelVerilog.getAxiLiteCfg(32, 32)
  val io = new Bundle {
    val axim_r = master(Axi4ReadOnly(axiconfig))  // read data
    val axim_w = slave(Axi4WriteOnly(axiconfig)) // write delta weight && sigma
    //val axi4lite = slave(AxiLite4(axilitecfg)) // configure access
    val apb = slave(Apb3(apb3cfg))
    val interruper = Bool()
  }

  // dma
  val rdma = new  dmaReadCtrl(datawidth,addrwidth,idwidth)
  val wdma = new dmaWriteCtrl(datawidth, addrwidth, idwidth, eleWidth)

  // cbuf
  val cbuf = new conv_buff(addrwidth,deepth,eleWidth)
  //conv
  val conv = new conv_top(eleWidth, addrwidth)
  // adder
  val adder = new array_adder(eleWidth)

  // configure
  val global_cfg = new config_space(32,32)

  //------------------------------------top io
  io.axim_r <> rdma.io.axim
  io.axim_w <> wdma.io.axim
  io.apb <> global_cfg.io.apb_cfg


  //-----------------------------------inter connect
  rdma.io.cfg.dtBaseAddr := global_cfg.io.global_param.rd_dtBaseAddr
  rdma.io.cfg.wtBaseAddr := global_cfg.io.global_param.rd_wtBaseAddr
  rdma.io.cfg.dtWidth  := global_cfg.io.global_param.dtWidth
  rdma.io.cfg.wtWidth  := global_cfg.io.global_param.wtWidth
  rdma.io.cfg.dtHeight := global_cfg.io.global_param.dtHeight
  rdma.io.cfg.wtHeight := global_cfg.io.global_param.wtHeight




}

package nvdla_bp

import spinal.lib._
import spinal.core._
import spinal.lib.bus.amba4.axi.{Axi4ReadOnly, Axi4WriteOnly}
import spinal.lib.bus.amba4.axilite.AxiLite4

import nvdla_bp.dma._
import nvdla_bp.conv._
import nvdla_bp.atom_adder._
import nvdla_bp.mem._



case class bp_fpga_top(datawidth:Int,addrwidth:Int,idwidth:Int) extends Component {
  val axiconfig = MyTopLevelVerilog.getAxiConfig(datawidth, addrwidth, idwidth)
  val axilitecfg = MyTopLevelVerilog.getAxiLiteCfg(32, 32)
  val io = new Bundle {
    val axim = master(Axi4ReadOnly(axiconfig))  // read data
    val axis_dwt = slave(Axi4WriteOnly(axiconfig)) // write delta weight
    val axis_sgm = slave(Axi4WriteOnly(axiconfig)) // write sigma
    val axi4lite = slave(AxiLite4(axilitecfg)) // configure access
  }
/*
  // dma
  val rdma4conv = new  dmaReadCtrl()
  val wdma4dwt = new dmaWriteCtrl_dwt()
  val wdma4sgm = new dmaWriteCtrl_sgm()

  // cbuf
  val cbuf = new conv_buff()
  //conv
  val conv = new conv_top()
  // adder
  val adder = new array_adder()

  // configure
  val cfg = new global_configure()
*/


}

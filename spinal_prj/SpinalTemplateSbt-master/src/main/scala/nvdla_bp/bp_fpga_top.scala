package nvdla_bp

import spinal.lib._
import spinal.core._
import spinal.lib.bus.amba4.axi.{Axi4ReadOnly, Axi4WriteOnly}
import spinal.lib.bus.amba4.axilite.AxiLite4

import nvdla_bp.dma._
import nvdla_bp.config._
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
    val axim_w = master(Axi4WriteOnly(axiconfig)) // write delta weight && sigma
    //val axi4lite = slave(AxiLite4(axilitecfg)) // configure access
    val apb = slave(Apb3(apb3cfg))
    val interrupter = out Bool()
  }
  noIoPrefix()
  val rdma = new  dmaReadCtrl(datawidth,addrwidth,idwidth)
  val wdma = new dmaWriteCtrl(datawidth, addrwidth, idwidth, eleWidth)
  val cbuf = new cbuff_top(datawidth,addrwidth,eleWidth,deepth)
  val conv = new conv_top(eleWidth, addrwidth)
  val adder = new array_adder(eleWidth)
  val cfg = new config_top(32,32)

  //------------------------------------top io
  io.axim_r <> rdma.io.axim
  io.axim_w <> wdma.io.axim
  io.apb <> cfg.io.apb

  io.interrupter := cfg.io.interrupter
  // ctrol-----
  cfg.io.conv_finished := wdma.io.conv_finished

  rdma.io.enable := cfg.io.glb_enable
  cbuf.io.clear := cfg.io.glb_enable



  conv.io.read_enable := rdma.io.dma_rd_finished
  conv.io.is_delta_wt := cfg.io.is_delta_wt
  conv.io.conv_finished := wdma.io.conv_finished

  wdma.io.enable := rdma.io.dma_rd_finished
  wdma.io.is_delta_wt := cfg.io.is_delta_wt



  //-----------------------------------inter connect
  //***dma cfg
  rdma.io.cfg <> cfg.io.rdma_glb_param

  //dma input

  //***cbuf
  cbuf.io.dt_input <> rdma.io.dt_output
  cbuf.io.wt_input <> rdma.io.wt_output


  //conv
  cbuf.io.dt_rd.addr :=  conv.io.dt_ramrd.addr
  cbuf.io.dt_rd.en   := conv.io.dt_ramrd.en
  conv.io.dt_ramrd.data := cbuf.io.dt_rd.data

  for(i<- 0 until 8){
    cbuf.io.wt_rd(i).addr := conv.io.wt_ramrd(i).addr
    cbuf.io.wt_rd(i).en  := conv.io.wt_ramrd(i).en
    conv.io.wt_ramrd(i).data := cbuf.io.wt_rd(i).data
  }

  conv.io.cfg <> cfg.io.conv_glb_param

  adder.io.in <> conv.io.o_sigma


  wdma.io.i_delta_wt <> conv.io.o_delta_wt
  wdma.io.i_sigma <> adder.io.out
  wdma.io.cfg <> cfg.io.wdma_glb_param

}

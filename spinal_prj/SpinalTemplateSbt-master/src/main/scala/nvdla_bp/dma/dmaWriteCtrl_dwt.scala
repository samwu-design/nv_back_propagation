package nvdla_bp.dma

import spinal.core._
import spinal.lib._
import nvdla_bp._
import spinal.lib.bus.amba4.axi.Axi4WriteOnly


case class dmaWriteCtrl_dwt(datawidth:Int, addrwidth:Int, idwidth:Int, eleWidth:Int) extends Component{
  val axiconfig = MyTopLevelVerilog.getAxiConfig(datawidth, addrwidth, idwidth)
   val io = new Bundle {
     val axim = master(Axi4WriteOnly(axiconfig))
     val cfg = dma_cfg()
     val o_delta_wt = Vec(Vec(slave Stream (SInt(eleWidth bits)), 8), 8)
     val enable = in Bool()
     val isIdle = out Bool()
   }






}

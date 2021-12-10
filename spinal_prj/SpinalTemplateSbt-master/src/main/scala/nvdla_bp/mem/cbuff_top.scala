package nvdla_bp.mem

import nvdla_bp._
import spinal.core._
import spinal.lib._

case class cbuff_top(datawidth:Int,addrwidth:Int,eleWidth:Int,deepth:Int) extends Component{
  val io = new Bundle{
    val dt_input = slave Stream(UInt(datawidth bits))
    val wt_input = slave Stream(UInt(datawidth bits))

    val clear = in Bool()

    val dt_rd = ram_slv_rd(addrwidth, eleWidth * 8)
    val wt_rd = Vec(ram_slv_rd(addrwidth, eleWidth * 8),8)
  }

  val d2b = new dma2buff(datawidth,addrwidth,eleWidth)
  val buff = new conv_buff(addrwidth,deepth,eleWidth)

  d2b.io.dt_input <> io.dt_input
  d2b.io.wt_input <> io.wt_input

  d2b.io.clear := io.clear

  buff.io.dt_wr.en := d2b.io.dt_wr.en
  buff.io.dt_wr.addr := d2b.io.dt_wr.addr
  buff.io.dt_wr.data := d2b.io.dt_wr.data

  for(i<- 0 until 8){
    buff.io.wt_wr(i).en := d2b.io.wt_wr(i).en
    buff.io.wt_wr(i).addr := d2b.io.wt_wr(i).addr
    buff.io.wt_wr(i).data := d2b.io.wt_wr(i).data
  }

  io.dt_rd <> buff.io.dt_rd
  io.wt_rd <> buff.io.wt_rd

}

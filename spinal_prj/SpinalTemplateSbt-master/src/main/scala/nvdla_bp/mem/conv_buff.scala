package nvdla_bp.mem

import nvdla_bp._
import spinal.core._
import spinal.lib._

case class conv_buff(addrwidth:Int,deepth:Int,eleWidth:Int)extends Component {
  val io = new Bundle {
    val dt_rd = ram_slv_rd(addrwidth, eleWidth * 8)
    val wt_rd = Vec(ram_slv_rd(addrwidth, eleWidth * 8),8)

    val dt_wr = ram_slv_wr(addrwidth, eleWidth * 8)
    val wt_wr = Vec(ram_slv_wr(addrwidth, eleWidth * 8),8)
  }


  val dt_ram = new conv_mem(addrwidth,deepth,eleWidth)
  val wt_ram = Array.fill(8) (new conv_mem(addrwidth,deepth,eleWidth))

  io.dt_rd <> dt_ram.io.slv_rd
  io.dt_wr <> dt_ram.io.slv_wr

  for(i<- 0 until 8){
    wt_ram(i).io.slv_rd.en := io.wt_rd(i).en
    wt_ram(i).io.slv_rd.addr := io.wt_rd(i).addr
    io.wt_rd(i).data := wt_ram(i).io.slv_rd.data
  }

for(i<- 0 until 8){
    wt_ram(i).io.slv_wr.en := io.wt_wr(i).en
    wt_ram(i).io.slv_wr.addr := io.wt_wr(i).addr
    wt_ram(i).io.slv_wr.data := io.wt_wr(i).data
  }

}


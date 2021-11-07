package nvdla_bp.mem

import nvdla_bp._
import spinal.core._
import spinal.lib._

case class conv_mem(addrwidth:Int,deepth:Int,eleWidth:Int)extends Component{
  val io = new Bundle {
    /* Note : mem Read/Write act as a slave so the in/out named decided by the master */
    val slv_rd = ram_slv_rd(addrwidth, eleWidth * 8)
    val slv_wr = ram_slv_wr(addrwidth, eleWidth * 8)
  }


  val mem = new Mem(Bits(eleWidth*8 bits),deepth)

  val slv_wr_data = UInt(eleWidth*8 bits)



  mem.write(
    enable = io.slv_wr.en,
    address = io.slv_wr.addr.resized,
    data = io.slv_wr.data.asBits
  )

  io.slv_rd.data := mem.readSync(
    enable = io.slv_rd.en,
    address = io.slv_rd.addr.resized
  ).asUInt


}

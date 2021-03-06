package nvdla_bp.mem

import spinal.lib._
import spinal.core._
import nvdla_bp._

case class dma2buff(datawidth:Int,addrwidth:Int,eleWidth:Int) extends Component{
val io = new Bundle{
  val dt_input = slave Stream(UInt(datawidth bits))
  val wt_input = slave Stream(UInt(datawidth bits))
  val clear = in Bool()
  val dt_wr = ram_wr(addrwidth, eleWidth * 8)
  val wt_wr = Vec(ram_wr(addrwidth, eleWidth * 8),8)

}

  val dtram_addr = Reg(UInt(16 bits))init(0)
  val wtram_addr = Reg(UInt(16 bits))init(0)

  val wt_idx = Reg(UInt(3 bits))init(0)


  io.dt_input.ready := True
  io.wt_input.ready := True

  io.dt_wr.addr := dtram_addr.resized
  for(i<- 0 until 8){
    io.wt_wr(i).addr := wtram_addr.resized
  }

  //io.dt_wr.en := False
  for(i<- 0 until 8){
    io.wt_wr(i).en  := False
  }

  io.dt_wr.en := io.dt_input.fire

  /////// ------------------------------------
  when(io.dt_input.fire){
    dtram_addr := dtram_addr + 1
  }

  io.dt_wr.data := io.dt_input.payload

  when(io.wt_input.fire){
    wt_idx := wt_idx + 1
    io.wt_wr(wt_idx).en  := True
    when(wt_idx === 7){
      wt_idx := 0
      wtram_addr := wtram_addr + 1
    }
  }

  for(i<- 0 until 8) {
    io.wt_wr(i).data := io.wt_input.payload
  }

  // clear
  when(io.clear){
   dtram_addr := 0;
   wtram_addr := 0;
   wt_idx := 0;
  }









}
package nvdla_bp.dma

import spinal.core._
import spinal.lib._


case class cvt_stream2uint(eleWidth:Int)extends Component{
  val io = new Bundle {
    val in = Vec(slave Stream (SInt(eleWidth bits)), 8)
    val out = master Stream(UInt(eleWidth*8 bits))
  }

  io.out.valid := io.in(0).valid && io.in(1).valid && io.in(2).valid && io.in(3).valid && io.in(4).valid && io.in(5).valid && io.in(6).valid && io.in(7).valid

  for(i<- 0 until 8){
      io.in(i).ready := io.out.ready
  }

   io.out.payload := (io.in(0).payload ## io.in(1).payload ## io.in(2).payload ## io.in(3).payload ## io.in(4).payload ## io.in(5).payload ## io.in(6).payload ## io.in(7).payload).asUInt



}

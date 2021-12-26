package TinyDMA

import spinal.core._
import spinal.lib._


case class sync_cross(clkA:ClockDomain,clkB:ClockDomain) extends Component{
  val io = new Bundle{
      val input =  in Bool()
      val output = out Bool()
  }

  val area_clka = new ClockingArea(clkA){
    val reg_data = RegNext(io.input)init(False)
  }

  val area_clkb = new ClockingArea(clkB){
    val buf0 = RegNext(area_clka.reg_data)init(False)addTag(crossClockDomain)
    val buf1 = RegNext(buf0)
  }

  io.output := area_clkb.buf1
}

package TinyDMA

import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba4.axi.{Axi4, Axi4Config, Axi4ReadOnly,Axi4WriteOnly}

case class tiny_dma_top(datawidth:Int,addrwidth:Int,idwidth:Int) extends Component {
  val axiconfig = TinyDMAverilog.getAxiConfig(datawidth, addrwidth, idwidth)
  val io = new Bundle {
    val axim_r = master(Axi4ReadOnly(axiconfig))
    val axim_w = master(Axi4WriteOnly(axiconfig))

    val input = slave Stream (UInt(datawidth bits))
    val output = master Stream (UInt(datawidth bits))

    val dataNum = in UInt (32 bits)
    val pushbottom = in Bool()

    val axi_wclk = in Bool()
    val axi_rclk = in Bool()
    val resetn = in Bool()

    val w_start_read = out Bool()
    val r_start_read = in Bool()

    val w_send_over = in Bool()
    val r_send_over = out Bool()
  }

  noIoPrefix()


  val tiny_wclk = ClockDomain(io.axi_wclk, io.resetn,
    config = ClockDomainConfig(
      clockEdge = RISING,
      resetKind = ASYNC,
      resetActiveLevel = LOW
    )
  )

  val tiny_rclk = ClockDomain(io.axi_rclk, io.resetn,
    config = ClockDomainConfig(
      clockEdge = RISING,
      resetKind = ASYNC,
      resetActiveLevel = LOW
    )
  )



  val wclk_area = new ClockingArea(tiny_wclk) {
    val dma_wr = new tiny_dma_write(datawidth, addrwidth, idwidth)
    //val send_over1 = RegNext(rclk_area.send_over)init(False) addTag(crossClockDomain)
    //val start_read = RegNext(dma_wr.io.start_read)init(False)

    dma_wr.io.input <> io.input
    dma_wr.io.axim <> io.axim_w
    dma_wr.io.dataNum := io.dataNum
    dma_wr.io.pushbottom := io.pushbottom
    dma_wr.io.sendover := io.w_send_over
    io.w_start_read := dma_wr.io.start_read

  }


  val rclk_area = new ClockingArea(tiny_rclk){
    val dma_rd = new tiny_dma_read(datawidth, addrwidth, idwidth)
    //val send_over = RegNext(dma_rd.io.sendover)init(False)
    //val start_read1 = RegNext(wclk_area.start_read)init(False) addTag(crossClockDomain)
    dma_rd.io.output <> io.output
    dma_rd.io.axim <> io.axim_r
    dma_rd.io.dataNum := io.dataNum
    dma_rd.io.start_read := io.r_start_read
    io.r_send_over := dma_rd.io.sendover
  }



}
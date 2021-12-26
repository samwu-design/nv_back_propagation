package TinyDMA

import nvdla_bp.bp_fpga_top
import spinal.core.SpinalConfig
import spinal.lib.bus.amba3.apb.Apb3Config
import spinal.lib.bus.amba4.axi.Axi4Config

//Generate the MyTopLevel's Verilog
object TinyDMAverilog {
  def getAxiConfig(dataWidth: Int, addrWidth: Int, idWidth: Int) = Axi4Config(
    addressWidth = addrWidth,
    dataWidth = dataWidth,
    idWidth = idWidth,
    useId = true,
    useLock = false,
    useRegion = false,
    useCache = false,
    useProt = false,
    useQos = false  )

  def getAPB3cfg(apbAddr:Int,apbdata:Int)=Apb3Config(
    addressWidth = apbAddr,
    dataWidth = apbdata
  )
  def main(args: Array[String]) {
    SpinalConfig(targetDirectory = "VerilogHDL")//, oneFilePerComponent = true)
      //.generateVerilog(new dmaWriteCtrl(256,32,6,32)).printPruned()
      //.generateVerilog(new conv_top(32,32)).printPruned()
      //.generateVerilog(new tiny_dma_write(32,32,0)).printPruned()
      //.generateVerilog(new tiny_dma_read(32,32,0)).printPruned()
      .generateVerilog(new tiny_dma_top(256,32,0)).printPruned()

    //SpinalVerilog(new MyTopLevel)
  }
}
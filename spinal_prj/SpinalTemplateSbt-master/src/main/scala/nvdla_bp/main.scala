package nvdla_bp

import nvdla_bp.conv._
import nvdla_bp.mem._
import nvdla_bp.dma._
import nvdla_bp.atom_adder._
import spinal.lib._
import spinal.core._
import spinal.lib.bus.amba4.axi.{Axi4,Axi4Config,Axi4ReadOnly}
import spinal.lib.bus.amba4.axilite._
import spinal.lib.bus.amba3.apb._



//Generate the MyTopLevel's Verilog
object MyTopLevelVerilog {
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
 // def getAxiConfigLite(dataWidth: Int, addrWidth: Int) = Axi4Config(
 //   addressWidth = addrWidth,
 //   dataWidth    = dataWidth,
 //   useId        = false,
 //   useRegion    = false,
 //   useBurst     = false,
 //   useLock      = false,
 //   useCache     = false,
 //   useSize      = false,
 //   useQos       = false,
 //   useLen       = false,
 //   useLast      = false,
 //   useResp      = true,
 //   useProt      = false,
 //   useStrb      = false
 // )
 // def getAxiLiteCfg(addrWidth:Int,dataWidth:Int) = AxiLite4Config(
 //   addressWidth = addrWidth,
 //   dataWidth = dataWidth
 // )
  def getAPB3cfg(apbAddr:Int,apbdata:Int)=Apb3Config(
   addressWidth = apbAddr,
   dataWidth = apbdata
  )
  def main(args: Array[String]) {
    SpinalConfig(targetDirectory = "VerilogHDL")//, oneFilePerComponent = true)
      //.generateVerilog(new dmaWriteCtrl(256,32,6,32)).printPruned()
    //.generateVerilog(new conv_top(32,32)).printPruned()
    .generateVerilog(new bp_fpga_top(256,32,6,32,512)).printPruned()

    //SpinalVerilog(new MyTopLevel)
  }
}


//val clk_domain = ClockDomain(
//clock = io.aclk,
//config = ClockDomainConfig(
//clockEdge = RISING,
//resetKind = ASYNC,
//resetActiveLevel = LOW
//)
//)
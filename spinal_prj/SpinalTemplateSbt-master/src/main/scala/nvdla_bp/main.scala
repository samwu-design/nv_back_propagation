package nvdla_bp

import nvdla_bp.conv._
import nvdla_bp.atom_adder._
import spinal.lib._
import spinal.core._


//Generate the MyTopLevel's Verilog
object MyTopLevelVerilog {
  def main(args: Array[String]) {
    SpinalConfig(targetDirectory = "VerilogHDL")//, oneFilePerComponent = true)
      .generateVerilog(new conv_top(32,32)).printPruned()
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
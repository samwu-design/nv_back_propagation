package nvdla_bp.atom_adder

import nvdla_bp.conv._
import spinal.core._
import spinal.lib._

case class atom_adder(eleWidth:Int)extends Component{
  val io = new Bundle {
    val in = Vec(slave Stream(SInt(eleWidth bits)),8)
    val out = master Stream(SInt(eleWidth bits))
  }

  val fp_adder_l0 = Array.fill(4)(new fp_adder(eleWidth))
  val fp_adder_l1 = Array.fill(2)(new fp_adder(eleWidth))
  val fp_adder_l2 = new fp_adder(eleWidth)

  for(i<- 0 until 4){
    fp_adder_l0(i).io.ina <> io.in(2*i)
    fp_adder_l0(i).io.inb <> io.in(2*i+1)
  }

  for(i<- 0 until 2){
    fp_adder_l1(i).io.ina <> fp_adder_l0(2*i).io.out
    fp_adder_l1(i).io.inb <> fp_adder_l0(2*i+1).io.out
  }

  fp_adder_l2.io.ina <> fp_adder_l1(0).io.out
  fp_adder_l2.io.inb <> fp_adder_l1(1).io.out

  io.out <> fp_adder_l2.io.out

}

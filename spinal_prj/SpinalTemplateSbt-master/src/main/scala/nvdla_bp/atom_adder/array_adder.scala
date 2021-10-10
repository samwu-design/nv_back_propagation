package nvdla_bp.atom_adder

import spinal.core._
import spinal.lib._

case class array_adder(eleWidth:Int) extends Component{
  val io = new Bundle{
    val in = Array.fill(8)(Vec(slave Stream(SInt(eleWidth bits)),8))
    val out = Vec(master Stream(SInt(eleWidth bits)),8)
  }

  val atom_adder = Array.fill(8)(new atom_adder(eleWidth))

  for(i<- 0 until 8){
    atom_adder(i).io.in <> io.in(i)
    io.out(i) <> atom_adder(i).io.out
  }
}

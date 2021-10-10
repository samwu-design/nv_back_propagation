package nvdla_bp.conv

import spinal.core._
import spinal.lib._

//  atom
case class mac_acc_atom(eleWidth: Int) extends Component {

  val io = new Bundle {
    val ina = Vec(slave Stream(SInt(eleWidth bits)),8)
    val inb = Vec(slave Stream(SInt(eleWidth bits)),8)
    val out = Vec(master Stream(SInt(eleWidth bits)), 8)

    val par_acc_cnt = in UInt (16 bits) // r*s kernel size
    val acc_enable = in Bool()
  }
  noIoPrefix()
  val mac = Array.fill(8)(new mac_acc_unit(32))

  for(i<- 0 until 8){
    mac(i).io.acc_enable := io.acc_enable
    mac(i).io.par_acc_cnt := io.par_acc_cnt
  }

  for(i<-0 until 8){
    mac(i).io.ina <> io.ina(i)
    mac(i).io.inb <> io.inb(i)
    io.out(i) <> mac(i).io.out
  }

}

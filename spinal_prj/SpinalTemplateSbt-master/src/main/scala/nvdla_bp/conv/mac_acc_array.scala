package nvdla_bp.conv

import spinal.core._
import spinal.lib._

case class mac_acc_array(eleWidth:Int) extends Component{
  val io = new Bundle{
    val s_ft = Vec(slave Stream(SInt(eleWidth bits)),8)
    //val s_wt = Array.fill(8) (Vec(slave Stream(SInt(eleWidth bits)),8))
    //val s_out = Array.fill(8) (Vec(master Stream(SInt(eleWidth bits)),8))
    val s_wt = Vec(Vec(slave Stream(SInt(eleWidth bits)),8),8)
    val s_out = Vec(Vec(master Stream(SInt(eleWidth bits)),8),8)

    val par_acc_cnt = in UInt (16 bits) // r*s kernel size
    val acc_enable = in Bool()
  }
  noIoPrefix()
  val mac_acc_atom = Array.fill(8)(new mac_acc_atom(32))

  // initial
  // feature input  the same
  for(i<- 0 until 8) {
    io.s_ft(i).ready := mac_acc_atom(0).io.ina(i).ready && mac_acc_atom(1).io.ina(i).ready && mac_acc_atom(2).io.ina(i).ready && mac_acc_atom(3).io.ina(i).ready && mac_acc_atom(4).io.ina(i).ready && mac_acc_atom(5).io.ina(i).ready && mac_acc_atom(6).io.ina(i).ready && mac_acc_atom(7).io.ina(i).ready
  }

  for(i<- 0 until 8){
    for(j<- 0 until 8){
      mac_acc_atom(i).io.ina(j).valid := io.s_ft(j).valid
      mac_acc_atom(i).io.ina(j).payload := io.s_ft(j).payload
    }
  }

  // weight input
  for(i<- 0 until 8){
    mac_acc_atom(i).io.inb <> io.s_wt(i)
  }

  for(i<- 0 until 8){
    io.s_out(i) <> mac_acc_atom(i).io.out
  }

  for(i<- 0 until 8){
    mac_acc_atom(i).io.acc_enable := io.acc_enable
    mac_acc_atom(i).io.par_acc_cnt := io.par_acc_cnt
  }

}

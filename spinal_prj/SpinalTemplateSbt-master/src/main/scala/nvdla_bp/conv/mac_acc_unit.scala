package nvdla_bp.conv

import spinal.core._
import spinal.lib._

case class mac_acc_unit(eleWidth: Int) extends Component {
  val io = new Bundle {
    val ina = slave Stream (SInt(eleWidth bits))
    val inb = slave Stream (SInt(eleWidth bits))
    val out = master Stream (SInt(eleWidth bits))

    val acc_enable = in Bool()
    val par_acc_cnt = in UInt (16 bits)
  }

  val multi = new fp_multiply(32)
  val acc = new fp_acc(32)

  multi.io.ina <> io.ina
  multi.io.inb <> io.inb
  multi.io.out <> acc.io.ina
  acc.io.out <> io.out

  acc.io.acc_enable := io.acc_enable
  acc.io.par_acc_cnt := io.par_acc_cnt

}

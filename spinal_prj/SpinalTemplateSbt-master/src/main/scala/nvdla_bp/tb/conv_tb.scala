package nvdla_bp.tb

import nvdla_bp._
import spinal.core._
import spinal.lib._


case class conv_tb() extends Component {



  //val

  val dut =  new conv_top(32,32)

  dut.io.cfg.par_acc_cnt := 1
  dut.io.cfg.top_pad := 0





}
package nvdla_bp

import spinal.core._
import spinal.lib._
import spinal.lib.fsm.{EntryPoint, State, StateMachine}


case class conv_mux(eleWidth : Int) extends  Component{
  val io = new Bundle{
    val is_wt_or_err = in (Bool())

    val indata = Array.fill(8) (Vec(slave Stream(SInt(eleWidth bits)),8))
    val o_delta_wt = Array.fill(8) (Vec(master Stream(SInt(eleWidth bits)),8))
    val o_sigma = Array.fill(8) (Vec(master Stream(SInt(eleWidth bits)),8))

  }

  val temp = Array.fill(8)(Reg(Vec(SInt(eleWidth bits),8))init(0))

  // bundle
  val indata_ready,o_delta_wt_ready,o_sigma_ready = Bool()
  val indata_valid,o_delta_wt_valid,o_sigma_valid = Bool()

  for(j<- 0 until 8){
    for(i<- 0until 8){
      io.indata(j)(i).ready := indata_ready
      indata_valid := io.indata(j)(i).valid
    }
  }

  for(j<- 0 until 8){
    for(i<- 0until 8){
      io.o_delta_wt(j)(i).valid := o_delta_wt_valid
      o_delta_wt_ready := io.o_delta_wt(j)(i).ready
    }
  }



  val mux_fsm = new StateMachine {
    val RCV = new State with EntryPoint
    val ODELTA = new State
    val OSIGMA = new State

    RCV.whenIsActive{
      when()
    }



  }


}

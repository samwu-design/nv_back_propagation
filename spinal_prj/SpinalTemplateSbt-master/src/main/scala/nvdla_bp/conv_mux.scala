package nvdla_bp

import spinal.core._
import spinal.lib._
import spinal.lib.fsm.{EntryPoint, State, StateMachine}


case class conv_mux(eleWidth : Int) extends  Component{
  val io = new Bundle{
    val is_delta_wt = in (Bool())

    val indata = Array.fill(8) (Vec(slave Stream(SInt(eleWidth bits)),8))
    val o_delta_wt = Array.fill(8) (Vec(master Stream(SInt(eleWidth bits)),8))
    val o_sigma = Array.fill(8) (Vec(master Stream(SInt(eleWidth bits)),8))

  }

  val temp = Array.fill(8)((Vec(Reg(SInt(eleWidth bits))init(0),8)))

  // bundle
  val indata_ready,o_delta_wt_ready,o_sigma_ready = Bool()
  val indata_valid,o_delta_wt_valid,o_sigma_valid = Bool()

  indata_ready := False
  o_delta_wt_valid := False
  o_sigma_valid := False



  val w_indata_valid = Array.fill(8)(Bool())
  val w_o_delta_wt_ready = Array.fill(8)(Bool())
  val w_o_sigma_ready = Array.fill(8)(Bool())

  for(j<- 0 until 8){
    for(i<- 0 until 8){
      io.indata(j)(i).ready := indata_ready
    }
  }
  for(i<- 0 until 8) {
    w_indata_valid(i) := io.indata(i)(0).valid && io.indata(i)(1).valid && io.indata(i)(2).valid && io.indata(i)(3).valid && io.indata(i)(4).valid && io.indata(i)(5).valid && io.indata(i)(6).valid && io.indata(i)(7).valid
  }
  indata_valid := w_indata_valid(0) && w_indata_valid(1) &&  w_indata_valid(2) && w_indata_valid(3) && w_indata_valid(4) && w_indata_valid(5) && w_indata_valid(6) && w_indata_valid(7)


  for(j<- 0 until 8){
    for(i<- 0 until 8){
      io.o_delta_wt(j)(i).valid := o_delta_wt_valid
    }
  }
  for(i<- 0 until 8) {
    w_o_delta_wt_ready(i) := io.o_delta_wt(i)(0).ready && io.o_delta_wt(i)(1).ready && io.o_delta_wt(i)(2).ready && io.o_delta_wt(i)(3).ready && io.o_delta_wt(i)(4).ready && io.o_delta_wt(i)(5).ready && io.o_delta_wt(i)(6).ready && io.o_delta_wt(i)(7).ready
  }
  o_delta_wt_ready := w_o_delta_wt_ready(0) && w_o_delta_wt_ready(1) &&  w_o_delta_wt_ready(2) && w_o_delta_wt_ready(3) && w_o_delta_wt_ready(4) && w_o_delta_wt_ready(5) && w_o_delta_wt_ready(6) && w_o_delta_wt_ready(7)

  for(j<- 0 until 8){
    for(i<- 0 until 8){
      io.o_sigma(j)(i).valid := o_sigma_valid
    }
  }
  for(i<- 0 until 8) {
    w_o_sigma_ready(i) := io.o_sigma(i)(0).ready && io.o_sigma(i)(1).ready && io.o_sigma(i)(2).ready && io.o_sigma(i)(3).ready && io.o_sigma(i)(4).ready && io.o_sigma(i)(5).ready && io.o_sigma(i)(6).ready && io.o_sigma(i)(7).ready
  }
  o_sigma_ready := w_o_sigma_ready(0) && w_o_sigma_ready(1) &&  w_o_sigma_ready(2) && w_o_sigma_ready(3) && w_o_sigma_ready(4) && w_o_sigma_ready(5) && w_o_sigma_ready(6) && w_o_sigma_ready(7)


  for(j<- 0 until 8){
    for(i<- 0 until 8){
      io.o_delta_wt(j)(i).payload := temp(j)(i)
      io.o_sigma(j)(i).payload := temp(j)(i)
    }
  }



  val mux_fsm = new StateMachine {
    val RCV = new State with EntryPoint
    val ODELTA = new State
    val OSIGMA = new State

    RCV.whenIsActive{
      indata_ready := True
      when(indata_valid && indata_ready){
        // register input
        for(j<- 0 until 8){
          for(i<- 0 until 8){
            temp(j)(i) := io.indata(j)(i).payload
          }
        }

        // mux data path
        when(io.is_delta_wt === True){
          goto(ODELTA)
        }.otherwise{
          goto(OSIGMA)
        }

      }
    }

    ODELTA.whenIsActive{
      o_delta_wt_valid := True
      when(o_delta_wt_valid && o_delta_wt_ready){
        goto(RCV)
      }
    }

    OSIGMA.whenIsActive{
      o_sigma_valid := True
      when(o_sigma_valid && o_sigma_ready){
        goto(RCV)
      }
    }



  }

}

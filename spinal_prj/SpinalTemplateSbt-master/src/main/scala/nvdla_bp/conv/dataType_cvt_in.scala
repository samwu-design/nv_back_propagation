package nvdla_bp.conv

import spinal.core._
import spinal.lib._

case class dataType_cvt_in(eleWidth: Int) extends Component {
  val io = new Bundle {
    val i_ft = slave Stream (UInt(eleWidth * 8 bits))
    //val i_wt = Array.fill(8)(slave Stream(UInt(eleWidth*8 bits)))
    val i_wt = Vec(slave Stream (UInt(eleWidth * 8 bits)), 8)

    val o_ft = Vec(master Stream (SInt(eleWidth bits)), 8)
    //val o_wt = Array.fill(8) (Vec(master Stream(SInt(eleWidth bits)),8))
    val o_wt = Vec(Vec(master Stream (SInt(eleWidth bits)), 8), 8)

  }


  val temp_ft = Vec(Stream(SInt(eleWidth bits)), 8)
  val temp_wt = Array.fill(8)(Vec(Stream(SInt(eleWidth bits)), 8))

  // output
  io.o_ft <> temp_ft
  for (i <- 0 until 8) {
    io.o_wt(i) <> temp_wt(i)
  }

  // convect data type
  io.i_ft.ready := temp_ft(0).ready && temp_ft(1).ready && temp_ft(2).ready && temp_ft(3).ready && temp_ft(4).ready && temp_ft(5).ready && temp_ft(6).ready && temp_ft(7).ready
  for (i <- 0 until 8) {
    temp_ft(i).valid := io.i_ft.valid
    temp_ft(i).payload := io.i_ft.payload((eleWidth * (i + 1) - 1) downto (eleWidth * i)).asSInt
  }

  for (j <- 0 until 8) {
    for (i <- 0 until 8) {
      temp_wt(j)(i).payload := io.i_wt(j).payload((eleWidth * (i + 1) - 1) downto (eleWidth * i)).asSInt
      temp_wt(j)(i).valid := io.i_wt(j).valid
    }
    io.i_wt(j).ready := temp_wt(j)(0).ready && temp_wt(j)(1).ready && temp_wt(j)(2).ready && temp_wt(j)(3).ready && temp_wt(j)(4).ready && temp_wt(j)(5).ready && temp_wt(j)(6).ready && temp_wt(j)(7).ready
  }


}

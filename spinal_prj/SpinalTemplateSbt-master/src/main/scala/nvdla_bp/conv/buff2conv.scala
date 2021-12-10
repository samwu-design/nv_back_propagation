package nvdla_bp.conv

import nvdla_bp._
import spinal.core.{Bool, Bundle, Component, Reg, UInt, Vec, in, when}
import spinal.lib.fsm.{EntryPoint, State, StateMachine}
import spinal.lib._
import spinal.core._

case class buff2conv(eleWidth: Int, addrwidth: Int) extends Component {
  val io = new Bundle {
    // config parameter
    val cfg = slave Stream(glb_param())

    // input ram port
    val dt_ramrd = ram_rd(addrwidth, eleWidth * 8)
    val wt_ramrd = Vec(ram_rd(addrwidth, eleWidth * 8), 8)

    // output
    val o_ft = master Stream (UInt(eleWidth * 8 bits))
    val o_wt = Vec(master Stream (UInt(eleWidth * 8 bits)), 8)

    // control flag
    val read_enable = in Bool()

  }
  noIoPrefix()


  val idx = Reg(UInt(addrwidth bits)) init (0)
  val idy = Reg(UInt(addrwidth bits)) init (0)

  val window_posx = Reg(UInt(addrwidth bits)) init (0)
  val window_posy = Reg(UInt(addrwidth bits)) init (0)

  val last_window_x = Reg(UInt(addrwidth bits)) init (0)
  val last_window_y = Reg(UInt(addrwidth bits)) init (0)


  val dt_rd_addr = Reg(UInt(addrwidth bits)) init (0)
  val wt_rd_addr = Reg(UInt(addrwidth bits)) init (0)

  val dt_rdata = Reg(UInt(eleWidth * 8 bits)) init (0)
  val wt_rdata = Vec(Reg(UInt(eleWidth * 8 bits)) init (0),8)

  // define a wire for easy coding
  val wire_wt_rden = Bool()
  val wire_wt_ovalid = Bool()
  val wire_wt_oready = Bool()

  // temp address idx register
  val param = Reg(glb_param())

  val read_en = Bool()
  val outvalid = Bool()

  io.cfg.ready := True

  read_en := False  // other states always False
  outvalid := False

  last_window_y := (param.dtHeight - param.wtHeight).resized
  last_window_x := (param.dtWidth - param.wtWidth).resized

//-------read dt
  param <> io.cfg
  io.dt_ramrd.en := read_en
  io.dt_ramrd.addr := dt_rd_addr
  dt_rd_addr := (window_posy*param.dtWidth + window_posx + idy*param.dtWidth + idx).resized

  //------read wt
  wire_wt_rden := read_en
  for (i <- 0 until 8) {
    io.wt_ramrd(i).en := wire_wt_rden
    io.wt_ramrd(i).addr := wt_rd_addr // weight address is the same
  }
  wt_rd_addr :=(idy*param.dtWidth + idx).resized

//------- out
  io.o_ft.valid := outvalid
  io.o_ft.payload := dt_rdata

  wire_wt_ovalid := outvalid
  for (i <- 0 until 8) {
    io.o_wt(i).valid := wire_wt_ovalid
    io.o_wt(i).payload := wt_rdata(i)
  }
  wire_wt_oready := io.o_wt(0).ready && io.o_wt(1).ready && io.o_wt(2).ready && io.o_wt(3).ready && io.o_wt(4).ready && io.o_wt(5).ready && io.o_wt(6).ready && io.o_wt(7).ready


  // read request fsm
  val read_req_fsm = new StateMachine {
    val IDLE = new State with EntryPoint
    val INIT = new State
    val READ_EN = new State
    val READ_DATA = new State
    val OUTPUT = new State
    val UPDATA_ADDR = new State
    val UPDATA_CONV_WINDOW = new State
    val CACU_ADDR = new State

    IDLE.whenIsActive {
      when(io.read_enable) {
        goto(INIT)
      }
    }

    INIT.whenIsActive {
      idx := 0
      idy := 0
      window_posx := 0
      window_posy := 0
      goto(READ_EN)
    }

    READ_EN.whenIsActive{
      read_en := True
      goto(READ_DATA)
    }

    READ_DATA.whenIsActive{
      dt_rdata := io.dt_ramrd.data
      for(i<- 0 until 8){
        wt_rdata(i) := io.wt_ramrd(i).data
      }
      goto(OUTPUT)
    }

    OUTPUT.whenIsActive{
      when(io.o_ft.ready && wire_wt_oready){
        outvalid := True
        goto(UPDATA_ADDR)
      }
    }

    UPDATA_ADDR.whenIsActive{
      when(idy === param.wtHeight - 1 && idx === param.wtWidth - 1){
        idx := 0
        idy := 0
        goto(UPDATA_CONV_WINDOW) //
      }.otherwise{
        when(idx === param.wtWidth - 1){
          idy := idy + 1
          idx := 0
          goto(CACU_ADDR)
        }.otherwise{
          idx := idx + 1
          goto(CACU_ADDR)
        }
      }
    }

    UPDATA_CONV_WINDOW.whenIsActive{
      when(window_posy === last_window_y && window_posx === last_window_x){
          goto(IDLE) //
        }.otherwise{
          when(window_posx === last_window_x){
            window_posx := 0
            window_posy := window_posy + 1
            goto(CACU_ADDR)
          }.otherwise{
            window_posx := window_posx + 1
            goto(CACU_ADDR)
          }
      }
    }

   CACU_ADDR.whenIsActive{
     goto(READ_EN)
   }



  }

}

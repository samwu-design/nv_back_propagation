package nvdla_bp.conv

import nvdla_bp.{conv_cfg_param, ram_rd}
import spinal.core.{Bool, Bundle, Component, Reg, UInt, Vec, in, when}
import spinal.lib.fsm.{EntryPoint, State, StateMachine}
import spinal.lib._
import spinal.core._

case class read_req4conv(eleWidth: Int, addrwidth: Int) extends Component {
  val io = new Bundle {
    // config parameter
    val cfg = in(conv_cfg_param())

    // input ram port
    val dt_ramrd = ram_rd(addrwidth, eleWidth * 8)
    //val wt_ramrd = Array.fill((8)) (ram_rd(addrwidth,eleWidth*8))
    val wt_ramrd = Vec(ram_rd(addrwidth, eleWidth * 8), 8)

    // output
    val o_ft = master Stream (UInt(eleWidth * 8 bits))
    //val o_wt = Array.fill(8)(master Stream(UInt(eleWidth*8 bits)))
    val o_wt = Vec(master Stream (UInt(eleWidth * 8 bits)), 8)

    // control flag
    val read_enable = in Bool()

  }
  noIoPrefix()

  val dt_rd_addr = Reg(UInt(addrwidth bits)) init (0)
  val wt_rd_addr = Reg(UInt(addrwidth bits)) init (0)

  val dt_rdata = Reg(UInt(eleWidth * 8 bits)) init (0)
  val wt_rdata = Array.fill(8)(Reg(UInt(eleWidth * 8 bits)) init (0))

  // define a wire for easy coding
  val wire_wt_rden = Bool()
  val wire_wt_ovalid = Bool()
  val wire_wt_oready = Bool()

  // temp address idx register
  val stripe_x = Reg(UInt(addrwidth bits)) init (0)
  val stripe_y = Reg(UInt(addrwidth bits)) init (0)
  val atom_x = Reg(UInt(addrwidth bits)) init (0)
  val atom_y = Reg(UInt(addrwidth bits)) init (0)
  val param = Reg(conv_cfg_param())

  val posx = UInt(16 bits)
  val posy = UInt(16 bits)

  param <> io.cfg
  posy := (stripe_y + atom_y).resized
  posx := (stripe_x + atom_x).resized

  io.dt_ramrd.en := False
  io.dt_ramrd.addr := dt_rd_addr

  wire_wt_rden := False
  for (i <- 0 until 8) {
    io.wt_ramrd(i).en := wire_wt_rden
    io.wt_ramrd(i).addr := wt_rd_addr // weight address is the same
  }

  io.o_ft.valid := False
  io.o_ft.payload := dt_rdata

  wire_wt_ovalid := False
  for (i <- 0 until 8) {
    io.o_wt(i).valid := wire_wt_ovalid
    io.o_wt(i).payload := wt_rdata(i)
  }
  wire_wt_oready := io.o_wt(0).ready && io.o_wt(1).ready && io.o_wt(2).ready && io.o_wt(3).ready && io.o_wt(4).ready && io.o_wt(5).ready && io.o_wt(6).ready && io.o_wt(7).ready


  // read request fsm
  val read_req_fsm = new StateMachine {
    val IDLE = new State with EntryPoint
    val INIT = new State
    val UPDATA_CONV_WINDOW = new State
    val INIT_CONV_IDX = new State
    val CACU_ADDR = new State
    val READ = new State
    val GET_DATA = new State
    val OUTPUT = new State
    val UPDATA_ADDR = new State
    val CHECK = new State
    val JUDGE = new State
    val GEN_ADDR = new State
    val END = new State

    IDLE.whenIsActive {
      when(io.read_enable) {
        goto(INIT)
      }
    }

    INIT.whenIsActive {
      stripe_x := 0
      stripe_y := 0
      atom_x := 0
      atom_y := 0
      goto(READ)
    }

    UPDATA_CONV_WINDOW.whenIsActive {
      when(posy === param.dt_stridey) {
        when(posx === param.dt_stridex) {
          goto(IDLE)
        }.otherwise {
          stripe_x := stripe_x + 1
          goto(INIT_CONV_IDX)
        }
      }.otherwise {
        when(posx === param.dt_stridex) {
          stripe_x := 0
          stripe_y := stripe_y + 1
          goto(INIT_CONV_IDX)
        }.otherwise {
          stripe_x := stripe_x + 1
          goto(INIT_CONV_IDX)
        }
      }

    }

    INIT_CONV_IDX.whenIsActive {
      atom_x := 0
      atom_y := 0
      goto(UPDATA_ADDR)
    }

    UPDATA_ADDR.whenIsActive {
      when(atom_y === param.wt_stridey) {
        when(atom_x === param.wt_stridex) {
          goto(UPDATA_CONV_WINDOW)
        }.otherwise {
          when(atom_x === param.wt_stridex) {
            atom_x := 0
            atom_y := atom_y + 1
            goto(READ)
          }.otherwise {
            atom_x := atom_x + 1
            goto(READ)
          }
        }
      }

    }

    CACU_ADDR.whenIsActive {
      wt_rd_addr := (atom_y * param.wt_stridex + atom_x).resized
      when((posy >= param.top_pad) && (posy < (param.top_pad + param.fea_height)) && (posx >= param.left_pad) && (posx < (param.left_pad + param.fea_width))) {
        dt_rd_addr := ((posy - param.top_pad) * (param.fea_width) + (posx - param.left_pad)).resized
      }
      goto(READ)
    }
    // only once
    READ.whenIsActive {
      when((posy >= param.top_pad) && (posy < (param.top_pad + param.fea_height)) && (posx >= param.left_pad) && (posx < (param.left_pad + param.fea_width))) {
        io.dt_ramrd.en := True
      }
      for (i <- 0 until 8) {
        io.wt_ramrd(i).en := True
      }
      goto(GET_DATA)
    }

    GET_DATA.whenIsActive {
      // only nopadding position need read
      when((posy >= param.top_pad) && (posy < (param.top_pad + param.fea_height)) && (posx >= param.left_pad) && (posx < (param.left_pad + param.fea_width))) {
        dt_rdata := io.dt_ramrd.data
      }.otherwise {
        dt_rdata := 0
      }
      // always need read wt data
      for (i <- 0 until 8) {
        wt_rdata(i) := io.wt_ramrd(i).data
      }
      goto(OUTPUT)
    }

    OUTPUT.whenIsActive {
      when(io.o_ft.ready === True && wire_wt_oready === True) {
        io.o_ft.valid := True
        wire_wt_ovalid := True
        goto(UPDATA_ADDR)
      }
    }
  }

}

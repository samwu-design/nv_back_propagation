package TinyDMA

case class dmawrite()


import spinal.core._
import spinal.lib._
import nvdla_bp._
import spinal.lib.bus.amba4.axi.Axi4WriteOnly
import spinal.lib.fsm.{EntryPoint, State, StateMachine}


case class tiny_dma_write(datawidth:Int, addrwidth:Int, idwidth:Int) extends Component{
  val axiconfig = TinyDMAverilog.getAxiConfig(datawidth, addrwidth, idwidth)
  val io = new Bundle {
    val axim = master(Axi4WriteOnly(axiconfig))
    val input = slave Stream(UInt(datawidth bits))
    val dataNum = in UInt(32 bits)
    val pushbottom = in Bool()
    val sendover = in Bool()
    val start_read = out Bool()
  }

  // axi4 bus

  val offsetaddr = Reg(UInt(addrwidth bits))init(0)
  val addr = Reg(UInt(addrwidth bits))init(0)
  val wdata_cnt = Reg(UInt(32 bits))init(0)

  val pushbottom0 = Reg(Bool())init(False)
  val pushbottom1 = RegNext(pushbottom0)

  pushbottom0 := io.pushbottom

  val pushbottom_pulse = pushbottom0 && !pushbottom1

  val axi_wdata = Reg(Bits(datawidth bits))init(0)

  offsetaddr := (datawidth/8)

  io.axim.aw.valid := False
  io.axim.aw.payload.id := 0
  io.axim.aw.payload.addr := addr
  io.axim.aw.payload.setBurstINCR()
  io.axim.aw.payload.size := log2Up(datawidth/8)
  io.axim.aw.payload.len := U(0)

  io.axim.w.valid := False
  io.axim.w.last := True

  io.axim.b.ready := False
  io.axim.w.data := axi_wdata
  io.axim.w.strb := (~U(0,(datawidth/8) bits)).asBits

  io.input.ready := False

  io.start_read := False

  val dma_wrctrl_fsm = new StateMachine {
    val IDLE = new State with EntryPoint
    val RCV_DATA = new State
    val AW = new State
    val W = new State
    val WBRESP = new State
    val CHECK = new State
    val SEND = new State


    IDLE.whenIsActive{
      addr := 0
      wdata_cnt := 0
      when(pushbottom_pulse === True){
        goto(RCV_DATA)
      }
    }

    RCV_DATA.whenIsActive{
      io.input.ready := True
      when(io.input.valid && io.input.ready){
        axi_wdata := io.input.payload.asBits
        goto(AW)
      }
    }

    AW.whenIsActive{
      io.axim.aw.valid := True
      when(io.axim.aw.fire){
          goto(W)
      }
    }

    W.whenIsActive{
      io.axim.w.valid := True
      when(io.axim.w.fire){
        wdata_cnt := wdata_cnt + 1
        goto(WBRESP)
      }
    }

    WBRESP.whenIsActive{
      io.axim.b.ready := True
      when(io.axim.b.fire){
        goto(CHECK)
      }
    }

    CHECK.whenIsActive{
      when(wdata_cnt < io.dataNum){
        addr := addr + offsetaddr
        goto(RCV_DATA)
      }.otherwise{
        goto(SEND)
      }
    }

    SEND.whenIsActive{
      io.start_read := True
      when(io.sendover === True || pushbottom_pulse === True){
        goto(IDLE)
      }
    }

  }


}

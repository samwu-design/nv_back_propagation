package TinyDMA


import spinal.lib._
import spinal.core._
import spinal.lib.bus.amba4.axi.{Axi4, Axi4Config, Axi4ReadOnly}
import nvdla_bp._
import nvdla_bp.dma.dma_read
import spinal.lib.fsm.{EntryPoint, State, StateMachine}




case class tiny_dma_read(datawidth:Int,addrwidth:Int,idwidth:Int) extends Component{
  val axiconfig = TinyDMAverilog.getAxiConfig(datawidth, addrwidth, idwidth)
  val io = new Bundle {
    val axim = master(Axi4ReadOnly(axiconfig))
    val output =  master Stream(UInt(datawidth bits))
    val dataNum = in UInt(32 bits)
    val start_read = in Bool()
    val sendover = out Bool()
  }
  noIoPrefix()

  val offsetaddr = Reg(UInt(addrwidth bits))init(0)
  val addr = Reg(UInt(addrwidth bits))init(0)
  val rdata_cnt = Reg(UInt(32 bits))init(0)

  offsetaddr := (datawidth/8)

  val axi_rdata = Reg(Bits(datawidth bits))init(0)

  io.sendover := False

  io.output.valid := False

  io.axim.ar.payload.addr := addr
  io.axim.ar.payload.setBurstINCR()
  io.axim.ar.payload.size := log2Up(datawidth/8)
  io.axim.ar.payload.len := U(0)
  io.axim.ar.payload.id := 0

  io.axim.ar.valid := False
  io.axim.r.ready := False

  io.output.payload := axi_rdata.asUInt

  val dma_rd_fsm = new StateMachine {
    val IDLE = new State with EntryPoint
    val AR = new State
    val R = new State
    val SEND = new State
    val CHECK = new State


    IDLE.whenIsActive {
      addr := 0
      rdata_cnt := 0
      when(io.start_read === True) {
        goto(AR)
      }
    }

    AR.whenIsActive{
      io.axim.ar.valid := True
      when(io.axim.ar.valid === True && io.axim.ar.ready === True){
        goto(R)
      }
    }

    R.whenIsActive{
      io.axim.r.ready := True
      when(io.axim.r.ready === True && io.axim.r.valid === True){
          axi_rdata := io.axim.r.data
          goto(SEND)
      }
    }

    SEND.whenIsActive {
      io.output.valid := True
      when(io.output.valid && io.output.ready) {
        rdata_cnt := rdata_cnt + 1
        goto(CHECK)
      }
    }

    CHECK.whenIsActive{
      when(rdata_cnt < io.dataNum){
        addr := addr + offsetaddr
        goto(AR)
      }.otherwise{
        io.sendover := True
        goto(IDLE)
      }
    }






    }







}





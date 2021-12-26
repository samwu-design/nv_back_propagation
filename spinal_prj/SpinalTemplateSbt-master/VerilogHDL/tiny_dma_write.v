// Generator : SpinalHDL v1.5.0    git head : 83a031922866b078c411ec5529e00f1b6e79f8e7
// Component : tiny_dma_write
// Git hash  : 1856ea86926dfca730abc474b97a711a6e2fd2e0


`define dma_wrctrl_fsm_enumDefinition_binary_sequential_type [2:0]
`define dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_BOOT 3'b000
`define dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_IDLE 3'b001
`define dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_RCV_DATA 3'b010
`define dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_AW 3'b011
`define dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_W 3'b100
`define dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_WBRESP 3'b101
`define dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_CHECK 3'b110
`define dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_SEND 3'b111


module tiny_dma_write (
  output reg          io_axim_aw_valid,
  input               io_axim_aw_ready,
  output     [31:0]   io_axim_aw_payload_addr,
  output     [7:0]    io_axim_aw_payload_len,
  output     [2:0]    io_axim_aw_payload_size,
  output     [1:0]    io_axim_aw_payload_burst,
  output reg          io_axim_w_valid,
  input               io_axim_w_ready,
  output     [31:0]   io_axim_w_payload_data,
  output     [3:0]    io_axim_w_payload_strb,
  output              io_axim_w_payload_last,
  input               io_axim_b_valid,
  output reg          io_axim_b_ready,
  input      [1:0]    io_axim_b_payload_resp,
  input               io_input_valid,
  output reg          io_input_ready,
  input      [31:0]   io_input_payload,
  input      [31:0]   io_dataNum,
  input               io_pushbottom,
  input               io_sendover,
  input               clk,
  input               reset
);
  reg        [31:0]   offsetaddr;
  reg        [31:0]   addr;
  reg        [31:0]   data_cnt;
  reg                 pushbottom0;
  reg                 pushbottom1;
  wire                pushbottom_pulse;
  reg        [31:0]   axi_data;
  wire                dma_wrctrl_fsm_wantExit;
  reg                 dma_wrctrl_fsm_wantStart;
  wire                dma_wrctrl_fsm_wantKill;
  reg        `dma_wrctrl_fsm_enumDefinition_binary_sequential_type dma_wrctrl_fsm_stateReg;
  reg        `dma_wrctrl_fsm_enumDefinition_binary_sequential_type dma_wrctrl_fsm_stateNext;
  wire                when_tiny_dma_write_l70;
  wire                when_tiny_dma_write_l77;
  wire                when_tiny_dma_write_l85;
  wire                when_tiny_dma_write_l92;
  wire                when_tiny_dma_write_l99;
  wire                when_tiny_dma_write_l105;
  wire                when_tiny_dma_write_l115;
  `ifndef SYNTHESIS
  reg [183:0] dma_wrctrl_fsm_stateReg_string;
  reg [183:0] dma_wrctrl_fsm_stateNext_string;
  `endif


  `ifndef SYNTHESIS
  always @(*) begin
    case(dma_wrctrl_fsm_stateReg)
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_BOOT : dma_wrctrl_fsm_stateReg_string = "dma_wrctrl_fsm_BOOT    ";
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_IDLE : dma_wrctrl_fsm_stateReg_string = "dma_wrctrl_fsm_IDLE    ";
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_RCV_DATA : dma_wrctrl_fsm_stateReg_string = "dma_wrctrl_fsm_RCV_DATA";
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_AW : dma_wrctrl_fsm_stateReg_string = "dma_wrctrl_fsm_AW      ";
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_W : dma_wrctrl_fsm_stateReg_string = "dma_wrctrl_fsm_W       ";
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_WBRESP : dma_wrctrl_fsm_stateReg_string = "dma_wrctrl_fsm_WBRESP  ";
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_CHECK : dma_wrctrl_fsm_stateReg_string = "dma_wrctrl_fsm_CHECK   ";
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_SEND : dma_wrctrl_fsm_stateReg_string = "dma_wrctrl_fsm_SEND    ";
      default : dma_wrctrl_fsm_stateReg_string = "???????????????????????";
    endcase
  end
  always @(*) begin
    case(dma_wrctrl_fsm_stateNext)
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_BOOT : dma_wrctrl_fsm_stateNext_string = "dma_wrctrl_fsm_BOOT    ";
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_IDLE : dma_wrctrl_fsm_stateNext_string = "dma_wrctrl_fsm_IDLE    ";
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_RCV_DATA : dma_wrctrl_fsm_stateNext_string = "dma_wrctrl_fsm_RCV_DATA";
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_AW : dma_wrctrl_fsm_stateNext_string = "dma_wrctrl_fsm_AW      ";
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_W : dma_wrctrl_fsm_stateNext_string = "dma_wrctrl_fsm_W       ";
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_WBRESP : dma_wrctrl_fsm_stateNext_string = "dma_wrctrl_fsm_WBRESP  ";
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_CHECK : dma_wrctrl_fsm_stateNext_string = "dma_wrctrl_fsm_CHECK   ";
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_SEND : dma_wrctrl_fsm_stateNext_string = "dma_wrctrl_fsm_SEND    ";
      default : dma_wrctrl_fsm_stateNext_string = "???????????????????????";
    endcase
  end
  `endif

  assign pushbottom_pulse = (pushbottom0 && (! pushbottom1));
  always @(*) begin
    io_axim_aw_valid = 1'b0;
    case(dma_wrctrl_fsm_stateReg)
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_IDLE : begin
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_RCV_DATA : begin
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_AW : begin
        io_axim_aw_valid = 1'b1;
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_W : begin
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_WBRESP : begin
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_CHECK : begin
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_SEND : begin
      end
      default : begin
      end
    endcase
  end

  assign io_axim_aw_payload_addr = addr;
  assign io_axim_aw_payload_burst = 2'b01;
  assign io_axim_aw_payload_size = 3'b010;
  assign io_axim_aw_payload_len = 8'h0;
  always @(*) begin
    io_axim_w_valid = 1'b0;
    case(dma_wrctrl_fsm_stateReg)
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_IDLE : begin
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_RCV_DATA : begin
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_AW : begin
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_W : begin
        io_axim_w_valid = 1'b1;
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_WBRESP : begin
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_CHECK : begin
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_SEND : begin
      end
      default : begin
      end
    endcase
  end

  assign io_axim_w_payload_last = 1'b1;
  always @(*) begin
    io_axim_b_ready = 1'b0;
    case(dma_wrctrl_fsm_stateReg)
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_IDLE : begin
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_RCV_DATA : begin
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_AW : begin
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_W : begin
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_WBRESP : begin
        io_axim_b_ready = 1'b1;
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_CHECK : begin
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_SEND : begin
      end
      default : begin
      end
    endcase
  end

  assign io_axim_w_payload_data = axi_data;
  assign io_axim_w_payload_strb = (~ 4'b0000);
  always @(*) begin
    io_input_ready = 1'b0;
    case(dma_wrctrl_fsm_stateReg)
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_IDLE : begin
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_RCV_DATA : begin
        io_input_ready = 1'b1;
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_AW : begin
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_W : begin
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_WBRESP : begin
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_CHECK : begin
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_SEND : begin
      end
      default : begin
      end
    endcase
  end

  assign dma_wrctrl_fsm_wantExit = 1'b0;
  always @(*) begin
    dma_wrctrl_fsm_wantStart = 1'b0;
    case(dma_wrctrl_fsm_stateReg)
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_IDLE : begin
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_RCV_DATA : begin
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_AW : begin
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_W : begin
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_WBRESP : begin
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_CHECK : begin
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_SEND : begin
      end
      default : begin
        dma_wrctrl_fsm_wantStart = 1'b1;
      end
    endcase
  end

  assign dma_wrctrl_fsm_wantKill = 1'b0;
  always @(*) begin
    dma_wrctrl_fsm_stateNext = dma_wrctrl_fsm_stateReg;
    case(dma_wrctrl_fsm_stateReg)
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_IDLE : begin
        if(when_tiny_dma_write_l70) begin
          dma_wrctrl_fsm_stateNext = `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_RCV_DATA;
        end
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_RCV_DATA : begin
        if(when_tiny_dma_write_l77) begin
          dma_wrctrl_fsm_stateNext = `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_AW;
        end
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_AW : begin
        if(when_tiny_dma_write_l85) begin
          dma_wrctrl_fsm_stateNext = `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_W;
        end
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_W : begin
        if(when_tiny_dma_write_l92) begin
          dma_wrctrl_fsm_stateNext = `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_WBRESP;
        end
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_WBRESP : begin
        if(when_tiny_dma_write_l99) begin
          dma_wrctrl_fsm_stateNext = `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_CHECK;
        end
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_CHECK : begin
        if(when_tiny_dma_write_l105) begin
          dma_wrctrl_fsm_stateNext = `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_RCV_DATA;
        end else begin
          dma_wrctrl_fsm_stateNext = `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_SEND;
        end
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_SEND : begin
        if(when_tiny_dma_write_l115) begin
          dma_wrctrl_fsm_stateNext = `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_IDLE;
        end
      end
      default : begin
      end
    endcase
    if(dma_wrctrl_fsm_wantStart) begin
      dma_wrctrl_fsm_stateNext = `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_IDLE;
    end
    if(dma_wrctrl_fsm_wantKill) begin
      dma_wrctrl_fsm_stateNext = `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_BOOT;
    end
  end

  assign when_tiny_dma_write_l70 = (pushbottom_pulse == 1'b1);
  assign when_tiny_dma_write_l77 = (io_input_valid && io_input_ready);
  assign when_tiny_dma_write_l85 = (io_axim_aw_valid && io_axim_aw_ready);
  assign when_tiny_dma_write_l92 = (io_axim_w_valid && io_axim_w_ready);
  assign when_tiny_dma_write_l99 = (io_axim_b_valid && io_axim_b_ready);
  assign when_tiny_dma_write_l105 = (data_cnt < io_dataNum);
  assign when_tiny_dma_write_l115 = (io_sendover == 1'b1);
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      offsetaddr <= 32'h0;
      addr <= 32'h0;
      data_cnt <= 32'h0;
      pushbottom0 <= 1'b0;
      axi_data <= 32'h0;
      dma_wrctrl_fsm_stateReg <= `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_BOOT;
    end else begin
      pushbottom0 <= io_pushbottom;
      offsetaddr <= 32'h00000004;
      dma_wrctrl_fsm_stateReg <= dma_wrctrl_fsm_stateNext;
      case(dma_wrctrl_fsm_stateReg)
        `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_IDLE : begin
          addr <= 32'h0;
          data_cnt <= 32'h0;
        end
        `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_RCV_DATA : begin
          if(when_tiny_dma_write_l77) begin
            axi_data <= io_input_payload;
          end
        end
        `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_AW : begin
        end
        `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_W : begin
        end
        `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_WBRESP : begin
        end
        `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_CHECK : begin
          if(when_tiny_dma_write_l105) begin
            data_cnt <= (data_cnt + 32'h00000001);
            addr <= (addr + offsetaddr);
          end
        end
        `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_SEND : begin
        end
        default : begin
        end
      endcase
    end
  end

  always @(posedge clk) begin
    pushbottom1 <= pushbottom0;
  end


endmodule

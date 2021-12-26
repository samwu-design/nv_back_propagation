// Generator : SpinalHDL v1.5.0    git head : 83a031922866b078c411ec5529e00f1b6e79f8e7
// Component : tiny_dma_read
// Git hash  : 1856ea86926dfca730abc474b97a711a6e2fd2e0


`define dma_rd_fsm_enumDefinition_binary_sequential_type [2:0]
`define dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_BOOT 3'b000
`define dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_IDLE 3'b001
`define dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_AR 3'b010
`define dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_R 3'b011
`define dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_SEND 3'b100
`define dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_CHECK 3'b101


module tiny_dma_read (
  output reg          axim_ar_valid,
  input               axim_ar_ready,
  output     [31:0]   axim_ar_payload_addr,
  output     [7:0]    axim_ar_payload_len,
  output     [2:0]    axim_ar_payload_size,
  output     [1:0]    axim_ar_payload_burst,
  input               axim_r_valid,
  output reg          axim_r_ready,
  input      [31:0]   axim_r_payload_data,
  input      [1:0]    axim_r_payload_resp,
  input               axim_r_payload_last,
  output reg          output_valid,
  input               output_ready,
  output     [31:0]   output_payload,
  input      [31:0]   dataNum,
  input               start_read,
  output reg          sendover,
  input               clk,
  input               reset
);
  reg        [31:0]   offsetaddr;
  reg        [31:0]   addr;
  reg        [31:0]   data_cnt;
  reg        [31:0]   axi_rdata;
  wire                dma_rd_fsm_wantExit;
  reg                 dma_rd_fsm_wantStart;
  wire                dma_rd_fsm_wantKill;
  reg        `dma_rd_fsm_enumDefinition_binary_sequential_type dma_rd_fsm_stateReg;
  reg        `dma_rd_fsm_enumDefinition_binary_sequential_type dma_rd_fsm_stateNext;
  wire                when_tiny_dma_read_l58;
  wire                when_tiny_dma_read_l65;
  wire                when_tiny_dma_read_l72;
  wire                when_tiny_dma_read_l80;
  wire                when_tiny_dma_read_l87;
  `ifndef SYNTHESIS
  reg [127:0] dma_rd_fsm_stateReg_string;
  reg [127:0] dma_rd_fsm_stateNext_string;
  `endif


  `ifndef SYNTHESIS
  always @(*) begin
    case(dma_rd_fsm_stateReg)
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_BOOT : dma_rd_fsm_stateReg_string = "dma_rd_fsm_BOOT ";
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_IDLE : dma_rd_fsm_stateReg_string = "dma_rd_fsm_IDLE ";
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_AR : dma_rd_fsm_stateReg_string = "dma_rd_fsm_AR   ";
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_R : dma_rd_fsm_stateReg_string = "dma_rd_fsm_R    ";
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_SEND : dma_rd_fsm_stateReg_string = "dma_rd_fsm_SEND ";
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_CHECK : dma_rd_fsm_stateReg_string = "dma_rd_fsm_CHECK";
      default : dma_rd_fsm_stateReg_string = "????????????????";
    endcase
  end
  always @(*) begin
    case(dma_rd_fsm_stateNext)
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_BOOT : dma_rd_fsm_stateNext_string = "dma_rd_fsm_BOOT ";
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_IDLE : dma_rd_fsm_stateNext_string = "dma_rd_fsm_IDLE ";
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_AR : dma_rd_fsm_stateNext_string = "dma_rd_fsm_AR   ";
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_R : dma_rd_fsm_stateNext_string = "dma_rd_fsm_R    ";
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_SEND : dma_rd_fsm_stateNext_string = "dma_rd_fsm_SEND ";
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_CHECK : dma_rd_fsm_stateNext_string = "dma_rd_fsm_CHECK";
      default : dma_rd_fsm_stateNext_string = "????????????????";
    endcase
  end
  `endif

  always @(*) begin
    sendover = 1'b0;
    case(dma_rd_fsm_stateReg)
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_IDLE : begin
      end
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_AR : begin
      end
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_R : begin
      end
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_SEND : begin
      end
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_CHECK : begin
        if(when_tiny_dma_read_l87) begin
          sendover = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    output_valid = 1'b0;
    case(dma_rd_fsm_stateReg)
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_IDLE : begin
      end
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_AR : begin
      end
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_R : begin
      end
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_SEND : begin
        output_valid = 1'b1;
      end
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_CHECK : begin
      end
      default : begin
      end
    endcase
  end

  assign axim_ar_payload_addr = addr;
  assign axim_ar_payload_burst = 2'b01;
  assign axim_ar_payload_size = 3'b010;
  assign axim_ar_payload_len = 8'h0;
  always @(*) begin
    axim_ar_valid = 1'b0;
    case(dma_rd_fsm_stateReg)
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_IDLE : begin
      end
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_AR : begin
        axim_ar_valid = 1'b1;
      end
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_R : begin
      end
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_SEND : begin
      end
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_CHECK : begin
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    axim_r_ready = 1'b0;
    case(dma_rd_fsm_stateReg)
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_IDLE : begin
      end
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_AR : begin
      end
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_R : begin
        axim_r_ready = 1'b1;
      end
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_SEND : begin
      end
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_CHECK : begin
      end
      default : begin
      end
    endcase
  end

  assign output_payload = axi_rdata;
  assign dma_rd_fsm_wantExit = 1'b0;
  always @(*) begin
    dma_rd_fsm_wantStart = 1'b0;
    case(dma_rd_fsm_stateReg)
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_IDLE : begin
      end
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_AR : begin
      end
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_R : begin
      end
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_SEND : begin
      end
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_CHECK : begin
      end
      default : begin
        dma_rd_fsm_wantStart = 1'b1;
      end
    endcase
  end

  assign dma_rd_fsm_wantKill = 1'b0;
  always @(*) begin
    dma_rd_fsm_stateNext = dma_rd_fsm_stateReg;
    case(dma_rd_fsm_stateReg)
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_IDLE : begin
        if(when_tiny_dma_read_l58) begin
          dma_rd_fsm_stateNext = `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_AR;
        end
      end
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_AR : begin
        if(when_tiny_dma_read_l65) begin
          dma_rd_fsm_stateNext = `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_R;
        end
      end
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_R : begin
        if(when_tiny_dma_read_l72) begin
          dma_rd_fsm_stateNext = `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_IDLE;
        end
      end
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_SEND : begin
        if(when_tiny_dma_read_l80) begin
          dma_rd_fsm_stateNext = `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_CHECK;
        end
      end
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_CHECK : begin
        if(when_tiny_dma_read_l87) begin
          dma_rd_fsm_stateNext = `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_IDLE;
        end else begin
          dma_rd_fsm_stateNext = `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_AR;
        end
      end
      default : begin
      end
    endcase
    if(dma_rd_fsm_wantStart) begin
      dma_rd_fsm_stateNext = `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_IDLE;
    end
    if(dma_rd_fsm_wantKill) begin
      dma_rd_fsm_stateNext = `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_BOOT;
    end
  end

  assign when_tiny_dma_read_l58 = (start_read == 1'b1);
  assign when_tiny_dma_read_l65 = ((axim_ar_valid == 1'b1) && (axim_ar_ready == 1'b1));
  assign when_tiny_dma_read_l72 = ((axim_r_ready == 1'b1) && (axim_r_valid == 1'b1));
  assign when_tiny_dma_read_l80 = (output_valid && output_ready);
  assign when_tiny_dma_read_l87 = (data_cnt < dataNum);
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      offsetaddr <= 32'h0;
      addr <= 32'h0;
      data_cnt <= 32'h0;
      axi_rdata <= 32'h0;
      dma_rd_fsm_stateReg <= `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_BOOT;
    end else begin
      offsetaddr <= 32'h00000004;
      dma_rd_fsm_stateReg <= dma_rd_fsm_stateNext;
      case(dma_rd_fsm_stateReg)
        `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_IDLE : begin
          addr <= 32'h0;
        end
        `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_AR : begin
        end
        `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_R : begin
          if(when_tiny_dma_read_l72) begin
            axi_rdata <= axim_r_payload_data;
          end
        end
        `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_SEND : begin
          if(when_tiny_dma_read_l80) begin
            data_cnt <= (data_cnt + 32'h00000001);
          end
        end
        `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_CHECK : begin
          if(!when_tiny_dma_read_l87) begin
            addr <= (addr + offsetaddr);
          end
        end
        default : begin
        end
      endcase
    end
  end


endmodule

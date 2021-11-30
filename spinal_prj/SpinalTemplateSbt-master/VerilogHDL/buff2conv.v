// Generator : SpinalHDL v1.5.0    git head : 83a031922866b078c411ec5529e00f1b6e79f8e7
// Component : buff2conv
// Git hash  : d1748fa828734f540bceba79d62faef7494e65f6


`define read_req_fsm_enumDefinition_binary_sequential_type [2:0]
`define read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_BOOT 3'b000
`define read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_IDLE 3'b001
`define read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT 3'b010
`define read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_READ 3'b011
`define read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_OUTPUT 3'b100
`define read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_ADDR 3'b101
`define read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_CONV_WINDOW 3'b110
`define read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CACU_ADDR 3'b111


module buff2conv (
  input               cfg_valid,
  output              cfg_ready,
  input      [31:0]   cfg_payload_rd_dtBaseAddr,
  input      [31:0]   cfg_payload_rd_wtBaseAddr,
  input      [31:0]   cfg_payload_wr_delta_wt_BaseAddr,
  input      [31:0]   cfg_payload_wr_sigma_BaseAddr,
  input      [15:0]   cfg_payload_dtWidth,
  input      [15:0]   cfg_payload_dtHeight,
  input      [15:0]   cfg_payload_wtWidth,
  input      [15:0]   cfg_payload_wtHeight,
  input      [15:0]   cfg_payload_oWidth,
  input      [15:0]   cfg_payload_oHeight,
  output     [31:0]   dt_ramrd_addr,
  input      [2047:0] dt_ramrd_data,
  output              dt_ramrd_en,
  output     [31:0]   wt_ramrd_0_addr,
  input      [2047:0] wt_ramrd_0_data,
  output              wt_ramrd_0_en,
  output     [31:0]   wt_ramrd_1_addr,
  input      [2047:0] wt_ramrd_1_data,
  output              wt_ramrd_1_en,
  output     [31:0]   wt_ramrd_2_addr,
  input      [2047:0] wt_ramrd_2_data,
  output              wt_ramrd_2_en,
  output     [31:0]   wt_ramrd_3_addr,
  input      [2047:0] wt_ramrd_3_data,
  output              wt_ramrd_3_en,
  output     [31:0]   wt_ramrd_4_addr,
  input      [2047:0] wt_ramrd_4_data,
  output              wt_ramrd_4_en,
  output     [31:0]   wt_ramrd_5_addr,
  input      [2047:0] wt_ramrd_5_data,
  output              wt_ramrd_5_en,
  output     [31:0]   wt_ramrd_6_addr,
  input      [2047:0] wt_ramrd_6_data,
  output              wt_ramrd_6_en,
  output     [31:0]   wt_ramrd_7_addr,
  input      [2047:0] wt_ramrd_7_data,
  output              wt_ramrd_7_en,
  output              o_ft_valid,
  input               o_ft_ready,
  output     [2047:0] o_ft_payload,
  output              o_wt_0_valid,
  input               o_wt_0_ready,
  output     [2047:0] o_wt_0_payload,
  output              o_wt_1_valid,
  input               o_wt_1_ready,
  output     [2047:0] o_wt_1_payload,
  output              o_wt_2_valid,
  input               o_wt_2_ready,
  output     [2047:0] o_wt_2_payload,
  output              o_wt_3_valid,
  input               o_wt_3_ready,
  output     [2047:0] o_wt_3_payload,
  output              o_wt_4_valid,
  input               o_wt_4_ready,
  output     [2047:0] o_wt_4_payload,
  output              o_wt_5_valid,
  input               o_wt_5_ready,
  output     [2047:0] o_wt_5_payload,
  output              o_wt_6_valid,
  input               o_wt_6_ready,
  output     [2047:0] o_wt_6_payload,
  output              o_wt_7_valid,
  input               o_wt_7_ready,
  output     [2047:0] o_wt_7_payload,
  input               read_enable,
  input               clk,
  input               reset
);
  wire       [15:0]   _zz_last_window_y;
  wire       [15:0]   _zz_last_window_x;
  wire       [47:0]   _zz_dt_rd_addr;
  wire       [47:0]   _zz_dt_rd_addr_1;
  wire       [47:0]   _zz_dt_rd_addr_2;
  wire       [47:0]   _zz_dt_rd_addr_3;
  wire       [47:0]   _zz_dt_rd_addr_4;
  wire       [47:0]   _zz_dt_rd_addr_5;
  wire       [47:0]   _zz_dt_rd_addr_6;
  wire       [47:0]   _zz_wt_rd_addr;
  wire       [47:0]   _zz_wt_rd_addr_1;
  wire       [47:0]   _zz_wt_rd_addr_2;
  wire       [31:0]   _zz_when_buff2conv_l131;
  wire       [15:0]   _zz_when_buff2conv_l131_1;
  wire       [31:0]   _zz_when_buff2conv_l131_2;
  wire       [15:0]   _zz_when_buff2conv_l131_3;
  wire       [31:0]   _zz_when_buff2conv_l136;
  wire       [15:0]   _zz_when_buff2conv_l136_1;
  reg        [31:0]   idx;
  reg        [31:0]   idy;
  reg        [31:0]   window_posx;
  reg        [31:0]   window_posy;
  reg        [31:0]   last_window_x;
  reg        [31:0]   last_window_y;
  reg        [31:0]   dt_rd_addr;
  reg        [31:0]   wt_rd_addr;
  reg        [2047:0] dt_rdata;
  reg        [2047:0] wt_rdata_0;
  reg        [2047:0] wt_rdata_1;
  reg        [2047:0] wt_rdata_2;
  reg        [2047:0] wt_rdata_3;
  reg        [2047:0] wt_rdata_4;
  reg        [2047:0] wt_rdata_5;
  reg        [2047:0] wt_rdata_6;
  reg        [2047:0] wt_rdata_7;
  wire                wire_wt_rden;
  wire                wire_wt_ovalid;
  wire                wire_wt_oready;
  reg        [31:0]   param_rd_dtBaseAddr;
  reg        [31:0]   param_rd_wtBaseAddr;
  reg        [31:0]   param_wr_delta_wt_BaseAddr;
  reg        [31:0]   param_wr_sigma_BaseAddr;
  reg        [15:0]   param_dtWidth;
  reg        [15:0]   param_dtHeight;
  reg        [15:0]   param_wtWidth;
  reg        [15:0]   param_wtHeight;
  reg        [15:0]   param_oWidth;
  reg        [15:0]   param_oHeight;
  reg                 read_en;
  reg                 outvalid;
  wire                read_req_fsm_wantExit;
  reg                 read_req_fsm_wantStart;
  wire                read_req_fsm_wantKill;
  reg        `read_req_fsm_enumDefinition_binary_sequential_type read_req_fsm_stateReg;
  reg        `read_req_fsm_enumDefinition_binary_sequential_type read_req_fsm_stateNext;
  wire                when_buff2conv_l124;
  wire                when_buff2conv_l131;
  wire                when_buff2conv_l136;
  wire                when_buff2conv_l148;
  wire                when_buff2conv_l151;
  `ifndef SYNTHESIS
  reg [247:0] read_req_fsm_stateReg_string;
  reg [247:0] read_req_fsm_stateNext_string;
  `endif


  assign _zz_last_window_y = (param_dtHeight - param_wtHeight);
  assign _zz_last_window_x = (param_dtWidth - param_wtWidth);
  assign _zz_dt_rd_addr = (_zz_dt_rd_addr_1 + _zz_dt_rd_addr_6);
  assign _zz_dt_rd_addr_1 = (_zz_dt_rd_addr_2 + _zz_dt_rd_addr_5);
  assign _zz_dt_rd_addr_2 = (_zz_dt_rd_addr_3 + _zz_dt_rd_addr_4);
  assign _zz_dt_rd_addr_3 = (window_posy * param_dtWidth);
  assign _zz_dt_rd_addr_4 = {16'd0, window_posx};
  assign _zz_dt_rd_addr_5 = (idy * param_dtWidth);
  assign _zz_dt_rd_addr_6 = {16'd0, idx};
  assign _zz_wt_rd_addr = (_zz_wt_rd_addr_1 + _zz_wt_rd_addr_2);
  assign _zz_wt_rd_addr_1 = (idy * param_dtWidth);
  assign _zz_wt_rd_addr_2 = {16'd0, idx};
  assign _zz_when_buff2conv_l131_1 = (param_wtHeight - 16'h0001);
  assign _zz_when_buff2conv_l131 = {16'd0, _zz_when_buff2conv_l131_1};
  assign _zz_when_buff2conv_l131_3 = (param_wtWidth - 16'h0001);
  assign _zz_when_buff2conv_l131_2 = {16'd0, _zz_when_buff2conv_l131_3};
  assign _zz_when_buff2conv_l136_1 = (param_wtWidth - 16'h0001);
  assign _zz_when_buff2conv_l136 = {16'd0, _zz_when_buff2conv_l136_1};
  `ifndef SYNTHESIS
  always @(*) begin
    case(read_req_fsm_stateReg)
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_BOOT : read_req_fsm_stateReg_string = "read_req_fsm_BOOT              ";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_IDLE : read_req_fsm_stateReg_string = "read_req_fsm_IDLE              ";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT : read_req_fsm_stateReg_string = "read_req_fsm_INIT              ";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_READ : read_req_fsm_stateReg_string = "read_req_fsm_READ              ";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_OUTPUT : read_req_fsm_stateReg_string = "read_req_fsm_OUTPUT            ";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_ADDR : read_req_fsm_stateReg_string = "read_req_fsm_UPDATA_ADDR       ";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_CONV_WINDOW : read_req_fsm_stateReg_string = "read_req_fsm_UPDATA_CONV_WINDOW";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CACU_ADDR : read_req_fsm_stateReg_string = "read_req_fsm_CACU_ADDR         ";
      default : read_req_fsm_stateReg_string = "???????????????????????????????";
    endcase
  end
  always @(*) begin
    case(read_req_fsm_stateNext)
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_BOOT : read_req_fsm_stateNext_string = "read_req_fsm_BOOT              ";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_IDLE : read_req_fsm_stateNext_string = "read_req_fsm_IDLE              ";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT : read_req_fsm_stateNext_string = "read_req_fsm_INIT              ";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_READ : read_req_fsm_stateNext_string = "read_req_fsm_READ              ";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_OUTPUT : read_req_fsm_stateNext_string = "read_req_fsm_OUTPUT            ";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_ADDR : read_req_fsm_stateNext_string = "read_req_fsm_UPDATA_ADDR       ";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_CONV_WINDOW : read_req_fsm_stateNext_string = "read_req_fsm_UPDATA_CONV_WINDOW";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CACU_ADDR : read_req_fsm_stateNext_string = "read_req_fsm_CACU_ADDR         ";
      default : read_req_fsm_stateNext_string = "???????????????????????????????";
    endcase
  end
  `endif

  assign cfg_ready = 1'b1;
  always @(*) begin
    read_en = 1'b0;
    case(read_req_fsm_stateReg)
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_IDLE : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_READ : begin
        read_en = 1'b1;
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_OUTPUT : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_CONV_WINDOW : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CACU_ADDR : begin
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    outvalid = 1'b0;
    case(read_req_fsm_stateReg)
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_IDLE : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_READ : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_OUTPUT : begin
        if(when_buff2conv_l124) begin
          outvalid = 1'b1;
        end
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_CONV_WINDOW : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CACU_ADDR : begin
      end
      default : begin
      end
    endcase
  end

  assign dt_ramrd_en = read_en;
  assign dt_ramrd_addr = dt_rd_addr;
  assign wire_wt_rden = read_en;
  assign wt_ramrd_0_en = wire_wt_rden;
  assign wt_ramrd_0_addr = wt_rd_addr;
  assign wt_ramrd_1_en = wire_wt_rden;
  assign wt_ramrd_1_addr = wt_rd_addr;
  assign wt_ramrd_2_en = wire_wt_rden;
  assign wt_ramrd_2_addr = wt_rd_addr;
  assign wt_ramrd_3_en = wire_wt_rden;
  assign wt_ramrd_3_addr = wt_rd_addr;
  assign wt_ramrd_4_en = wire_wt_rden;
  assign wt_ramrd_4_addr = wt_rd_addr;
  assign wt_ramrd_5_en = wire_wt_rden;
  assign wt_ramrd_5_addr = wt_rd_addr;
  assign wt_ramrd_6_en = wire_wt_rden;
  assign wt_ramrd_6_addr = wt_rd_addr;
  assign wt_ramrd_7_en = wire_wt_rden;
  assign wt_ramrd_7_addr = wt_rd_addr;
  assign o_ft_valid = outvalid;
  assign o_ft_payload = dt_rdata;
  assign wire_wt_ovalid = outvalid;
  assign o_wt_0_valid = wire_wt_ovalid;
  assign o_wt_0_payload = wt_rdata_0;
  assign o_wt_1_valid = wire_wt_ovalid;
  assign o_wt_1_payload = wt_rdata_1;
  assign o_wt_2_valid = wire_wt_ovalid;
  assign o_wt_2_payload = wt_rdata_2;
  assign o_wt_3_valid = wire_wt_ovalid;
  assign o_wt_3_payload = wt_rdata_3;
  assign o_wt_4_valid = wire_wt_ovalid;
  assign o_wt_4_payload = wt_rdata_4;
  assign o_wt_5_valid = wire_wt_ovalid;
  assign o_wt_5_payload = wt_rdata_5;
  assign o_wt_6_valid = wire_wt_ovalid;
  assign o_wt_6_payload = wt_rdata_6;
  assign o_wt_7_valid = wire_wt_ovalid;
  assign o_wt_7_payload = wt_rdata_7;
  assign wire_wt_oready = (((((((o_wt_0_ready && o_wt_1_ready) && o_wt_2_ready) && o_wt_3_ready) && o_wt_4_ready) && o_wt_5_ready) && o_wt_6_ready) && o_wt_7_ready);
  assign read_req_fsm_wantExit = 1'b0;
  always @(*) begin
    read_req_fsm_wantStart = 1'b0;
    case(read_req_fsm_stateReg)
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_IDLE : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_READ : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_OUTPUT : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_CONV_WINDOW : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CACU_ADDR : begin
      end
      default : begin
        read_req_fsm_wantStart = 1'b1;
      end
    endcase
  end

  assign read_req_fsm_wantKill = 1'b0;
  always @(*) begin
    read_req_fsm_stateNext = read_req_fsm_stateReg;
    case(read_req_fsm_stateReg)
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_IDLE : begin
        if(read_enable) begin
          read_req_fsm_stateNext = `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT;
        end
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT : begin
        read_req_fsm_stateNext = `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_READ;
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_READ : begin
        read_req_fsm_stateNext = `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_OUTPUT;
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_OUTPUT : begin
        if(when_buff2conv_l124) begin
          read_req_fsm_stateNext = `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_ADDR;
        end
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_ADDR : begin
        if(when_buff2conv_l131) begin
          read_req_fsm_stateNext = `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_CONV_WINDOW;
        end else begin
          if(when_buff2conv_l136) begin
            read_req_fsm_stateNext = `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CACU_ADDR;
          end else begin
            read_req_fsm_stateNext = `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CACU_ADDR;
          end
        end
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_CONV_WINDOW : begin
        if(when_buff2conv_l148) begin
          read_req_fsm_stateNext = `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_IDLE;
        end else begin
          if(when_buff2conv_l151) begin
            read_req_fsm_stateNext = `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CACU_ADDR;
          end else begin
            read_req_fsm_stateNext = `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CACU_ADDR;
          end
        end
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CACU_ADDR : begin
        read_req_fsm_stateNext = `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_READ;
      end
      default : begin
      end
    endcase
    if(read_req_fsm_wantStart) begin
      read_req_fsm_stateNext = `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_IDLE;
    end
    if(read_req_fsm_wantKill) begin
      read_req_fsm_stateNext = `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_BOOT;
    end
  end

  assign when_buff2conv_l124 = (o_ft_ready && wire_wt_oready);
  assign when_buff2conv_l131 = ((idy == _zz_when_buff2conv_l131) && (idx == _zz_when_buff2conv_l131_2));
  assign when_buff2conv_l136 = (idx == _zz_when_buff2conv_l136);
  assign when_buff2conv_l148 = ((window_posy == last_window_y) && (window_posx == last_window_x));
  assign when_buff2conv_l151 = (window_posx == last_window_x);
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      idx <= 32'h0;
      idy <= 32'h0;
      window_posx <= 32'h0;
      window_posy <= 32'h0;
      last_window_x <= 32'h0;
      last_window_y <= 32'h0;
      dt_rd_addr <= 32'h0;
      wt_rd_addr <= 32'h0;
      dt_rdata <= 2048'h0;
      wt_rdata_0 <= 2048'h0;
      wt_rdata_1 <= 2048'h0;
      wt_rdata_2 <= 2048'h0;
      wt_rdata_3 <= 2048'h0;
      wt_rdata_4 <= 2048'h0;
      wt_rdata_5 <= 2048'h0;
      wt_rdata_6 <= 2048'h0;
      wt_rdata_7 <= 2048'h0;
      read_req_fsm_stateReg <= `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_BOOT;
    end else begin
      last_window_y <= {16'd0, _zz_last_window_y};
      last_window_x <= {16'd0, _zz_last_window_x};
      dt_rd_addr <= _zz_dt_rd_addr[31:0];
      wt_rd_addr <= _zz_wt_rd_addr[31:0];
      read_req_fsm_stateReg <= read_req_fsm_stateNext;
      case(read_req_fsm_stateReg)
        `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_IDLE : begin
        end
        `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT : begin
          idx <= 32'h0;
          idy <= 32'h0;
          window_posx <= 32'h0;
          window_posy <= 32'h0;
        end
        `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_READ : begin
          dt_rdata <= dt_ramrd_data;
          wt_rdata_0 <= wt_ramrd_0_data;
          wt_rdata_1 <= wt_ramrd_1_data;
          wt_rdata_2 <= wt_ramrd_2_data;
          wt_rdata_3 <= wt_ramrd_3_data;
          wt_rdata_4 <= wt_ramrd_4_data;
          wt_rdata_5 <= wt_ramrd_5_data;
          wt_rdata_6 <= wt_ramrd_6_data;
          wt_rdata_7 <= wt_ramrd_7_data;
        end
        `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_OUTPUT : begin
        end
        `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_ADDR : begin
          if(when_buff2conv_l131) begin
            idx <= 32'h0;
            idy <= 32'h0;
          end else begin
            if(when_buff2conv_l136) begin
              idy <= (idy + 32'h00000001);
              idx <= 32'h0;
            end else begin
              idx <= (idx + 32'h00000001);
            end
          end
        end
        `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_CONV_WINDOW : begin
          if(!when_buff2conv_l148) begin
            if(when_buff2conv_l151) begin
              window_posx <= 32'h0;
              window_posy <= (window_posy + 32'h00000001);
            end else begin
              window_posx <= (window_posx + 32'h00000001);
            end
          end
        end
        `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CACU_ADDR : begin
        end
        default : begin
        end
      endcase
    end
  end

  always @(posedge clk) begin
    param_rd_dtBaseAddr <= cfg_payload_rd_dtBaseAddr;
    param_rd_wtBaseAddr <= cfg_payload_rd_wtBaseAddr;
    param_wr_delta_wt_BaseAddr <= cfg_payload_wr_delta_wt_BaseAddr;
    param_wr_sigma_BaseAddr <= cfg_payload_wr_sigma_BaseAddr;
    param_dtWidth <= cfg_payload_dtWidth;
    param_dtHeight <= cfg_payload_dtHeight;
    param_wtWidth <= cfg_payload_wtWidth;
    param_wtHeight <= cfg_payload_wtHeight;
    param_oWidth <= cfg_payload_oWidth;
    param_oHeight <= cfg_payload_oHeight;
  end


endmodule

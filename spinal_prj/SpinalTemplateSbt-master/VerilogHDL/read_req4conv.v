// Generator : SpinalHDL v1.5.0    git head : 83a031922866b078c411ec5529e00f1b6e79f8e7
// Component : read_req4conv
// Git hash  : b6ddb790d4fa4d692ba34f1fe5ea48377d442245


`define read_req_fsm_enumDefinition_binary_sequential_type [3:0]
`define read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_BOOT 4'b0000
`define read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_IDLE 4'b0001
`define read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT 4'b0010
`define read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_CONV_WINDOW 4'b0011
`define read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT_CONV_IDX 4'b0100
`define read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CACU_ADDR 4'b0101
`define read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_READ 4'b0110
`define read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_GET_DATA 4'b0111
`define read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_OUTPUT 4'b1000
`define read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_ADDR 4'b1001
`define read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CHECK 4'b1010
`define read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_JUDGE 4'b1011
`define read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_GEN_ADDR 4'b1100
`define read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_END 4'b1101


module read_req4conv (
  input      [15:0]   cfg_fea_width,
  input      [15:0]   cfg_fea_height,
  input      [15:0]   cfg_fea_channel,
  input      [15:0]   cfg_wt_width,
  input      [15:0]   cfg_wt_height,
  input      [15:0]   cfg_wt_channel,
  input      [15:0]   cfg_kerNum,
  input      [15:0]   cfg_o_width,
  input      [15:0]   cfg_o_height,
  input      [15:0]   cfg_o_channel,
  input      [15:0]   cfg_top_pad,
  input      [15:0]   cfg_bot_pad,
  input      [15:0]   cfg_left_pad,
  input      [15:0]   cfg_right_pad,
  input      [15:0]   cfg_dt_stridex,
  input      [15:0]   cfg_dt_stridey,
  input      [15:0]   cfg_wt_stridex,
  input      [15:0]   cfg_wt_stridey,
  output     [31:0]   dt_ramrd_addr,
  input      [255:0]  dt_ramrd_data,
  output reg          dt_ramrd_en,
  output     [31:0]   wt_ramrd_0_addr,
  input      [255:0]  wt_ramrd_0_data,
  output reg          wt_ramrd_0_en,
  output     [31:0]   wt_ramrd_1_addr,
  input      [255:0]  wt_ramrd_1_data,
  output reg          wt_ramrd_1_en,
  output     [31:0]   wt_ramrd_2_addr,
  input      [255:0]  wt_ramrd_2_data,
  output reg          wt_ramrd_2_en,
  output     [31:0]   wt_ramrd_3_addr,
  input      [255:0]  wt_ramrd_3_data,
  output reg          wt_ramrd_3_en,
  output     [31:0]   wt_ramrd_4_addr,
  input      [255:0]  wt_ramrd_4_data,
  output reg          wt_ramrd_4_en,
  output     [31:0]   wt_ramrd_5_addr,
  input      [255:0]  wt_ramrd_5_data,
  output reg          wt_ramrd_5_en,
  output     [31:0]   wt_ramrd_6_addr,
  input      [255:0]  wt_ramrd_6_data,
  output reg          wt_ramrd_6_en,
  output     [31:0]   wt_ramrd_7_addr,
  input      [255:0]  wt_ramrd_7_data,
  output reg          wt_ramrd_7_en,
  output reg          o_ft_valid,
  input               o_ft_ready,
  output     [255:0]  o_ft_payload,
  output              o_wt_0_valid,
  input               o_wt_0_ready,
  output     [255:0]  o_wt_0_payload,
  output              o_wt_1_valid,
  input               o_wt_1_ready,
  output     [255:0]  o_wt_1_payload,
  output              o_wt_2_valid,
  input               o_wt_2_ready,
  output     [255:0]  o_wt_2_payload,
  output              o_wt_3_valid,
  input               o_wt_3_ready,
  output     [255:0]  o_wt_3_payload,
  output              o_wt_4_valid,
  input               o_wt_4_ready,
  output     [255:0]  o_wt_4_payload,
  output              o_wt_5_valid,
  input               o_wt_5_ready,
  output     [255:0]  o_wt_5_payload,
  output              o_wt_6_valid,
  input               o_wt_6_ready,
  output     [255:0]  o_wt_6_payload,
  output              o_wt_7_valid,
  input               o_wt_7_ready,
  output     [255:0]  o_wt_7_payload,
  input               read_enable,
  input               clk,
  input               reset
);
  wire       [31:0]   _zz_posy;
  wire       [31:0]   _zz_posx;
  wire       [47:0]   _zz_wt_rd_addr;
  wire       [47:0]   _zz_wt_rd_addr_1;
  wire       [47:0]   _zz_wt_rd_addr_2;
  wire       [15:0]   _zz_when_read_req4conv_l148;
  wire       [15:0]   _zz_when_read_req4conv_l148_1;
  wire       [31:0]   _zz_dt_rd_addr;
  wire       [15:0]   _zz_dt_rd_addr_1;
  wire       [31:0]   _zz_dt_rd_addr_2;
  wire       [15:0]   _zz_dt_rd_addr_3;
  wire       [15:0]   _zz_when_read_req4conv_l155;
  wire       [15:0]   _zz_when_read_req4conv_l155_1;
  wire       [15:0]   _zz_when_read_req4conv_l166;
  wire       [15:0]   _zz_when_read_req4conv_l166_1;
  wire       [31:0]   _zz_when_read_req4conv_l129;
  wire       [31:0]   _zz_when_read_req4conv_l130;
  wire       [31:0]   _zz_when_read_req4conv_l133;
  reg        [31:0]   dt_rd_addr;
  reg        [31:0]   wt_rd_addr;
  reg        [255:0]  dt_rdata;
  reg        [255:0]  wt_rdata_0;
  reg        [255:0]  wt_rdata_1;
  reg        [255:0]  wt_rdata_2;
  reg        [255:0]  wt_rdata_3;
  reg        [255:0]  wt_rdata_4;
  reg        [255:0]  wt_rdata_5;
  reg        [255:0]  wt_rdata_6;
  reg        [255:0]  wt_rdata_7;
  wire                wire_wt_rden;
  reg                 wire_wt_ovalid;
  wire                wire_wt_oready;
  reg        [31:0]   stripe_x;
  reg        [31:0]   stripe_y;
  reg        [31:0]   atom_x;
  reg        [31:0]   atom_y;
  reg        [15:0]   param_fea_width;
  reg        [15:0]   param_fea_height;
  reg        [15:0]   param_fea_channel;
  reg        [15:0]   param_wt_width;
  reg        [15:0]   param_wt_height;
  reg        [15:0]   param_wt_channel;
  reg        [15:0]   param_kerNum;
  reg        [15:0]   param_o_width;
  reg        [15:0]   param_o_height;
  reg        [15:0]   param_o_channel;
  reg        [15:0]   param_top_pad;
  reg        [15:0]   param_bot_pad;
  reg        [15:0]   param_left_pad;
  reg        [15:0]   param_right_pad;
  reg        [15:0]   param_dt_stridex;
  reg        [15:0]   param_dt_stridey;
  reg        [15:0]   param_wt_stridex;
  reg        [15:0]   param_wt_stridey;
  wire       [15:0]   posx;
  wire       [15:0]   posy;
  wire                read_req_fsm_wantExit;
  reg                 read_req_fsm_wantStart;
  wire                read_req_fsm_wantKill;
  reg        `read_req_fsm_enumDefinition_binary_sequential_type read_req_fsm_stateReg;
  reg        `read_req_fsm_enumDefinition_binary_sequential_type read_req_fsm_stateNext;
  wire                when_read_req4conv_l102;
  wire                when_read_req4conv_l103;
  wire                when_read_req4conv_l110;
  wire                when_read_req4conv_l148;
  wire                when_read_req4conv_l155;
  wire                when_read_req4conv_l166;
  wire                when_read_req4conv_l179;
  wire                when_read_req4conv_l129;
  wire                when_read_req4conv_l130;
  wire                when_read_req4conv_l133;
  `ifndef SYNTHESIS
  reg [247:0] read_req_fsm_stateReg_string;
  reg [247:0] read_req_fsm_stateNext_string;
  `endif


  assign _zz_posy = (stripe_y + atom_y);
  assign _zz_posx = (stripe_x + atom_x);
  assign _zz_wt_rd_addr = (_zz_wt_rd_addr_1 + _zz_wt_rd_addr_2);
  assign _zz_wt_rd_addr_1 = (atom_y * param_wt_stridex);
  assign _zz_wt_rd_addr_2 = {16'd0, atom_x};
  assign _zz_when_read_req4conv_l148 = (param_top_pad + param_fea_height);
  assign _zz_when_read_req4conv_l148_1 = (param_left_pad + param_fea_width);
  assign _zz_dt_rd_addr = (_zz_dt_rd_addr_1 * param_fea_width);
  assign _zz_dt_rd_addr_1 = (posy - param_top_pad);
  assign _zz_dt_rd_addr_3 = (posx - param_left_pad);
  assign _zz_dt_rd_addr_2 = {16'd0, _zz_dt_rd_addr_3};
  assign _zz_when_read_req4conv_l155 = (param_top_pad + param_fea_height);
  assign _zz_when_read_req4conv_l155_1 = (param_left_pad + param_fea_width);
  assign _zz_when_read_req4conv_l166 = (param_top_pad + param_fea_height);
  assign _zz_when_read_req4conv_l166_1 = (param_left_pad + param_fea_width);
  assign _zz_when_read_req4conv_l129 = {16'd0, param_wt_stridey};
  assign _zz_when_read_req4conv_l130 = {16'd0, param_wt_stridex};
  assign _zz_when_read_req4conv_l133 = {16'd0, param_wt_stridex};
  `ifndef SYNTHESIS
  always @(*) begin
    case(read_req_fsm_stateReg)
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_BOOT : read_req_fsm_stateReg_string = "read_req_fsm_BOOT              ";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_IDLE : read_req_fsm_stateReg_string = "read_req_fsm_IDLE              ";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT : read_req_fsm_stateReg_string = "read_req_fsm_INIT              ";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_CONV_WINDOW : read_req_fsm_stateReg_string = "read_req_fsm_UPDATA_CONV_WINDOW";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT_CONV_IDX : read_req_fsm_stateReg_string = "read_req_fsm_INIT_CONV_IDX     ";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CACU_ADDR : read_req_fsm_stateReg_string = "read_req_fsm_CACU_ADDR         ";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_READ : read_req_fsm_stateReg_string = "read_req_fsm_READ              ";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_GET_DATA : read_req_fsm_stateReg_string = "read_req_fsm_GET_DATA          ";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_OUTPUT : read_req_fsm_stateReg_string = "read_req_fsm_OUTPUT            ";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_ADDR : read_req_fsm_stateReg_string = "read_req_fsm_UPDATA_ADDR       ";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CHECK : read_req_fsm_stateReg_string = "read_req_fsm_CHECK             ";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_JUDGE : read_req_fsm_stateReg_string = "read_req_fsm_JUDGE             ";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_GEN_ADDR : read_req_fsm_stateReg_string = "read_req_fsm_GEN_ADDR          ";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_END : read_req_fsm_stateReg_string = "read_req_fsm_END               ";
      default : read_req_fsm_stateReg_string = "???????????????????????????????";
    endcase
  end
  always @(*) begin
    case(read_req_fsm_stateNext)
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_BOOT : read_req_fsm_stateNext_string = "read_req_fsm_BOOT              ";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_IDLE : read_req_fsm_stateNext_string = "read_req_fsm_IDLE              ";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT : read_req_fsm_stateNext_string = "read_req_fsm_INIT              ";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_CONV_WINDOW : read_req_fsm_stateNext_string = "read_req_fsm_UPDATA_CONV_WINDOW";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT_CONV_IDX : read_req_fsm_stateNext_string = "read_req_fsm_INIT_CONV_IDX     ";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CACU_ADDR : read_req_fsm_stateNext_string = "read_req_fsm_CACU_ADDR         ";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_READ : read_req_fsm_stateNext_string = "read_req_fsm_READ              ";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_GET_DATA : read_req_fsm_stateNext_string = "read_req_fsm_GET_DATA          ";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_OUTPUT : read_req_fsm_stateNext_string = "read_req_fsm_OUTPUT            ";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_ADDR : read_req_fsm_stateNext_string = "read_req_fsm_UPDATA_ADDR       ";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CHECK : read_req_fsm_stateNext_string = "read_req_fsm_CHECK             ";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_JUDGE : read_req_fsm_stateNext_string = "read_req_fsm_JUDGE             ";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_GEN_ADDR : read_req_fsm_stateNext_string = "read_req_fsm_GEN_ADDR          ";
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_END : read_req_fsm_stateNext_string = "read_req_fsm_END               ";
      default : read_req_fsm_stateNext_string = "???????????????????????????????";
    endcase
  end
  `endif

  assign posy = _zz_posy[15:0];
  assign posx = _zz_posx[15:0];
  always @(*) begin
    dt_ramrd_en = 1'b0;
    case(read_req_fsm_stateReg)
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_IDLE : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_CONV_WINDOW : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT_CONV_IDX : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CACU_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_READ : begin
        if(when_read_req4conv_l155) begin
          dt_ramrd_en = 1'b1;
        end
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_GET_DATA : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_OUTPUT : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CHECK : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_JUDGE : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_GEN_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_END : begin
      end
      default : begin
      end
    endcase
  end

  assign dt_ramrd_addr = dt_rd_addr;
  assign wire_wt_rden = 1'b0;
  always @(*) begin
    wt_ramrd_0_en = wire_wt_rden;
    case(read_req_fsm_stateReg)
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_IDLE : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_CONV_WINDOW : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT_CONV_IDX : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CACU_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_READ : begin
        wt_ramrd_0_en = 1'b1;
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_GET_DATA : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_OUTPUT : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CHECK : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_JUDGE : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_GEN_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_END : begin
      end
      default : begin
      end
    endcase
  end

  assign wt_ramrd_0_addr = wt_rd_addr;
  always @(*) begin
    wt_ramrd_1_en = wire_wt_rden;
    case(read_req_fsm_stateReg)
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_IDLE : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_CONV_WINDOW : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT_CONV_IDX : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CACU_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_READ : begin
        wt_ramrd_1_en = 1'b1;
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_GET_DATA : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_OUTPUT : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CHECK : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_JUDGE : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_GEN_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_END : begin
      end
      default : begin
      end
    endcase
  end

  assign wt_ramrd_1_addr = wt_rd_addr;
  always @(*) begin
    wt_ramrd_2_en = wire_wt_rden;
    case(read_req_fsm_stateReg)
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_IDLE : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_CONV_WINDOW : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT_CONV_IDX : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CACU_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_READ : begin
        wt_ramrd_2_en = 1'b1;
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_GET_DATA : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_OUTPUT : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CHECK : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_JUDGE : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_GEN_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_END : begin
      end
      default : begin
      end
    endcase
  end

  assign wt_ramrd_2_addr = wt_rd_addr;
  always @(*) begin
    wt_ramrd_3_en = wire_wt_rden;
    case(read_req_fsm_stateReg)
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_IDLE : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_CONV_WINDOW : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT_CONV_IDX : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CACU_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_READ : begin
        wt_ramrd_3_en = 1'b1;
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_GET_DATA : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_OUTPUT : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CHECK : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_JUDGE : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_GEN_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_END : begin
      end
      default : begin
      end
    endcase
  end

  assign wt_ramrd_3_addr = wt_rd_addr;
  always @(*) begin
    wt_ramrd_4_en = wire_wt_rden;
    case(read_req_fsm_stateReg)
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_IDLE : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_CONV_WINDOW : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT_CONV_IDX : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CACU_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_READ : begin
        wt_ramrd_4_en = 1'b1;
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_GET_DATA : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_OUTPUT : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CHECK : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_JUDGE : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_GEN_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_END : begin
      end
      default : begin
      end
    endcase
  end

  assign wt_ramrd_4_addr = wt_rd_addr;
  always @(*) begin
    wt_ramrd_5_en = wire_wt_rden;
    case(read_req_fsm_stateReg)
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_IDLE : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_CONV_WINDOW : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT_CONV_IDX : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CACU_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_READ : begin
        wt_ramrd_5_en = 1'b1;
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_GET_DATA : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_OUTPUT : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CHECK : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_JUDGE : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_GEN_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_END : begin
      end
      default : begin
      end
    endcase
  end

  assign wt_ramrd_5_addr = wt_rd_addr;
  always @(*) begin
    wt_ramrd_6_en = wire_wt_rden;
    case(read_req_fsm_stateReg)
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_IDLE : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_CONV_WINDOW : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT_CONV_IDX : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CACU_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_READ : begin
        wt_ramrd_6_en = 1'b1;
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_GET_DATA : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_OUTPUT : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CHECK : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_JUDGE : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_GEN_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_END : begin
      end
      default : begin
      end
    endcase
  end

  assign wt_ramrd_6_addr = wt_rd_addr;
  always @(*) begin
    wt_ramrd_7_en = wire_wt_rden;
    case(read_req_fsm_stateReg)
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_IDLE : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_CONV_WINDOW : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT_CONV_IDX : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CACU_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_READ : begin
        wt_ramrd_7_en = 1'b1;
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_GET_DATA : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_OUTPUT : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CHECK : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_JUDGE : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_GEN_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_END : begin
      end
      default : begin
      end
    endcase
  end

  assign wt_ramrd_7_addr = wt_rd_addr;
  always @(*) begin
    o_ft_valid = 1'b0;
    case(read_req_fsm_stateReg)
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_IDLE : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_CONV_WINDOW : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT_CONV_IDX : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CACU_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_READ : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_GET_DATA : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_OUTPUT : begin
        if(when_read_req4conv_l179) begin
          o_ft_valid = 1'b1;
        end
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CHECK : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_JUDGE : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_GEN_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_END : begin
      end
      default : begin
      end
    endcase
  end

  assign o_ft_payload = dt_rdata;
  always @(*) begin
    wire_wt_ovalid = 1'b0;
    case(read_req_fsm_stateReg)
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_IDLE : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_CONV_WINDOW : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT_CONV_IDX : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CACU_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_READ : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_GET_DATA : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_OUTPUT : begin
        if(when_read_req4conv_l179) begin
          wire_wt_ovalid = 1'b1;
        end
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CHECK : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_JUDGE : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_GEN_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_END : begin
      end
      default : begin
      end
    endcase
  end

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
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_CONV_WINDOW : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT_CONV_IDX : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CACU_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_READ : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_GET_DATA : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_OUTPUT : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CHECK : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_JUDGE : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_GEN_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_END : begin
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
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_CONV_WINDOW : begin
        if(when_read_req4conv_l102) begin
          if(when_read_req4conv_l103) begin
            read_req_fsm_stateNext = `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_IDLE;
          end else begin
            read_req_fsm_stateNext = `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT_CONV_IDX;
          end
        end else begin
          if(when_read_req4conv_l110) begin
            read_req_fsm_stateNext = `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT_CONV_IDX;
          end else begin
            read_req_fsm_stateNext = `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT_CONV_IDX;
          end
        end
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT_CONV_IDX : begin
        read_req_fsm_stateNext = `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_ADDR;
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CACU_ADDR : begin
        read_req_fsm_stateNext = `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_READ;
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_READ : begin
        read_req_fsm_stateNext = `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_GET_DATA;
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_GET_DATA : begin
        read_req_fsm_stateNext = `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_OUTPUT;
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_OUTPUT : begin
        if(when_read_req4conv_l179) begin
          read_req_fsm_stateNext = `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_ADDR;
        end
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_ADDR : begin
        if(when_read_req4conv_l129) begin
          if(when_read_req4conv_l130) begin
            read_req_fsm_stateNext = `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_CONV_WINDOW;
          end else begin
            if(when_read_req4conv_l133) begin
              read_req_fsm_stateNext = `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_READ;
            end else begin
              read_req_fsm_stateNext = `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_READ;
            end
          end
        end
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CHECK : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_JUDGE : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_GEN_ADDR : begin
      end
      `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_END : begin
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

  assign when_read_req4conv_l102 = (posy == param_dt_stridey);
  assign when_read_req4conv_l103 = (posx == param_dt_stridex);
  assign when_read_req4conv_l110 = (posx == param_dt_stridex);
  assign when_read_req4conv_l148 = ((((param_top_pad <= posy) && (posy < _zz_when_read_req4conv_l148)) && (param_left_pad <= posx)) && (posx < _zz_when_read_req4conv_l148_1));
  assign when_read_req4conv_l155 = ((((param_top_pad <= posy) && (posy < _zz_when_read_req4conv_l155)) && (param_left_pad <= posx)) && (posx < _zz_when_read_req4conv_l155_1));
  assign when_read_req4conv_l166 = ((((param_top_pad <= posy) && (posy < _zz_when_read_req4conv_l166)) && (param_left_pad <= posx)) && (posx < _zz_when_read_req4conv_l166_1));
  assign when_read_req4conv_l179 = ((o_ft_ready == 1'b1) && (wire_wt_oready == 1'b1));
  assign when_read_req4conv_l129 = (atom_y == _zz_when_read_req4conv_l129);
  assign when_read_req4conv_l130 = (atom_x == _zz_when_read_req4conv_l130);
  assign when_read_req4conv_l133 = (atom_x == _zz_when_read_req4conv_l133);
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      dt_rd_addr <= 32'h0;
      wt_rd_addr <= 32'h0;
      dt_rdata <= 256'h0;
      wt_rdata_0 <= 256'h0;
      wt_rdata_1 <= 256'h0;
      wt_rdata_2 <= 256'h0;
      wt_rdata_3 <= 256'h0;
      wt_rdata_4 <= 256'h0;
      wt_rdata_5 <= 256'h0;
      wt_rdata_6 <= 256'h0;
      wt_rdata_7 <= 256'h0;
      stripe_x <= 32'h0;
      stripe_y <= 32'h0;
      atom_x <= 32'h0;
      atom_y <= 32'h0;
      read_req_fsm_stateReg <= `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_BOOT;
    end else begin
      read_req_fsm_stateReg <= read_req_fsm_stateNext;
      case(read_req_fsm_stateReg)
        `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_IDLE : begin
        end
        `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT : begin
          stripe_x <= 32'h0;
          stripe_y <= 32'h0;
          atom_x <= 32'h0;
          atom_y <= 32'h0;
        end
        `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_UPDATA_CONV_WINDOW : begin
          if(when_read_req4conv_l102) begin
            if(!when_read_req4conv_l103) begin
              stripe_x <= (stripe_x + 32'h00000001);
            end
          end else begin
            if(when_read_req4conv_l110) begin
              stripe_x <= 32'h0;
              stripe_y <= (stripe_y + 32'h00000001);
            end else begin
              stripe_x <= (stripe_x + 32'h00000001);
            end
          end
        end
        `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_INIT_CONV_IDX : begin
          atom_x <= 32'h0;
          atom_y <= 32'h0;
        end
        `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CACU_ADDR : begin
          wt_rd_addr <= _zz_wt_rd_addr[31:0];
          if(when_read_req4conv_l148) begin
            dt_rd_addr <= (_zz_dt_rd_addr + _zz_dt_rd_addr_2);
          end
        end
        `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_READ : begin
        end
        `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_GET_DATA : begin
          if(when_read_req4conv_l166) begin
            dt_rdata <= dt_ramrd_data;
          end else begin
            dt_rdata <= 256'h0;
          end
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
          if(when_read_req4conv_l129) begin
            if(!when_read_req4conv_l130) begin
              if(when_read_req4conv_l133) begin
                atom_x <= 32'h0;
                atom_y <= (atom_y + 32'h00000001);
              end else begin
                atom_x <= (atom_x + 32'h00000001);
              end
            end
          end
        end
        `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_CHECK : begin
        end
        `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_JUDGE : begin
        end
        `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_GEN_ADDR : begin
        end
        `read_req_fsm_enumDefinition_binary_sequential_read_req_fsm_END : begin
        end
        default : begin
        end
      endcase
    end
  end

  always @(posedge clk) begin
    param_fea_width <= cfg_fea_width;
    param_fea_height <= cfg_fea_height;
    param_fea_channel <= cfg_fea_channel;
    param_wt_width <= cfg_wt_width;
    param_wt_height <= cfg_wt_height;
    param_wt_channel <= cfg_wt_channel;
    param_kerNum <= cfg_kerNum;
    param_o_width <= cfg_o_width;
    param_o_height <= cfg_o_height;
    param_o_channel <= cfg_o_channel;
    param_top_pad <= cfg_top_pad;
    param_bot_pad <= cfg_bot_pad;
    param_left_pad <= cfg_left_pad;
    param_right_pad <= cfg_right_pad;
    param_dt_stridex <= cfg_dt_stridex;
    param_dt_stridey <= cfg_dt_stridey;
    param_wt_stridex <= cfg_wt_stridex;
    param_wt_stridey <= cfg_wt_stridey;
  end


endmodule

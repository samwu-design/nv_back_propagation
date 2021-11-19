// Generator : SpinalHDL v1.5.0    git head : 83a031922866b078c411ec5529e00f1b6e79f8e7
// Component : dmaReadCtrl
// Git hash  : f99307f675316b78017cfae770061c1acdfbffb7


`define dma_ctrl_fsm_enumDefinition_binary_sequential_type [2:0]
`define dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_BOOT 3'b000
`define dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_IDLE 3'b001
`define dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_GET_PARAM 3'b010
`define dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_READ_DT 3'b011
`define dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_CHECK_DT 3'b100
`define dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_READ_WT 3'b101
`define dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_CHECK_WT 3'b110
`define dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_END 3'b111

`define dma_rd_fsm_enumDefinition_binary_sequential_type [1:0]
`define dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_BOOT 2'b00
`define dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_IDLE 2'b01
`define dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_AR 2'b10
`define dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_R 2'b11


module dmaReadCtrl (
  output              axim_ar_valid,
  input               axim_ar_ready,
  output     [63:0]   axim_ar_payload_addr,
  output     [7:0]    axim_ar_payload_id,
  output     [7:0]    axim_ar_payload_len,
  output     [2:0]    axim_ar_payload_size,
  output     [1:0]    axim_ar_payload_burst,
  input               axim_r_valid,
  output              axim_r_ready,
  input      [255:0]  axim_r_payload_data,
  input      [7:0]    axim_r_payload_id,
  input      [1:0]    axim_r_payload_resp,
  input               axim_r_payload_last,
  input      [63:0]   cfg_dtBaseAddr,
  input      [63:0]   cfg_wtBaseAddr,
  input      [15:0]   cfg_dtWidth,
  input      [15:0]   cfg_dtHeight,
  input      [15:0]   cfg_wtWidth,
  input      [15:0]   cfg_wtHeight,
  output              output_valid,
  input               output_ready,
  output     [255:0]  output_payload,
  input               enable,
  output reg          isIdle,
  input               clk,
  input               reset
);
  reg                 dma_rd_enable;
  wire                dma_rd_axim_ar_valid;
  wire       [63:0]   dma_rd_axim_ar_payload_addr;
  wire       [7:0]    dma_rd_axim_ar_payload_id;
  wire       [7:0]    dma_rd_axim_ar_payload_len;
  wire       [2:0]    dma_rd_axim_ar_payload_size;
  wire       [1:0]    dma_rd_axim_ar_payload_burst;
  wire                dma_rd_axim_r_ready;
  wire                dma_rd_output_valid;
  wire       [255:0]  dma_rd_output_payload;
  wire                dma_rd_isIdle;
  reg        [63:0]   par_dtBaseAddr;
  reg        [63:0]   par_wtBaseAddr;
  reg        [15:0]   par_dtWidth;
  reg        [15:0]   par_dtHeight;
  reg        [15:0]   par_wtWidth;
  reg        [15:0]   par_wtHeight;
  reg        [7:0]    burstlen;
  reg        [63:0]   BaseAddr;
  reg        [15:0]   dt_wcnt;
  reg        [15:0]   dt_vcnt;
  reg        [15:0]   wt_wcnt;
  reg        [15:0]   wt_vcnt;
  wire                dma_ctrl_fsm_wantExit;
  reg                 dma_ctrl_fsm_wantStart;
  wire                dma_ctrl_fsm_wantKill;
  reg        `dma_ctrl_fsm_enumDefinition_binary_sequential_type dma_ctrl_fsm_stateReg;
  reg        `dma_ctrl_fsm_enumDefinition_binary_sequential_type dma_ctrl_fsm_stateNext;
  wire                when_dmaReadCtrl_l69;
  wire                when_dmaReadCtrl_l83;
  wire                when_dmaReadCtrl_l85;
  wire                when_dmaReadCtrl_l96;
  wire                when_dmaReadCtrl_l97;
  wire                when_dmaReadCtrl_l108;
  wire                when_dmaReadCtrl_l111;
  wire                when_dmaReadCtrl_l123;
  wire                when_dmaReadCtrl_l124;
  `ifndef SYNTHESIS
  reg [175:0] dma_ctrl_fsm_stateReg_string;
  reg [175:0] dma_ctrl_fsm_stateNext_string;
  `endif


  dma_read dma_rd (
    .axim_ar_valid            (dma_rd_axim_ar_valid          ), //o
    .axim_ar_ready            (axim_ar_ready                 ), //i
    .axim_ar_payload_addr     (dma_rd_axim_ar_payload_addr   ), //o
    .axim_ar_payload_id       (dma_rd_axim_ar_payload_id     ), //o
    .axim_ar_payload_len      (dma_rd_axim_ar_payload_len    ), //o
    .axim_ar_payload_size     (dma_rd_axim_ar_payload_size   ), //o
    .axim_ar_payload_burst    (dma_rd_axim_ar_payload_burst  ), //o
    .axim_r_valid             (axim_r_valid                  ), //i
    .axim_r_ready             (dma_rd_axim_r_ready           ), //o
    .axim_r_payload_data      (axim_r_payload_data           ), //i
    .axim_r_payload_id        (axim_r_payload_id             ), //i
    .axim_r_payload_resp      (axim_r_payload_resp           ), //i
    .axim_r_payload_last      (axim_r_payload_last           ), //i
    .rd_para_BaseAddr         (BaseAddr                      ), //i
    .rd_para_burstlen         (burstlen                      ), //i
    .output_valid             (dma_rd_output_valid           ), //o
    .output_ready             (output_ready                  ), //i
    .output_payload           (dma_rd_output_payload         ), //o
    .enable                   (dma_rd_enable                 ), //i
    .isIdle                   (dma_rd_isIdle                 ), //o
    .clk                      (clk                           ), //i
    .reset                    (reset                         )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(dma_ctrl_fsm_stateReg)
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_BOOT : dma_ctrl_fsm_stateReg_string = "dma_ctrl_fsm_BOOT     ";
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_IDLE : dma_ctrl_fsm_stateReg_string = "dma_ctrl_fsm_IDLE     ";
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_GET_PARAM : dma_ctrl_fsm_stateReg_string = "dma_ctrl_fsm_GET_PARAM";
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_READ_DT : dma_ctrl_fsm_stateReg_string = "dma_ctrl_fsm_READ_DT  ";
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_CHECK_DT : dma_ctrl_fsm_stateReg_string = "dma_ctrl_fsm_CHECK_DT ";
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_READ_WT : dma_ctrl_fsm_stateReg_string = "dma_ctrl_fsm_READ_WT  ";
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_CHECK_WT : dma_ctrl_fsm_stateReg_string = "dma_ctrl_fsm_CHECK_WT ";
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_END : dma_ctrl_fsm_stateReg_string = "dma_ctrl_fsm_END      ";
      default : dma_ctrl_fsm_stateReg_string = "??????????????????????";
    endcase
  end
  always @(*) begin
    case(dma_ctrl_fsm_stateNext)
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_BOOT : dma_ctrl_fsm_stateNext_string = "dma_ctrl_fsm_BOOT     ";
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_IDLE : dma_ctrl_fsm_stateNext_string = "dma_ctrl_fsm_IDLE     ";
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_GET_PARAM : dma_ctrl_fsm_stateNext_string = "dma_ctrl_fsm_GET_PARAM";
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_READ_DT : dma_ctrl_fsm_stateNext_string = "dma_ctrl_fsm_READ_DT  ";
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_CHECK_DT : dma_ctrl_fsm_stateNext_string = "dma_ctrl_fsm_CHECK_DT ";
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_READ_WT : dma_ctrl_fsm_stateNext_string = "dma_ctrl_fsm_READ_WT  ";
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_CHECK_WT : dma_ctrl_fsm_stateNext_string = "dma_ctrl_fsm_CHECK_WT ";
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_END : dma_ctrl_fsm_stateNext_string = "dma_ctrl_fsm_END      ";
      default : dma_ctrl_fsm_stateNext_string = "??????????????????????";
    endcase
  end
  `endif

  always @(*) begin
    isIdle = 1'b0;
    case(dma_ctrl_fsm_stateReg)
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_IDLE : begin
        isIdle = 1'b1;
      end
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_GET_PARAM : begin
      end
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_READ_DT : begin
      end
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_CHECK_DT : begin
      end
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_READ_WT : begin
      end
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_CHECK_WT : begin
      end
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_END : begin
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    dma_rd_enable = 1'b0;
    case(dma_ctrl_fsm_stateReg)
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_IDLE : begin
      end
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_GET_PARAM : begin
      end
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_READ_DT : begin
        if(when_dmaReadCtrl_l83) begin
          dma_rd_enable = 1'b1;
        end
      end
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_CHECK_DT : begin
      end
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_READ_WT : begin
        if(when_dmaReadCtrl_l108) begin
          dma_rd_enable = 1'b1;
        end
      end
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_CHECK_WT : begin
      end
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_END : begin
      end
      default : begin
      end
    endcase
  end

  assign axim_ar_valid = dma_rd_axim_ar_valid;
  assign axim_ar_payload_addr = dma_rd_axim_ar_payload_addr;
  assign axim_ar_payload_id = dma_rd_axim_ar_payload_id;
  assign axim_ar_payload_len = dma_rd_axim_ar_payload_len;
  assign axim_ar_payload_size = dma_rd_axim_ar_payload_size;
  assign axim_ar_payload_burst = dma_rd_axim_ar_payload_burst;
  assign axim_r_ready = dma_rd_axim_r_ready;
  assign output_valid = dma_rd_output_valid;
  assign output_payload = dma_rd_output_payload;
  assign dma_ctrl_fsm_wantExit = 1'b0;
  always @(*) begin
    dma_ctrl_fsm_wantStart = 1'b0;
    case(dma_ctrl_fsm_stateReg)
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_IDLE : begin
      end
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_GET_PARAM : begin
      end
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_READ_DT : begin
      end
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_CHECK_DT : begin
      end
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_READ_WT : begin
      end
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_CHECK_WT : begin
      end
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_END : begin
      end
      default : begin
        dma_ctrl_fsm_wantStart = 1'b1;
      end
    endcase
  end

  assign dma_ctrl_fsm_wantKill = 1'b0;
  always @(*) begin
    dma_ctrl_fsm_stateNext = dma_ctrl_fsm_stateReg;
    case(dma_ctrl_fsm_stateReg)
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_IDLE : begin
        if(when_dmaReadCtrl_l69) begin
          dma_ctrl_fsm_stateNext = `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_GET_PARAM;
        end
      end
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_GET_PARAM : begin
        dma_ctrl_fsm_stateNext = `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_READ_DT;
      end
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_READ_DT : begin
        if(when_dmaReadCtrl_l83) begin
          dma_ctrl_fsm_stateNext = `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_CHECK_DT;
        end
      end
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_CHECK_DT : begin
        if(when_dmaReadCtrl_l96) begin
          if(when_dmaReadCtrl_l97) begin
            dma_ctrl_fsm_stateNext = `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_READ_WT;
          end else begin
            dma_ctrl_fsm_stateNext = `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_READ_DT;
          end
        end
      end
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_READ_WT : begin
        if(when_dmaReadCtrl_l108) begin
          dma_ctrl_fsm_stateNext = `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_CHECK_WT;
        end
      end
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_CHECK_WT : begin
        if(when_dmaReadCtrl_l123) begin
          if(when_dmaReadCtrl_l124) begin
            dma_ctrl_fsm_stateNext = `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_END;
          end else begin
            dma_ctrl_fsm_stateNext = `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_READ_WT;
          end
        end
      end
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_END : begin
        dma_ctrl_fsm_stateNext = `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_IDLE;
      end
      default : begin
      end
    endcase
    if(dma_ctrl_fsm_wantStart) begin
      dma_ctrl_fsm_stateNext = `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_IDLE;
    end
    if(dma_ctrl_fsm_wantKill) begin
      dma_ctrl_fsm_stateNext = `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_BOOT;
    end
  end

  assign when_dmaReadCtrl_l69 = (enable == 1'b1);
  assign when_dmaReadCtrl_l83 = (dma_rd_isIdle == 1'b1);
  assign when_dmaReadCtrl_l85 = (dt_wcnt == par_dtWidth);
  assign when_dmaReadCtrl_l96 = (dma_rd_isIdle == 1'b1);
  assign when_dmaReadCtrl_l97 = ((dt_vcnt == par_dtHeight) && (dt_wcnt == par_dtWidth));
  assign when_dmaReadCtrl_l108 = (dma_rd_isIdle == 1'b1);
  assign when_dmaReadCtrl_l111 = (wt_wcnt == par_wtWidth);
  assign when_dmaReadCtrl_l123 = (dma_rd_isIdle == 1'b1);
  assign when_dmaReadCtrl_l124 = ((wt_vcnt == par_wtHeight) && (dt_wcnt == par_wtWidth));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      burstlen <= 8'h0;
      BaseAddr <= 64'h0;
      dt_wcnt <= 16'h0;
      dt_vcnt <= 16'h0;
      wt_wcnt <= 16'h0;
      wt_vcnt <= 16'h0;
      dma_ctrl_fsm_stateReg <= `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_BOOT;
    end else begin
      dma_ctrl_fsm_stateReg <= dma_ctrl_fsm_stateNext;
      case(dma_ctrl_fsm_stateReg)
        `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_IDLE : begin
          dt_wcnt <= 16'h0;
          dt_vcnt <= 16'h0;
          wt_wcnt <= 16'h0;
          wt_vcnt <= 16'h0;
        end
        `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_GET_PARAM : begin
        end
        `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_READ_DT : begin
          burstlen <= par_dtWidth[7:0];
          BaseAddr <= par_dtBaseAddr;
          if(when_dmaReadCtrl_l83) begin
            if(when_dmaReadCtrl_l85) begin
              dt_vcnt <= (dt_vcnt + 16'h0001);
              dt_wcnt <= 16'h0;
            end else begin
              dt_wcnt <= (dt_wcnt + 16'h0001);
            end
          end
        end
        `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_CHECK_DT : begin
        end
        `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_READ_WT : begin
          burstlen <= par_wtWidth[7:0];
          BaseAddr <= par_wtBaseAddr;
          if(when_dmaReadCtrl_l108) begin
            if(when_dmaReadCtrl_l111) begin
              wt_vcnt <= (wt_vcnt + 16'h0001);
              wt_wcnt <= 16'h0;
            end else begin
              wt_wcnt <= (wt_wcnt + 16'h0001);
            end
          end
        end
        `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_CHECK_WT : begin
        end
        `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_END : begin
        end
        default : begin
        end
      endcase
    end
  end

  always @(posedge clk) begin
    case(dma_ctrl_fsm_stateReg)
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_IDLE : begin
      end
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_GET_PARAM : begin
        par_dtBaseAddr <= cfg_dtBaseAddr;
        par_wtBaseAddr <= cfg_wtBaseAddr;
        par_dtWidth <= cfg_dtWidth;
        par_dtHeight <= cfg_dtHeight;
        par_wtWidth <= cfg_wtWidth;
        par_wtHeight <= cfg_wtHeight;
      end
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_READ_DT : begin
      end
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_CHECK_DT : begin
      end
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_READ_WT : begin
      end
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_CHECK_WT : begin
      end
      `dma_ctrl_fsm_enumDefinition_binary_sequential_dma_ctrl_fsm_END : begin
      end
      default : begin
      end
    endcase
  end


endmodule

module dma_read (
  output reg          axim_ar_valid,
  input               axim_ar_ready,
  output     [63:0]   axim_ar_payload_addr,
  output     [7:0]    axim_ar_payload_id,
  output     [7:0]    axim_ar_payload_len,
  output     [2:0]    axim_ar_payload_size,
  output     [1:0]    axim_ar_payload_burst,
  input               axim_r_valid,
  output reg          axim_r_ready,
  input      [255:0]  axim_r_payload_data,
  input      [7:0]    axim_r_payload_id,
  input      [1:0]    axim_r_payload_resp,
  input               axim_r_payload_last,
  input      [63:0]   rd_para_BaseAddr,
  input      [7:0]    rd_para_burstlen,
  output              output_valid,
  input               output_ready,
  output     [255:0]  output_payload,
  input               enable,
  output reg          isIdle,
  input               clk,
  input               reset
);
  wire                fifo_io_push_valid;
  wire       [255:0]  fifo_io_push_payload;
  wire                fifo_io_push_ready;
  wire                fifo_io_pop_valid;
  wire       [255:0]  fifo_io_pop_payload;
  wire       [4:0]    fifo_io_occupancy;
  wire       [4:0]    fifo_io_availability;
  reg        [63:0]   param_BaseAddr;
  reg        [7:0]    param_burstlen;
  wire                dma_rd_fsm_wantExit;
  reg                 dma_rd_fsm_wantStart;
  wire                dma_rd_fsm_wantKill;
  reg        `dma_rd_fsm_enumDefinition_binary_sequential_type dma_rd_fsm_stateReg;
  reg        `dma_rd_fsm_enumDefinition_binary_sequential_type dma_rd_fsm_stateNext;
  wire                when_dma_read_l62;
  wire                when_dma_read_l69;
  wire                when_dma_read_l76;
  wire                when_dma_read_l77;
  `ifndef SYNTHESIS
  reg [119:0] dma_rd_fsm_stateReg_string;
  reg [119:0] dma_rd_fsm_stateNext_string;
  `endif


  StreamFifo fifo (
    .io_push_valid      (fifo_io_push_valid    ), //i
    .io_push_ready      (fifo_io_push_ready    ), //o
    .io_push_payload    (fifo_io_push_payload  ), //i
    .io_pop_valid       (fifo_io_pop_valid     ), //o
    .io_pop_ready       (output_ready          ), //i
    .io_pop_payload     (fifo_io_pop_payload   ), //o
    .io_flush           (1'b0                  ), //i
    .io_occupancy       (fifo_io_occupancy     ), //o
    .io_availability    (fifo_io_availability  ), //o
    .clk                (clk                   ), //i
    .reset              (reset                 )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(dma_rd_fsm_stateReg)
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_BOOT : dma_rd_fsm_stateReg_string = "dma_rd_fsm_BOOT";
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_IDLE : dma_rd_fsm_stateReg_string = "dma_rd_fsm_IDLE";
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_AR : dma_rd_fsm_stateReg_string = "dma_rd_fsm_AR  ";
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_R : dma_rd_fsm_stateReg_string = "dma_rd_fsm_R   ";
      default : dma_rd_fsm_stateReg_string = "???????????????";
    endcase
  end
  always @(*) begin
    case(dma_rd_fsm_stateNext)
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_BOOT : dma_rd_fsm_stateNext_string = "dma_rd_fsm_BOOT";
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_IDLE : dma_rd_fsm_stateNext_string = "dma_rd_fsm_IDLE";
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_AR : dma_rd_fsm_stateNext_string = "dma_rd_fsm_AR  ";
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_R : dma_rd_fsm_stateNext_string = "dma_rd_fsm_R   ";
      default : dma_rd_fsm_stateNext_string = "???????????????";
    endcase
  end
  `endif

  assign output_valid = fifo_io_pop_valid;
  assign output_payload = fifo_io_pop_payload;
  assign axim_ar_payload_addr = param_BaseAddr;
  assign axim_ar_payload_burst = 2'b01;
  assign axim_ar_payload_size = 3'b101;
  assign axim_ar_payload_len = param_burstlen;
  assign axim_ar_payload_id = 8'h0;
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
        axim_r_ready = fifo_io_push_ready;
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    isIdle = 1'b0;
    case(dma_rd_fsm_stateReg)
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_IDLE : begin
        isIdle = 1'b1;
      end
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_AR : begin
      end
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_R : begin
      end
      default : begin
      end
    endcase
  end

  assign fifo_io_push_payload = axim_r_payload_data;
  assign fifo_io_push_valid = (axim_r_valid && axim_r_ready);
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
        if(when_dma_read_l62) begin
          dma_rd_fsm_stateNext = `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_AR;
        end
      end
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_AR : begin
        if(when_dma_read_l69) begin
          dma_rd_fsm_stateNext = `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_R;
        end
      end
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_R : begin
        if(when_dma_read_l76) begin
          if(when_dma_read_l77) begin
            dma_rd_fsm_stateNext = `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_IDLE;
          end
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

  assign when_dma_read_l62 = (enable == 1'b1);
  assign when_dma_read_l69 = ((axim_ar_valid == 1'b1) && (axim_ar_ready == 1'b1));
  assign when_dma_read_l76 = ((axim_r_ready == 1'b1) && (axim_r_valid == 1'b1));
  assign when_dma_read_l77 = (axim_r_payload_last == 1'b1);
  always @(posedge clk) begin
    param_BaseAddr <= rd_para_BaseAddr;
    param_burstlen <= rd_para_burstlen;
  end

  always @(posedge clk or posedge reset) begin
    if(reset) begin
      dma_rd_fsm_stateReg <= `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_BOOT;
    end else begin
      dma_rd_fsm_stateReg <= dma_rd_fsm_stateNext;
    end
  end


endmodule

module StreamFifo (
  input               io_push_valid,
  output              io_push_ready,
  input      [255:0]  io_push_payload,
  output              io_pop_valid,
  input               io_pop_ready,
  output     [255:0]  io_pop_payload,
  input               io_flush,
  output     [4:0]    io_occupancy,
  output     [4:0]    io_availability,
  input               clk,
  input               reset
);
  reg        [255:0]  _zz_logic_ram_port0;
  wire       [3:0]    _zz_logic_pushPtr_valueNext;
  wire       [0:0]    _zz_logic_pushPtr_valueNext_1;
  wire       [3:0]    _zz_logic_popPtr_valueNext;
  wire       [0:0]    _zz_logic_popPtr_valueNext_1;
  wire                _zz_logic_ram_port;
  wire                _zz_io_pop_payload;
  wire       [255:0]  _zz_logic_ram_port_1;
  wire       [3:0]    _zz_io_availability;
  reg                 _zz_1;
  reg                 logic_pushPtr_willIncrement;
  reg                 logic_pushPtr_willClear;
  reg        [3:0]    logic_pushPtr_valueNext;
  reg        [3:0]    logic_pushPtr_value;
  wire                logic_pushPtr_willOverflowIfInc;
  wire                logic_pushPtr_willOverflow;
  reg                 logic_popPtr_willIncrement;
  reg                 logic_popPtr_willClear;
  reg        [3:0]    logic_popPtr_valueNext;
  reg        [3:0]    logic_popPtr_value;
  wire                logic_popPtr_willOverflowIfInc;
  wire                logic_popPtr_willOverflow;
  wire                logic_ptrMatch;
  reg                 logic_risingOccupancy;
  wire                logic_pushing;
  wire                logic_popping;
  wire                logic_empty;
  wire                logic_full;
  reg                 _zz_io_pop_valid;
  wire                when_Stream_l955;
  wire       [3:0]    logic_ptrDif;
  reg [255:0] logic_ram [0:15];

  assign _zz_logic_pushPtr_valueNext_1 = logic_pushPtr_willIncrement;
  assign _zz_logic_pushPtr_valueNext = {3'd0, _zz_logic_pushPtr_valueNext_1};
  assign _zz_logic_popPtr_valueNext_1 = logic_popPtr_willIncrement;
  assign _zz_logic_popPtr_valueNext = {3'd0, _zz_logic_popPtr_valueNext_1};
  assign _zz_io_availability = (logic_popPtr_value - logic_pushPtr_value);
  assign _zz_io_pop_payload = 1'b1;
  assign _zz_logic_ram_port_1 = io_push_payload;
  always @(posedge clk) begin
    if(_zz_io_pop_payload) begin
      _zz_logic_ram_port0 <= logic_ram[logic_popPtr_valueNext];
    end
  end

  always @(posedge clk) begin
    if(_zz_1) begin
      logic_ram[logic_pushPtr_value] <= _zz_logic_ram_port_1;
    end
  end

  always @(*) begin
    _zz_1 = 1'b0;
    if(logic_pushing) begin
      _zz_1 = 1'b1;
    end
  end

  always @(*) begin
    logic_pushPtr_willIncrement = 1'b0;
    if(logic_pushing) begin
      logic_pushPtr_willIncrement = 1'b1;
    end
  end

  always @(*) begin
    logic_pushPtr_willClear = 1'b0;
    if(io_flush) begin
      logic_pushPtr_willClear = 1'b1;
    end
  end

  assign logic_pushPtr_willOverflowIfInc = (logic_pushPtr_value == 4'b1111);
  assign logic_pushPtr_willOverflow = (logic_pushPtr_willOverflowIfInc && logic_pushPtr_willIncrement);
  always @(*) begin
    logic_pushPtr_valueNext = (logic_pushPtr_value + _zz_logic_pushPtr_valueNext);
    if(logic_pushPtr_willClear) begin
      logic_pushPtr_valueNext = 4'b0000;
    end
  end

  always @(*) begin
    logic_popPtr_willIncrement = 1'b0;
    if(logic_popping) begin
      logic_popPtr_willIncrement = 1'b1;
    end
  end

  always @(*) begin
    logic_popPtr_willClear = 1'b0;
    if(io_flush) begin
      logic_popPtr_willClear = 1'b1;
    end
  end

  assign logic_popPtr_willOverflowIfInc = (logic_popPtr_value == 4'b1111);
  assign logic_popPtr_willOverflow = (logic_popPtr_willOverflowIfInc && logic_popPtr_willIncrement);
  always @(*) begin
    logic_popPtr_valueNext = (logic_popPtr_value + _zz_logic_popPtr_valueNext);
    if(logic_popPtr_willClear) begin
      logic_popPtr_valueNext = 4'b0000;
    end
  end

  assign logic_ptrMatch = (logic_pushPtr_value == logic_popPtr_value);
  assign logic_pushing = (io_push_valid && io_push_ready);
  assign logic_popping = (io_pop_valid && io_pop_ready);
  assign logic_empty = (logic_ptrMatch && (! logic_risingOccupancy));
  assign logic_full = (logic_ptrMatch && logic_risingOccupancy);
  assign io_push_ready = (! logic_full);
  assign io_pop_valid = ((! logic_empty) && (! (_zz_io_pop_valid && (! logic_full))));
  assign io_pop_payload = _zz_logic_ram_port0;
  assign when_Stream_l955 = (logic_pushing != logic_popping);
  assign logic_ptrDif = (logic_pushPtr_value - logic_popPtr_value);
  assign io_occupancy = {(logic_risingOccupancy && logic_ptrMatch),logic_ptrDif};
  assign io_availability = {((! logic_risingOccupancy) && logic_ptrMatch),_zz_io_availability};
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      logic_pushPtr_value <= 4'b0000;
      logic_popPtr_value <= 4'b0000;
      logic_risingOccupancy <= 1'b0;
      _zz_io_pop_valid <= 1'b0;
    end else begin
      logic_pushPtr_value <= logic_pushPtr_valueNext;
      logic_popPtr_value <= logic_popPtr_valueNext;
      _zz_io_pop_valid <= (logic_popPtr_valueNext == logic_pushPtr_value);
      if(when_Stream_l955) begin
        logic_risingOccupancy <= logic_pushing;
      end
      if(io_flush) begin
        logic_risingOccupancy <= 1'b0;
      end
    end
  end


endmodule

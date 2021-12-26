// Generator : SpinalHDL v1.5.0    git head : 83a031922866b078c411ec5529e00f1b6e79f8e7
// Component : tiny_dma_top
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

`define dma_rd_fsm_enumDefinition_binary_sequential_type [2:0]
`define dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_BOOT 3'b000
`define dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_IDLE 3'b001
`define dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_AR 3'b010
`define dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_R 3'b011
`define dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_SEND 3'b100
`define dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_CHECK 3'b101


module tiny_dma_top (
  output              axim_r_ar_valid,
  input               axim_r_ar_ready,
  output     [31:0]   axim_r_ar_payload_addr,
  output     [7:0]    axim_r_ar_payload_len,
  output     [2:0]    axim_r_ar_payload_size,
  output     [1:0]    axim_r_ar_payload_burst,
  input               axim_r_r_valid,
  output              axim_r_r_ready,
  input      [255:0]  axim_r_r_payload_data,
  input      [1:0]    axim_r_r_payload_resp,
  input               axim_r_r_payload_last,
  output              axim_w_aw_valid,
  input               axim_w_aw_ready,
  output     [31:0]   axim_w_aw_payload_addr,
  output     [7:0]    axim_w_aw_payload_len,
  output     [2:0]    axim_w_aw_payload_size,
  output     [1:0]    axim_w_aw_payload_burst,
  output              axim_w_w_valid,
  input               axim_w_w_ready,
  output     [255:0]  axim_w_w_payload_data,
  output     [31:0]   axim_w_w_payload_strb,
  output              axim_w_w_payload_last,
  input               axim_w_b_valid,
  output              axim_w_b_ready,
  input      [1:0]    axim_w_b_payload_resp,
  input               input_valid,
  output              input_ready,
  input      [255:0]  input_payload,
  output              output_valid,
  input               output_ready,
  output     [255:0]  output_payload,
  input      [31:0]   dataNum,
  input               pushbottom,
  input               axi_wclk,
  input               axi_rclk,
  input               resetn,
  output              w_start_read,
  input               r_start_read,
  input               w_send_over,
  output              r_send_over
);
  wire                wclk_area_dma_wr_io_axim_aw_valid;
  wire       [31:0]   wclk_area_dma_wr_io_axim_aw_payload_addr;
  wire       [7:0]    wclk_area_dma_wr_io_axim_aw_payload_len;
  wire       [2:0]    wclk_area_dma_wr_io_axim_aw_payload_size;
  wire       [1:0]    wclk_area_dma_wr_io_axim_aw_payload_burst;
  wire                wclk_area_dma_wr_io_axim_w_valid;
  wire       [255:0]  wclk_area_dma_wr_io_axim_w_payload_data;
  wire       [31:0]   wclk_area_dma_wr_io_axim_w_payload_strb;
  wire                wclk_area_dma_wr_io_axim_w_payload_last;
  wire                wclk_area_dma_wr_io_axim_b_ready;
  wire                wclk_area_dma_wr_io_input_ready;
  wire                wclk_area_dma_wr_io_start_read;
  wire                rclk_area_dma_rd_axim_ar_valid;
  wire       [31:0]   rclk_area_dma_rd_axim_ar_payload_addr;
  wire       [7:0]    rclk_area_dma_rd_axim_ar_payload_len;
  wire       [2:0]    rclk_area_dma_rd_axim_ar_payload_size;
  wire       [1:0]    rclk_area_dma_rd_axim_ar_payload_burst;
  wire                rclk_area_dma_rd_axim_r_ready;
  wire                rclk_area_dma_rd_output_valid;
  wire       [255:0]  rclk_area_dma_rd_output_payload;
  wire                rclk_area_dma_rd_sendover;

  tiny_dma_write wclk_area_dma_wr (
    .io_axim_aw_valid            (wclk_area_dma_wr_io_axim_aw_valid          ), //o
    .io_axim_aw_ready            (axim_w_aw_ready                            ), //i
    .io_axim_aw_payload_addr     (wclk_area_dma_wr_io_axim_aw_payload_addr   ), //o
    .io_axim_aw_payload_len      (wclk_area_dma_wr_io_axim_aw_payload_len    ), //o
    .io_axim_aw_payload_size     (wclk_area_dma_wr_io_axim_aw_payload_size   ), //o
    .io_axim_aw_payload_burst    (wclk_area_dma_wr_io_axim_aw_payload_burst  ), //o
    .io_axim_w_valid             (wclk_area_dma_wr_io_axim_w_valid           ), //o
    .io_axim_w_ready             (axim_w_w_ready                             ), //i
    .io_axim_w_payload_data      (wclk_area_dma_wr_io_axim_w_payload_data    ), //o
    .io_axim_w_payload_strb      (wclk_area_dma_wr_io_axim_w_payload_strb    ), //o
    .io_axim_w_payload_last      (wclk_area_dma_wr_io_axim_w_payload_last    ), //o
    .io_axim_b_valid             (axim_w_b_valid                             ), //i
    .io_axim_b_ready             (wclk_area_dma_wr_io_axim_b_ready           ), //o
    .io_axim_b_payload_resp      (axim_w_b_payload_resp                      ), //i
    .io_input_valid              (input_valid                                ), //i
    .io_input_ready              (wclk_area_dma_wr_io_input_ready            ), //o
    .io_input_payload            (input_payload                              ), //i
    .io_dataNum                  (dataNum                                    ), //i
    .io_pushbottom               (pushbottom                                 ), //i
    .io_sendover                 (w_send_over                                ), //i
    .io_start_read               (wclk_area_dma_wr_io_start_read             ), //o
    .axi_wclk                    (axi_wclk                                   ), //i
    .resetn                      (resetn                                     )  //i
  );
  tiny_dma_read rclk_area_dma_rd (
    .axim_ar_valid            (rclk_area_dma_rd_axim_ar_valid          ), //o
    .axim_ar_ready            (axim_r_ar_ready                         ), //i
    .axim_ar_payload_addr     (rclk_area_dma_rd_axim_ar_payload_addr   ), //o
    .axim_ar_payload_len      (rclk_area_dma_rd_axim_ar_payload_len    ), //o
    .axim_ar_payload_size     (rclk_area_dma_rd_axim_ar_payload_size   ), //o
    .axim_ar_payload_burst    (rclk_area_dma_rd_axim_ar_payload_burst  ), //o
    .axim_r_valid             (axim_r_r_valid                          ), //i
    .axim_r_ready             (rclk_area_dma_rd_axim_r_ready           ), //o
    .axim_r_payload_data      (axim_r_r_payload_data                   ), //i
    .axim_r_payload_resp      (axim_r_r_payload_resp                   ), //i
    .axim_r_payload_last      (axim_r_r_payload_last                   ), //i
    .output_valid             (rclk_area_dma_rd_output_valid           ), //o
    .output_ready             (output_ready                            ), //i
    .output_payload           (rclk_area_dma_rd_output_payload         ), //o
    .dataNum                  (dataNum                                 ), //i
    .start_read               (r_start_read                            ), //i
    .sendover                 (rclk_area_dma_rd_sendover               ), //o
    .axi_rclk                 (axi_rclk                                ), //i
    .resetn                   (resetn                                  )  //i
  );
  assign input_ready = wclk_area_dma_wr_io_input_ready;
  assign axim_w_aw_valid = wclk_area_dma_wr_io_axim_aw_valid;
  assign axim_w_aw_payload_addr = wclk_area_dma_wr_io_axim_aw_payload_addr;
  assign axim_w_aw_payload_len = wclk_area_dma_wr_io_axim_aw_payload_len;
  assign axim_w_aw_payload_size = wclk_area_dma_wr_io_axim_aw_payload_size;
  assign axim_w_aw_payload_burst = wclk_area_dma_wr_io_axim_aw_payload_burst;
  assign axim_w_w_valid = wclk_area_dma_wr_io_axim_w_valid;
  assign axim_w_w_payload_data = wclk_area_dma_wr_io_axim_w_payload_data;
  assign axim_w_w_payload_strb = wclk_area_dma_wr_io_axim_w_payload_strb;
  assign axim_w_w_payload_last = wclk_area_dma_wr_io_axim_w_payload_last;
  assign axim_w_b_ready = wclk_area_dma_wr_io_axim_b_ready;
  assign w_start_read = wclk_area_dma_wr_io_start_read;
  assign output_valid = rclk_area_dma_rd_output_valid;
  assign output_payload = rclk_area_dma_rd_output_payload;
  assign axim_r_ar_valid = rclk_area_dma_rd_axim_ar_valid;
  assign axim_r_ar_payload_addr = rclk_area_dma_rd_axim_ar_payload_addr;
  assign axim_r_ar_payload_len = rclk_area_dma_rd_axim_ar_payload_len;
  assign axim_r_ar_payload_size = rclk_area_dma_rd_axim_ar_payload_size;
  assign axim_r_ar_payload_burst = rclk_area_dma_rd_axim_ar_payload_burst;
  assign axim_r_r_ready = rclk_area_dma_rd_axim_r_ready;
  assign r_send_over = rclk_area_dma_rd_sendover;

endmodule

module tiny_dma_read (
  output reg          axim_ar_valid,
  input               axim_ar_ready,
  output     [31:0]   axim_ar_payload_addr,
  output     [7:0]    axim_ar_payload_len,
  output     [2:0]    axim_ar_payload_size,
  output     [1:0]    axim_ar_payload_burst,
  input               axim_r_valid,
  output reg          axim_r_ready,
  input      [255:0]  axim_r_payload_data,
  input      [1:0]    axim_r_payload_resp,
  input               axim_r_payload_last,
  output reg          output_valid,
  input               output_ready,
  output     [255:0]  output_payload,
  input      [31:0]   dataNum,
  input               start_read,
  output reg          sendover,
  input               axi_rclk,
  input               resetn
);
  reg        [31:0]   offsetaddr;
  reg        [31:0]   addr;
  reg        [31:0]   rdata_cnt;
  reg        [255:0]  axi_rdata;
  wire                dma_rd_fsm_wantExit;
  reg                 dma_rd_fsm_wantStart;
  wire                dma_rd_fsm_wantKill;
  reg        `dma_rd_fsm_enumDefinition_binary_sequential_type dma_rd_fsm_stateReg;
  reg        `dma_rd_fsm_enumDefinition_binary_sequential_type dma_rd_fsm_stateNext;
  wire                when_tiny_dma_read_l59;
  wire                when_tiny_dma_read_l66;
  wire                when_tiny_dma_read_l73;
  wire                when_tiny_dma_read_l81;
  wire                when_tiny_dma_read_l88;
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
        if(!when_tiny_dma_read_l88) begin
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
  assign axim_ar_payload_size = 3'b101;
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
        if(when_tiny_dma_read_l59) begin
          dma_rd_fsm_stateNext = `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_AR;
        end
      end
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_AR : begin
        if(when_tiny_dma_read_l66) begin
          dma_rd_fsm_stateNext = `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_R;
        end
      end
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_R : begin
        if(when_tiny_dma_read_l73) begin
          dma_rd_fsm_stateNext = `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_SEND;
        end
      end
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_SEND : begin
        if(when_tiny_dma_read_l81) begin
          dma_rd_fsm_stateNext = `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_CHECK;
        end
      end
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_CHECK : begin
        if(when_tiny_dma_read_l88) begin
          dma_rd_fsm_stateNext = `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_AR;
        end else begin
          dma_rd_fsm_stateNext = `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_IDLE;
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

  assign when_tiny_dma_read_l59 = (start_read == 1'b1);
  assign when_tiny_dma_read_l66 = ((axim_ar_valid == 1'b1) && (axim_ar_ready == 1'b1));
  assign when_tiny_dma_read_l73 = ((axim_r_ready == 1'b1) && (axim_r_valid == 1'b1));
  assign when_tiny_dma_read_l81 = (output_valid && output_ready);
  assign when_tiny_dma_read_l88 = (rdata_cnt < dataNum);
  always @(posedge axi_rclk or negedge resetn) begin
    if(!resetn) begin
      offsetaddr <= 32'h0;
      addr <= 32'h0;
      rdata_cnt <= 32'h0;
      axi_rdata <= 256'h0;
      dma_rd_fsm_stateReg <= `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_BOOT;
    end else begin
      offsetaddr <= 32'h00000020;
      dma_rd_fsm_stateReg <= dma_rd_fsm_stateNext;
      case(dma_rd_fsm_stateReg)
        `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_IDLE : begin
          addr <= 32'h0;
          rdata_cnt <= 32'h0;
        end
        `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_AR : begin
        end
        `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_R : begin
          if(when_tiny_dma_read_l73) begin
            axi_rdata <= axim_r_payload_data;
          end
        end
        `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_SEND : begin
          if(when_tiny_dma_read_l81) begin
            rdata_cnt <= (rdata_cnt + 32'h00000001);
          end
        end
        `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_CHECK : begin
          if(when_tiny_dma_read_l88) begin
            addr <= (addr + offsetaddr);
          end
        end
        default : begin
        end
      endcase
    end
  end


endmodule

module tiny_dma_write (
  output reg          io_axim_aw_valid,
  input               io_axim_aw_ready,
  output     [31:0]   io_axim_aw_payload_addr,
  output     [7:0]    io_axim_aw_payload_len,
  output     [2:0]    io_axim_aw_payload_size,
  output     [1:0]    io_axim_aw_payload_burst,
  output reg          io_axim_w_valid,
  input               io_axim_w_ready,
  output     [255:0]  io_axim_w_payload_data,
  output     [31:0]   io_axim_w_payload_strb,
  output              io_axim_w_payload_last,
  input               io_axim_b_valid,
  output reg          io_axim_b_ready,
  input      [1:0]    io_axim_b_payload_resp,
  input               io_input_valid,
  output reg          io_input_ready,
  input      [255:0]  io_input_payload,
  input      [31:0]   io_dataNum,
  input               io_pushbottom,
  input               io_sendover,
  output reg          io_start_read,
  input               axi_wclk,
  input               resetn
);
  reg        [31:0]   offsetaddr;
  reg        [31:0]   addr;
  reg        [31:0]   wdata_cnt;
  reg                 pushbottom0;
  reg                 pushbottom1;
  wire                pushbottom_pulse;
  reg        [255:0]  axi_wdata;
  wire                dma_wrctrl_fsm_wantExit;
  reg                 dma_wrctrl_fsm_wantStart;
  wire                dma_wrctrl_fsm_wantKill;
  reg        `dma_wrctrl_fsm_enumDefinition_binary_sequential_type dma_wrctrl_fsm_stateReg;
  reg        `dma_wrctrl_fsm_enumDefinition_binary_sequential_type dma_wrctrl_fsm_stateNext;
  wire                when_tiny_dma_write_l72;
  wire                when_tiny_dma_write_l79;
  wire                when_tiny_dma_write_l87;
  wire                when_tiny_dma_write_l94;
  wire                when_tiny_dma_write_l102;
  wire                when_tiny_dma_write_l108;
  wire                when_tiny_dma_write_l118;
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
  assign io_axim_aw_payload_size = 3'b101;
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

  assign io_axim_w_payload_data = axi_wdata;
  assign io_axim_w_payload_strb = (~ 32'h0);
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

  always @(*) begin
    io_start_read = 1'b0;
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
        io_start_read = 1'b1;
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
        if(when_tiny_dma_write_l72) begin
          dma_wrctrl_fsm_stateNext = `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_RCV_DATA;
        end
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_RCV_DATA : begin
        if(when_tiny_dma_write_l79) begin
          dma_wrctrl_fsm_stateNext = `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_AW;
        end
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_AW : begin
        if(when_tiny_dma_write_l87) begin
          dma_wrctrl_fsm_stateNext = `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_W;
        end
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_W : begin
        if(when_tiny_dma_write_l94) begin
          dma_wrctrl_fsm_stateNext = `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_WBRESP;
        end
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_WBRESP : begin
        if(when_tiny_dma_write_l102) begin
          dma_wrctrl_fsm_stateNext = `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_CHECK;
        end
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_CHECK : begin
        if(when_tiny_dma_write_l108) begin
          dma_wrctrl_fsm_stateNext = `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_RCV_DATA;
        end else begin
          dma_wrctrl_fsm_stateNext = `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_SEND;
        end
      end
      `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_SEND : begin
        if(when_tiny_dma_write_l118) begin
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

  assign when_tiny_dma_write_l72 = (pushbottom_pulse == 1'b1);
  assign when_tiny_dma_write_l79 = (io_input_valid && io_input_ready);
  assign when_tiny_dma_write_l87 = (io_axim_aw_valid && io_axim_aw_ready);
  assign when_tiny_dma_write_l94 = (io_axim_w_valid && io_axim_w_ready);
  assign when_tiny_dma_write_l102 = (io_axim_b_valid && io_axim_b_ready);
  assign when_tiny_dma_write_l108 = (wdata_cnt < io_dataNum);
  assign when_tiny_dma_write_l118 = ((io_sendover == 1'b1) || (pushbottom_pulse == 1'b1));
  always @(posedge axi_wclk or negedge resetn) begin
    if(!resetn) begin
      offsetaddr <= 32'h0;
      addr <= 32'h0;
      wdata_cnt <= 32'h0;
      pushbottom0 <= 1'b0;
      axi_wdata <= 256'h0;
      dma_wrctrl_fsm_stateReg <= `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_BOOT;
    end else begin
      pushbottom0 <= io_pushbottom;
      offsetaddr <= 32'h00000020;
      dma_wrctrl_fsm_stateReg <= dma_wrctrl_fsm_stateNext;
      case(dma_wrctrl_fsm_stateReg)
        `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_IDLE : begin
          addr <= 32'h0;
          wdata_cnt <= 32'h0;
        end
        `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_RCV_DATA : begin
          if(when_tiny_dma_write_l79) begin
            axi_wdata <= io_input_payload;
          end
        end
        `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_AW : begin
        end
        `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_W : begin
          if(when_tiny_dma_write_l94) begin
            wdata_cnt <= (wdata_cnt + 32'h00000001);
          end
        end
        `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_WBRESP : begin
        end
        `dma_wrctrl_fsm_enumDefinition_binary_sequential_dma_wrctrl_fsm_CHECK : begin
          if(when_tiny_dma_write_l108) begin
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

  always @(posedge axi_wclk) begin
    pushbottom1 <= pushbottom0;
  end


endmodule

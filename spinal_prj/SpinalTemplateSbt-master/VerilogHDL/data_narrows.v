// Generator : SpinalHDL v1.5.0    git head : 83a031922866b078c411ec5529e00f1b6e79f8e7
// Component : data_narrows
// Git hash  : cdd65268cacc451fd529ecbab953f555be63dd6a


`define narrows_fsm_enumDefinition_binary_sequential_type [2:0]
`define narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_BOOT 3'b000
`define narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_IDLE 3'b001
`define narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_OUT_DATA 3'b010
`define narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_CHECK 3'b011
`define narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_END 3'b100


module data_narrows (
  input               io_in_0_valid,
  output              io_in_0_ready,
  input      [255:0]  io_in_0_payload,
  input               io_in_1_valid,
  output              io_in_1_ready,
  input      [255:0]  io_in_1_payload,
  input               io_in_2_valid,
  output              io_in_2_ready,
  input      [255:0]  io_in_2_payload,
  input               io_in_3_valid,
  output              io_in_3_ready,
  input      [255:0]  io_in_3_payload,
  input               io_in_4_valid,
  output              io_in_4_ready,
  input      [255:0]  io_in_4_payload,
  input               io_in_5_valid,
  output              io_in_5_ready,
  input      [255:0]  io_in_5_payload,
  input               io_in_6_valid,
  output              io_in_6_ready,
  input      [255:0]  io_in_6_payload,
  input               io_in_7_valid,
  output              io_in_7_ready,
  input      [255:0]  io_in_7_payload,
  output reg          io_out_valid,
  input               io_out_ready,
  output     [255:0]  io_out_payload,
  input               clk,
  input               reset
);
  reg        [255:0]  _zz_io_out_payload;
  wire       [2:0]    _zz_io_out_payload_1;
  reg        [255:0]  temp_data_0;
  reg        [255:0]  temp_data_1;
  reg        [255:0]  temp_data_2;
  reg        [255:0]  temp_data_3;
  reg        [255:0]  temp_data_4;
  reg        [255:0]  temp_data_5;
  reg        [255:0]  temp_data_6;
  reg        [255:0]  temp_data_7;
  reg        [3:0]    cnt;
  reg                 in_ready;
  wire                in_valid;
  wire                when_data_narrows_l28;
  wire                narrows_fsm_wantExit;
  reg                 narrows_fsm_wantStart;
  wire                narrows_fsm_wantKill;
  reg        `narrows_fsm_enumDefinition_binary_sequential_type narrows_fsm_stateReg;
  reg        `narrows_fsm_enumDefinition_binary_sequential_type narrows_fsm_stateNext;
  wire                when_data_narrows_l44;
  wire                when_data_narrows_l52;
  wire                when_data_narrows_l54;
  `ifndef SYNTHESIS
  reg [159:0] narrows_fsm_stateReg_string;
  reg [159:0] narrows_fsm_stateNext_string;
  `endif


  assign _zz_io_out_payload_1 = cnt[2:0];
  always @(*) begin
    case(_zz_io_out_payload_1)
      3'b000 : begin
        _zz_io_out_payload = temp_data_0;
      end
      3'b001 : begin
        _zz_io_out_payload = temp_data_1;
      end
      3'b010 : begin
        _zz_io_out_payload = temp_data_2;
      end
      3'b011 : begin
        _zz_io_out_payload = temp_data_3;
      end
      3'b100 : begin
        _zz_io_out_payload = temp_data_4;
      end
      3'b101 : begin
        _zz_io_out_payload = temp_data_5;
      end
      3'b110 : begin
        _zz_io_out_payload = temp_data_6;
      end
      default : begin
        _zz_io_out_payload = temp_data_7;
      end
    endcase
  end

  `ifndef SYNTHESIS
  always @(*) begin
    case(narrows_fsm_stateReg)
      `narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_BOOT : narrows_fsm_stateReg_string = "narrows_fsm_BOOT    ";
      `narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_IDLE : narrows_fsm_stateReg_string = "narrows_fsm_IDLE    ";
      `narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_OUT_DATA : narrows_fsm_stateReg_string = "narrows_fsm_OUT_DATA";
      `narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_CHECK : narrows_fsm_stateReg_string = "narrows_fsm_CHECK   ";
      `narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_END : narrows_fsm_stateReg_string = "narrows_fsm_END     ";
      default : narrows_fsm_stateReg_string = "????????????????????";
    endcase
  end
  always @(*) begin
    case(narrows_fsm_stateNext)
      `narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_BOOT : narrows_fsm_stateNext_string = "narrows_fsm_BOOT    ";
      `narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_IDLE : narrows_fsm_stateNext_string = "narrows_fsm_IDLE    ";
      `narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_OUT_DATA : narrows_fsm_stateNext_string = "narrows_fsm_OUT_DATA";
      `narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_CHECK : narrows_fsm_stateNext_string = "narrows_fsm_CHECK   ";
      `narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_END : narrows_fsm_stateNext_string = "narrows_fsm_END     ";
      default : narrows_fsm_stateNext_string = "????????????????????";
    endcase
  end
  `endif

  always @(*) begin
    in_ready = 1'b0;
    case(narrows_fsm_stateReg)
      `narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_IDLE : begin
        in_ready = 1'b1;
      end
      `narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_OUT_DATA : begin
      end
      `narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_CHECK : begin
      end
      `narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_END : begin
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    io_out_valid = 1'b0;
    case(narrows_fsm_stateReg)
      `narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_IDLE : begin
      end
      `narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_OUT_DATA : begin
        io_out_valid = 1'b1;
      end
      `narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_CHECK : begin
      end
      `narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_END : begin
      end
      default : begin
      end
    endcase
  end

  assign io_in_0_ready = in_ready;
  assign io_in_1_ready = in_ready;
  assign io_in_2_ready = in_ready;
  assign io_in_3_ready = in_ready;
  assign io_in_4_ready = in_ready;
  assign io_in_5_ready = in_ready;
  assign io_in_6_ready = in_ready;
  assign io_in_7_ready = in_ready;
  assign in_valid = (((((((io_in_0_valid && io_in_1_valid) && io_in_2_valid) && io_in_3_valid) && io_in_4_valid) && io_in_5_valid) && io_in_6_valid) && io_in_7_valid);
  assign when_data_narrows_l28 = (in_valid && in_ready);
  assign io_out_payload = _zz_io_out_payload;
  assign narrows_fsm_wantExit = 1'b0;
  always @(*) begin
    narrows_fsm_wantStart = 1'b0;
    case(narrows_fsm_stateReg)
      `narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_IDLE : begin
      end
      `narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_OUT_DATA : begin
      end
      `narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_CHECK : begin
      end
      `narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_END : begin
      end
      default : begin
        narrows_fsm_wantStart = 1'b1;
      end
    endcase
  end

  assign narrows_fsm_wantKill = 1'b0;
  always @(*) begin
    narrows_fsm_stateNext = narrows_fsm_stateReg;
    case(narrows_fsm_stateReg)
      `narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_IDLE : begin
        if(when_data_narrows_l44) begin
          narrows_fsm_stateNext = `narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_OUT_DATA;
        end
      end
      `narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_OUT_DATA : begin
        if(when_data_narrows_l52) begin
          if(when_data_narrows_l54) begin
            narrows_fsm_stateNext = `narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_END;
          end
        end
      end
      `narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_CHECK : begin
      end
      `narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_END : begin
        narrows_fsm_stateNext = `narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_IDLE;
      end
      default : begin
      end
    endcase
    if(narrows_fsm_wantStart) begin
      narrows_fsm_stateNext = `narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_IDLE;
    end
    if(narrows_fsm_wantKill) begin
      narrows_fsm_stateNext = `narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_BOOT;
    end
  end

  assign when_data_narrows_l44 = (in_ready && in_valid);
  assign when_data_narrows_l52 = (io_out_valid && io_out_ready);
  assign when_data_narrows_l54 = (cnt == 4'b0111);
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      temp_data_0 <= 256'h0;
      temp_data_1 <= 256'h0;
      temp_data_2 <= 256'h0;
      temp_data_3 <= 256'h0;
      temp_data_4 <= 256'h0;
      temp_data_5 <= 256'h0;
      temp_data_6 <= 256'h0;
      temp_data_7 <= 256'h0;
      cnt <= 4'b0000;
      narrows_fsm_stateReg <= `narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_BOOT;
    end else begin
      if(when_data_narrows_l28) begin
        temp_data_0 <= io_in_0_payload;
        temp_data_1 <= io_in_1_payload;
        temp_data_2 <= io_in_2_payload;
        temp_data_3 <= io_in_3_payload;
        temp_data_4 <= io_in_4_payload;
        temp_data_5 <= io_in_5_payload;
        temp_data_6 <= io_in_6_payload;
        temp_data_7 <= io_in_7_payload;
      end
      narrows_fsm_stateReg <= narrows_fsm_stateNext;
      case(narrows_fsm_stateReg)
        `narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_IDLE : begin
        end
        `narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_OUT_DATA : begin
          if(when_data_narrows_l52) begin
            cnt <= (cnt + 4'b0001);
          end
        end
        `narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_CHECK : begin
        end
        `narrows_fsm_enumDefinition_binary_sequential_narrows_fsm_END : begin
          cnt <= 4'b0000;
        end
        default : begin
        end
      endcase
    end
  end


endmodule

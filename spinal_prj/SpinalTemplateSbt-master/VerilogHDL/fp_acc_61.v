// Generator : SpinalHDL v1.5.0    git head : 83a031922866b078c411ec5529e00f1b6e79f8e7
// Component : fp_acc_61
// Git hash  : 468260b61ffaaed727a3b82deccca770fc0579f1


module fp_acc_61 (
  input               ina_valid,
  output reg          ina_ready,
  input      [31:0]   ina_payload,
  output reg          out_valid,
  input               out_ready,
  output     [31:0]   out_payload,
  input      [15:0]   par_acc_cnt,
  input               acc_enable,
  input               clk,
  input               reset
);
  wire                fp_adder_64_ina_valid;
  wire                fp_adder_64_inb_valid;
  reg                 fp_adder_64_out_ready;
  wire                fp_adder_64_ina_ready;
  wire                fp_adder_64_inb_ready;
  wire                fp_adder_64_out_valid;
  wire       [31:0]   fp_adder_64_out_payload;
  reg        [15:0]   accnt;
  reg        [15:0]   par_acc_cnt_1;
  reg        [31:0]   result;
  reg                 result_valid;
  wire                acc_fsm_wantExit;
  reg                 acc_fsm_wantStart;
  wire                acc_fsm_wantKill;
  reg        `acc_fsm_enumDefinition_61_binary_sequential_type acc_fsm_stateReg;
  reg        `acc_fsm_enumDefinition_61_binary_sequential_type acc_fsm_stateNext;
  wire                when_fp_acc_l64;
  wire                when_fp_acc_l73;
  wire                when_fp_acc_l81;
  wire                when_fp_acc_l90;
  `ifndef SYNTHESIS
  reg [103:0] acc_fsm_stateReg_string;
  reg [103:0] acc_fsm_stateNext_string;
  `endif


  fp_adder fp_adder_64 (
    .ina_valid      (fp_adder_64_ina_valid    ), //i
    .ina_ready      (fp_adder_64_ina_ready    ), //o
    .ina_payload    (ina_payload              ), //i
    .inb_valid      (fp_adder_64_inb_valid    ), //i
    .inb_ready      (fp_adder_64_inb_ready    ), //o
    .inb_payload    (result                   ), //i
    .out_valid      (fp_adder_64_out_valid    ), //o
    .out_ready      (fp_adder_64_out_ready    ), //i
    .out_payload    (fp_adder_64_out_payload  ), //o
    .clk            (clk                      )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(acc_fsm_stateReg)
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_BOOT : acc_fsm_stateReg_string = "acc_fsm_BOOT ";
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_IDLE : acc_fsm_stateReg_string = "acc_fsm_IDLE ";
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_INIT : acc_fsm_stateReg_string = "acc_fsm_INIT ";
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_INPUT : acc_fsm_stateReg_string = "acc_fsm_INPUT";
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_CACU : acc_fsm_stateReg_string = "acc_fsm_CACU ";
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_CHECK : acc_fsm_stateReg_string = "acc_fsm_CHECK";
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_OUT : acc_fsm_stateReg_string = "acc_fsm_OUT  ";
      default : acc_fsm_stateReg_string = "?????????????";
    endcase
  end
  always @(*) begin
    case(acc_fsm_stateNext)
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_BOOT : acc_fsm_stateNext_string = "acc_fsm_BOOT ";
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_IDLE : acc_fsm_stateNext_string = "acc_fsm_IDLE ";
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_INIT : acc_fsm_stateNext_string = "acc_fsm_INIT ";
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_INPUT : acc_fsm_stateNext_string = "acc_fsm_INPUT";
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_CACU : acc_fsm_stateNext_string = "acc_fsm_CACU ";
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_CHECK : acc_fsm_stateNext_string = "acc_fsm_CHECK";
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_OUT : acc_fsm_stateNext_string = "acc_fsm_OUT  ";
      default : acc_fsm_stateNext_string = "?????????????";
    endcase
  end
  `endif

  always @(*) begin
    ina_ready = 1'b0;
    case(acc_fsm_stateReg)
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_IDLE : begin
      end
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_INIT : begin
      end
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_INPUT : begin
        ina_ready = 1'b1;
      end
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_CACU : begin
      end
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_CHECK : begin
      end
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_OUT : begin
      end
      default : begin
      end
    endcase
  end

  assign fp_adder_64_ina_valid = (ina_valid && ina_ready);
  assign fp_adder_64_inb_valid = ((result_valid && ina_valid) && ina_ready);
  always @(*) begin
    fp_adder_64_out_ready = 1'b0;
    case(acc_fsm_stateReg)
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_IDLE : begin
      end
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_INIT : begin
      end
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_INPUT : begin
      end
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_CACU : begin
        fp_adder_64_out_ready = 1'b1;
      end
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_CHECK : begin
      end
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_OUT : begin
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    out_valid = 1'b0;
    case(acc_fsm_stateReg)
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_IDLE : begin
      end
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_INIT : begin
      end
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_INPUT : begin
      end
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_CACU : begin
      end
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_CHECK : begin
      end
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_OUT : begin
        out_valid = 1'b1;
      end
      default : begin
      end
    endcase
  end

  assign out_payload = result;
  assign acc_fsm_wantExit = 1'b0;
  always @(*) begin
    acc_fsm_wantStart = 1'b0;
    case(acc_fsm_stateReg)
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_IDLE : begin
      end
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_INIT : begin
      end
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_INPUT : begin
      end
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_CACU : begin
      end
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_CHECK : begin
      end
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_OUT : begin
      end
      default : begin
        acc_fsm_wantStart = 1'b1;
      end
    endcase
  end

  assign acc_fsm_wantKill = 1'b0;
  always @(*) begin
    acc_fsm_stateNext = acc_fsm_stateReg;
    case(acc_fsm_stateReg)
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_IDLE : begin
        if(acc_enable) begin
          acc_fsm_stateNext = `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_INIT;
        end
      end
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_INIT : begin
        acc_fsm_stateNext = `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_INPUT;
      end
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_INPUT : begin
        if(when_fp_acc_l64) begin
          acc_fsm_stateNext = `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_CACU;
        end
      end
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_CACU : begin
        if(when_fp_acc_l73) begin
          acc_fsm_stateNext = `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_CHECK;
        end
      end
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_CHECK : begin
        if(when_fp_acc_l81) begin
          acc_fsm_stateNext = `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_OUT;
        end else begin
          acc_fsm_stateNext = `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_INPUT;
        end
      end
      `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_OUT : begin
        if(when_fp_acc_l90) begin
          acc_fsm_stateNext = `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_IDLE;
        end
      end
      default : begin
      end
    endcase
    if(acc_fsm_wantStart) begin
      acc_fsm_stateNext = `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_IDLE;
    end
    if(acc_fsm_wantKill) begin
      acc_fsm_stateNext = `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_BOOT;
    end
  end

  assign when_fp_acc_l64 = (ina_ready && ina_valid);
  assign when_fp_acc_l73 = (fp_adder_64_out_valid && fp_adder_64_out_ready);
  assign when_fp_acc_l81 = (accnt == par_acc_cnt_1);
  assign when_fp_acc_l90 = (out_valid && out_ready);
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      accnt <= 16'h0;
      par_acc_cnt_1 <= 16'h0;
      result <= 32'h0;
      result_valid <= 1'b1;
      acc_fsm_stateReg <= `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_BOOT;
    end else begin
      acc_fsm_stateReg <= acc_fsm_stateNext;
      case(acc_fsm_stateReg)
        `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_IDLE : begin
        end
        `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_INIT : begin
          par_acc_cnt_1 <= par_acc_cnt;
          accnt <= 16'h0;
          result <= 32'h0;
          result_valid <= 1'b1;
        end
        `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_INPUT : begin
          if(when_fp_acc_l64) begin
            accnt <= (accnt + 16'h0001);
            result_valid <= 1'b0;
          end
        end
        `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_CACU : begin
          if(when_fp_acc_l73) begin
            result <= fp_adder_64_out_payload;
            result_valid <= 1'b1;
          end
        end
        `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_CHECK : begin
        end
        `acc_fsm_enumDefinition_61_binary_sequential_acc_fsm_OUT : begin
        end
        default : begin
        end
      endcase
    end
  end


endmodule

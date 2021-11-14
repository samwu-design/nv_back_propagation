// Generator : SpinalHDL v1.5.0    git head : 83a031922866b078c411ec5529e00f1b6e79f8e7
// Component : dma_read
// Git hash  : c40732d75e724b9d8a0b1e374048df8f1d120e78


`define dma_rd_fsm_enumDefinition_binary_sequential_type [1:0]
`define dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_BOOT 2'b00
`define dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_IDLE 2'b01
`define dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_AR 2'b10
`define dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_R 2'b11


module dma_read (
  output reg          io_axim_ar_valid,
  input               io_axim_ar_ready,
  output     [63:0]   io_axim_ar_payload_addr,
  output     [7:0]    io_axim_ar_payload_id,
  output     [7:0]    io_axim_ar_payload_len,
  output     [2:0]    io_axim_ar_payload_size,
  output     [1:0]    io_axim_ar_payload_burst,
  input               io_axim_r_valid,
  output reg          io_axim_r_ready,
  input      [255:0]  io_axim_r_payload_data,
  input      [7:0]    io_axim_r_payload_id,
  input      [1:0]    io_axim_r_payload_resp,
  input               io_axim_r_payload_last,
  input      [63:0]   io_rd_para_BaseAddr,
  input      [7:0]    io_rd_para_burstlen,
  output              io_output_valid,
  input               io_output_ready,
  output     [255:0]  io_output_payload,
  input               io_enable,
  output reg          io_isIdle,
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
    .io_pop_ready       (io_output_ready       ), //i
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

  assign io_output_valid = fifo_io_pop_valid;
  assign io_output_payload = fifo_io_pop_payload;
  assign io_axim_ar_payload_addr = param_BaseAddr;
  assign io_axim_ar_payload_burst = 2'b01;
  assign io_axim_ar_payload_size = 3'b101;
  assign io_axim_ar_payload_len = param_burstlen;
  assign io_axim_ar_payload_id = 8'h0;
  always @(*) begin
    io_axim_ar_valid = 1'b0;
    case(dma_rd_fsm_stateReg)
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_IDLE : begin
      end
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_AR : begin
        io_axim_ar_valid = 1'b1;
      end
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_R : begin
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    io_axim_r_ready = 1'b0;
    case(dma_rd_fsm_stateReg)
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_IDLE : begin
      end
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_AR : begin
      end
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_R : begin
        io_axim_r_ready = fifo_io_push_ready;
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    io_isIdle = 1'b0;
    case(dma_rd_fsm_stateReg)
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_IDLE : begin
        io_isIdle = 1'b1;
      end
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_AR : begin
      end
      `dma_rd_fsm_enumDefinition_binary_sequential_dma_rd_fsm_R : begin
      end
      default : begin
      end
    endcase
  end

  assign fifo_io_push_payload = io_axim_r_payload_data;
  assign fifo_io_push_valid = (io_axim_r_valid && io_axim_r_ready);
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

  assign when_dma_read_l62 = (io_enable == 1'b1);
  assign when_dma_read_l69 = ((io_axim_ar_valid == 1'b1) && (io_axim_ar_ready == 1'b1));
  assign when_dma_read_l76 = ((io_axim_r_ready == 1'b1) && (io_axim_r_valid == 1'b1));
  assign when_dma_read_l77 = (io_axim_r_payload_last == 1'b1);
  always @(posedge clk) begin
    param_BaseAddr <= io_rd_para_BaseAddr;
    param_burstlen <= io_rd_para_burstlen;
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

// Generator : SpinalHDL v1.5.0    git head : 83a031922866b078c411ec5529e00f1b6e79f8e7
// Component : dma2buff
// Git hash  : 1ade3e56f84b2dd5aaac0391a7f0216281d5d486



module dma2buff (
  input               io_input_valid,
  output              io_input_ready,
  input      [255:0]  io_input_payload,
  input      [63:0]   io_cfg_dtBaseAddr,
  input      [63:0]   io_cfg_wtBaseAddr,
  input      [15:0]   io_cfg_dtWidth,
  input      [15:0]   io_cfg_dtHeight,
  input      [15:0]   io_cfg_wtWidth,
  input      [15:0]   io_cfg_wtHeight,
  input               io_clear,
  input               io_is_dtwt_mux,
  output     [31:0]   io_dt_wr_addr,
  output     [255:0]  io_dt_wr_data,
  output reg          io_dt_wr_en,
  output     [31:0]   io_wt_wr_0_addr,
  output reg [255:0]  io_wt_wr_0_data,
  output reg          io_wt_wr_0_en,
  output     [31:0]   io_wt_wr_1_addr,
  output reg [255:0]  io_wt_wr_1_data,
  output reg          io_wt_wr_1_en,
  output     [31:0]   io_wt_wr_2_addr,
  output reg [255:0]  io_wt_wr_2_data,
  output reg          io_wt_wr_2_en,
  output     [31:0]   io_wt_wr_3_addr,
  output reg [255:0]  io_wt_wr_3_data,
  output reg          io_wt_wr_3_en,
  output     [31:0]   io_wt_wr_4_addr,
  output reg [255:0]  io_wt_wr_4_data,
  output reg          io_wt_wr_4_en,
  output     [31:0]   io_wt_wr_5_addr,
  output reg [255:0]  io_wt_wr_5_data,
  output reg          io_wt_wr_5_en,
  output     [31:0]   io_wt_wr_6_addr,
  output reg [255:0]  io_wt_wr_6_data,
  output reg          io_wt_wr_6_en,
  output     [31:0]   io_wt_wr_7_addr,
  output reg [255:0]  io_wt_wr_7_data,
  output reg          io_wt_wr_7_en,
  input               clk,
  input               reset
);
  reg        [15:0]   dtram_addr;
  reg        [15:0]   wtram_addr;
  reg        [2:0]    wt_idx;
  wire                when_dma2buff_l51;
  wire                when_dma2buff_l52;
  wire                when_dma2buff_l57;
  wire       [7:0]    _zz_1;
  wire                when_dma2buff_l63;

  assign io_input_ready = 1'b1;
  assign io_dt_wr_addr = {16'd0, dtram_addr};
  assign io_wt_wr_0_addr = {16'd0, wtram_addr};
  assign io_wt_wr_1_addr = {16'd0, wtram_addr};
  assign io_wt_wr_2_addr = {16'd0, wtram_addr};
  assign io_wt_wr_3_addr = {16'd0, wtram_addr};
  assign io_wt_wr_4_addr = {16'd0, wtram_addr};
  assign io_wt_wr_5_addr = {16'd0, wtram_addr};
  assign io_wt_wr_6_addr = {16'd0, wtram_addr};
  assign io_wt_wr_7_addr = {16'd0, wtram_addr};
  always @(*) begin
    io_dt_wr_en = 1'b0;
    if(when_dma2buff_l51) begin
      if(when_dma2buff_l52) begin
        io_dt_wr_en = 1'b1;
      end
    end
  end

  always @(*) begin
    io_wt_wr_0_en = 1'b0;
    if(!when_dma2buff_l51) begin
      if(when_dma2buff_l57) begin
        io_wt_wr_0_en = 1'b1;
      end
    end
  end

  always @(*) begin
    io_wt_wr_1_en = 1'b0;
    if(!when_dma2buff_l51) begin
      if(when_dma2buff_l57) begin
        io_wt_wr_1_en = 1'b1;
      end
    end
  end

  always @(*) begin
    io_wt_wr_2_en = 1'b0;
    if(!when_dma2buff_l51) begin
      if(when_dma2buff_l57) begin
        io_wt_wr_2_en = 1'b1;
      end
    end
  end

  always @(*) begin
    io_wt_wr_3_en = 1'b0;
    if(!when_dma2buff_l51) begin
      if(when_dma2buff_l57) begin
        io_wt_wr_3_en = 1'b1;
      end
    end
  end

  always @(*) begin
    io_wt_wr_4_en = 1'b0;
    if(!when_dma2buff_l51) begin
      if(when_dma2buff_l57) begin
        io_wt_wr_4_en = 1'b1;
      end
    end
  end

  always @(*) begin
    io_wt_wr_5_en = 1'b0;
    if(!when_dma2buff_l51) begin
      if(when_dma2buff_l57) begin
        io_wt_wr_5_en = 1'b1;
      end
    end
  end

  always @(*) begin
    io_wt_wr_6_en = 1'b0;
    if(!when_dma2buff_l51) begin
      if(when_dma2buff_l57) begin
        io_wt_wr_6_en = 1'b1;
      end
    end
  end

  always @(*) begin
    io_wt_wr_7_en = 1'b0;
    if(!when_dma2buff_l51) begin
      if(when_dma2buff_l57) begin
        io_wt_wr_7_en = 1'b1;
      end
    end
  end

  assign io_dt_wr_data = io_input_payload;
  always @(*) begin
    io_wt_wr_0_data = 256'h0;
    if(!when_dma2buff_l51) begin
      if(when_dma2buff_l57) begin
        if(_zz_1[0]) begin
          io_wt_wr_0_data = io_input_payload;
        end
      end
    end
  end

  always @(*) begin
    io_wt_wr_1_data = 256'h0;
    if(!when_dma2buff_l51) begin
      if(when_dma2buff_l57) begin
        if(_zz_1[1]) begin
          io_wt_wr_1_data = io_input_payload;
        end
      end
    end
  end

  always @(*) begin
    io_wt_wr_2_data = 256'h0;
    if(!when_dma2buff_l51) begin
      if(when_dma2buff_l57) begin
        if(_zz_1[2]) begin
          io_wt_wr_2_data = io_input_payload;
        end
      end
    end
  end

  always @(*) begin
    io_wt_wr_3_data = 256'h0;
    if(!when_dma2buff_l51) begin
      if(when_dma2buff_l57) begin
        if(_zz_1[3]) begin
          io_wt_wr_3_data = io_input_payload;
        end
      end
    end
  end

  always @(*) begin
    io_wt_wr_4_data = 256'h0;
    if(!when_dma2buff_l51) begin
      if(when_dma2buff_l57) begin
        if(_zz_1[4]) begin
          io_wt_wr_4_data = io_input_payload;
        end
      end
    end
  end

  always @(*) begin
    io_wt_wr_5_data = 256'h0;
    if(!when_dma2buff_l51) begin
      if(when_dma2buff_l57) begin
        if(_zz_1[5]) begin
          io_wt_wr_5_data = io_input_payload;
        end
      end
    end
  end

  always @(*) begin
    io_wt_wr_6_data = 256'h0;
    if(!when_dma2buff_l51) begin
      if(when_dma2buff_l57) begin
        if(_zz_1[6]) begin
          io_wt_wr_6_data = io_input_payload;
        end
      end
    end
  end

  always @(*) begin
    io_wt_wr_7_data = 256'h0;
    if(!when_dma2buff_l51) begin
      if(when_dma2buff_l57) begin
        if(_zz_1[7]) begin
          io_wt_wr_7_data = io_input_payload;
        end
      end
    end
  end

  assign when_dma2buff_l51 = (io_is_dtwt_mux == 1'b1);
  assign when_dma2buff_l52 = (io_input_valid && io_input_ready);
  assign when_dma2buff_l57 = (io_input_valid && io_input_ready);
  assign _zz_1 = ({7'd0,1'b1} <<< wt_idx);
  assign when_dma2buff_l63 = (wt_idx == 3'b110);
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      dtram_addr <= 16'h0;
      wtram_addr <= 16'h0;
      wt_idx <= 3'b000;
    end else begin
      if(io_clear) begin
        dtram_addr <= 16'h0;
        wtram_addr <= 16'h0;
        wt_idx <= 3'b000;
      end
      if(when_dma2buff_l51) begin
        if(when_dma2buff_l52) begin
          dtram_addr <= (dtram_addr + 16'h0001);
        end
      end else begin
        if(when_dma2buff_l57) begin
          wt_idx <= (wt_idx + 3'b001);
          if(when_dma2buff_l63) begin
            wtram_addr <= (wtram_addr + 16'h0001);
          end
        end
      end
    end
  end


endmodule

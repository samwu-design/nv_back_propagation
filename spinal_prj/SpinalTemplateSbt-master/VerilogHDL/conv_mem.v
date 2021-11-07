// Generator : SpinalHDL v1.5.0    git head : 83a031922866b078c411ec5529e00f1b6e79f8e7
// Component : conv_mem
// Git hash  : 09f5e5b8c4663213589c00af16450eda4a4b3a06



module conv_mem (
  input      [31:0]   io_slv_rd_addr,
  output     [255:0]  io_slv_rd_data,
  input               io_slv_rd_en,
  input      [31:0]   io_slv_wr_addr,
  input      [255:0]  io_slv_wr_data,
  input               io_slv_wr_en,
  input               clk,
  input               reset
);
  reg        [255:0]  _zz_mem_port1;
  wire       [8:0]    _zz_mem_port;
  wire       [255:0]  _zz_mem_port_1;
  wire       [8:0]    _zz_mem_port_2;
  wire       [8:0]    _zz_io_slv_rd_data_1;
  wire       [255:0]  slv_wr_data;
  wire       [31:0]   _zz_io_slv_rd_data;
  reg [255:0] mem [0:511];

  assign _zz_mem_port = io_slv_wr_addr[8:0];
  assign _zz_io_slv_rd_data_1 = _zz_io_slv_rd_data[8:0];
  assign _zz_mem_port_1 = io_slv_wr_data;
  always @(posedge clk) begin
    if(io_slv_wr_en) begin
      mem[_zz_mem_port] <= _zz_mem_port_1;
    end
  end

  always @(posedge clk) begin
    if(io_slv_rd_en) begin
      _zz_mem_port1 <= mem[_zz_io_slv_rd_data_1];
    end
  end

  assign _zz_io_slv_rd_data = io_slv_rd_addr;
  assign io_slv_rd_data = _zz_mem_port1;

endmodule

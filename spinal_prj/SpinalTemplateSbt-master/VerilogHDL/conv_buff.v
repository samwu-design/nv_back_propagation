// Generator : SpinalHDL v1.5.0    git head : 83a031922866b078c411ec5529e00f1b6e79f8e7
// Component : conv_buff
// Git hash  : 09f5e5b8c4663213589c00af16450eda4a4b3a06



module conv_buff (
  input      [31:0]   io_dt_rd_addr,
  output     [255:0]  io_dt_rd_data,
  input               io_dt_rd_en,
  input      [31:0]   io_wt_rd_0_addr,
  output     [255:0]  io_wt_rd_0_data,
  input               io_wt_rd_0_en,
  input      [31:0]   io_wt_rd_1_addr,
  output     [255:0]  io_wt_rd_1_data,
  input               io_wt_rd_1_en,
  input      [31:0]   io_wt_rd_2_addr,
  output     [255:0]  io_wt_rd_2_data,
  input               io_wt_rd_2_en,
  input      [31:0]   io_wt_rd_3_addr,
  output     [255:0]  io_wt_rd_3_data,
  input               io_wt_rd_3_en,
  input      [31:0]   io_wt_rd_4_addr,
  output     [255:0]  io_wt_rd_4_data,
  input               io_wt_rd_4_en,
  input      [31:0]   io_wt_rd_5_addr,
  output     [255:0]  io_wt_rd_5_data,
  input               io_wt_rd_5_en,
  input      [31:0]   io_wt_rd_6_addr,
  output     [255:0]  io_wt_rd_6_data,
  input               io_wt_rd_6_en,
  input      [31:0]   io_wt_rd_7_addr,
  output     [255:0]  io_wt_rd_7_data,
  input               io_wt_rd_7_en,
  input      [31:0]   io_dt_wr_addr,
  input      [255:0]  io_dt_wr_data,
  input               io_dt_wr_en,
  input      [31:0]   io_wt_wr_0_addr,
  input      [255:0]  io_wt_wr_0_data,
  input               io_wt_wr_0_en,
  input      [31:0]   io_wt_wr_1_addr,
  input      [255:0]  io_wt_wr_1_data,
  input               io_wt_wr_1_en,
  input      [31:0]   io_wt_wr_2_addr,
  input      [255:0]  io_wt_wr_2_data,
  input               io_wt_wr_2_en,
  input      [31:0]   io_wt_wr_3_addr,
  input      [255:0]  io_wt_wr_3_data,
  input               io_wt_wr_3_en,
  input      [31:0]   io_wt_wr_4_addr,
  input      [255:0]  io_wt_wr_4_data,
  input               io_wt_wr_4_en,
  input      [31:0]   io_wt_wr_5_addr,
  input      [255:0]  io_wt_wr_5_data,
  input               io_wt_wr_5_en,
  input      [31:0]   io_wt_wr_6_addr,
  input      [255:0]  io_wt_wr_6_data,
  input               io_wt_wr_6_en,
  input      [31:0]   io_wt_wr_7_addr,
  input      [255:0]  io_wt_wr_7_data,
  input               io_wt_wr_7_en,
  input               clk,
  input               reset
);
  wire       [255:0]  dt_ram_io_slv_rd_data;
  wire       [255:0]  wt_ram_0_io_slv_rd_data;
  wire       [255:0]  wt_ram_1_io_slv_rd_data;
  wire       [255:0]  wt_ram_2_io_slv_rd_data;
  wire       [255:0]  wt_ram_3_io_slv_rd_data;
  wire       [255:0]  wt_ram_4_io_slv_rd_data;
  wire       [255:0]  wt_ram_5_io_slv_rd_data;
  wire       [255:0]  wt_ram_6_io_slv_rd_data;
  wire       [255:0]  wt_ram_7_io_slv_rd_data;

  conv_mem dt_ram (
    .io_slv_rd_addr    (io_dt_rd_addr          ), //i
    .io_slv_rd_data    (dt_ram_io_slv_rd_data  ), //o
    .io_slv_rd_en      (io_dt_rd_en            ), //i
    .io_slv_wr_addr    (io_dt_wr_addr          ), //i
    .io_slv_wr_data    (io_dt_wr_data          ), //i
    .io_slv_wr_en      (io_dt_wr_en            ), //i
    .clk               (clk                    ), //i
    .reset             (reset                  )  //i
  );
  conv_mem wt_ram_0 (
    .io_slv_rd_addr    (io_wt_rd_0_addr          ), //i
    .io_slv_rd_data    (wt_ram_0_io_slv_rd_data  ), //o
    .io_slv_rd_en      (io_wt_rd_0_en            ), //i
    .io_slv_wr_addr    (io_wt_wr_0_addr          ), //i
    .io_slv_wr_data    (io_wt_wr_0_data          ), //i
    .io_slv_wr_en      (io_wt_wr_0_en            ), //i
    .clk               (clk                      ), //i
    .reset             (reset                    )  //i
  );
  conv_mem wt_ram_1 (
    .io_slv_rd_addr    (io_wt_rd_1_addr          ), //i
    .io_slv_rd_data    (wt_ram_1_io_slv_rd_data  ), //o
    .io_slv_rd_en      (io_wt_rd_1_en            ), //i
    .io_slv_wr_addr    (io_wt_wr_1_addr          ), //i
    .io_slv_wr_data    (io_wt_wr_1_data          ), //i
    .io_slv_wr_en      (io_wt_wr_1_en            ), //i
    .clk               (clk                      ), //i
    .reset             (reset                    )  //i
  );
  conv_mem wt_ram_2 (
    .io_slv_rd_addr    (io_wt_rd_2_addr          ), //i
    .io_slv_rd_data    (wt_ram_2_io_slv_rd_data  ), //o
    .io_slv_rd_en      (io_wt_rd_2_en            ), //i
    .io_slv_wr_addr    (io_wt_wr_2_addr          ), //i
    .io_slv_wr_data    (io_wt_wr_2_data          ), //i
    .io_slv_wr_en      (io_wt_wr_2_en            ), //i
    .clk               (clk                      ), //i
    .reset             (reset                    )  //i
  );
  conv_mem wt_ram_3 (
    .io_slv_rd_addr    (io_wt_rd_3_addr          ), //i
    .io_slv_rd_data    (wt_ram_3_io_slv_rd_data  ), //o
    .io_slv_rd_en      (io_wt_rd_3_en            ), //i
    .io_slv_wr_addr    (io_wt_wr_3_addr          ), //i
    .io_slv_wr_data    (io_wt_wr_3_data          ), //i
    .io_slv_wr_en      (io_wt_wr_3_en            ), //i
    .clk               (clk                      ), //i
    .reset             (reset                    )  //i
  );
  conv_mem wt_ram_4 (
    .io_slv_rd_addr    (io_wt_rd_4_addr          ), //i
    .io_slv_rd_data    (wt_ram_4_io_slv_rd_data  ), //o
    .io_slv_rd_en      (io_wt_rd_4_en            ), //i
    .io_slv_wr_addr    (io_wt_wr_4_addr          ), //i
    .io_slv_wr_data    (io_wt_wr_4_data          ), //i
    .io_slv_wr_en      (io_wt_wr_4_en            ), //i
    .clk               (clk                      ), //i
    .reset             (reset                    )  //i
  );
  conv_mem wt_ram_5 (
    .io_slv_rd_addr    (io_wt_rd_5_addr          ), //i
    .io_slv_rd_data    (wt_ram_5_io_slv_rd_data  ), //o
    .io_slv_rd_en      (io_wt_rd_5_en            ), //i
    .io_slv_wr_addr    (io_wt_wr_5_addr          ), //i
    .io_slv_wr_data    (io_wt_wr_5_data          ), //i
    .io_slv_wr_en      (io_wt_wr_5_en            ), //i
    .clk               (clk                      ), //i
    .reset             (reset                    )  //i
  );
  conv_mem wt_ram_6 (
    .io_slv_rd_addr    (io_wt_rd_6_addr          ), //i
    .io_slv_rd_data    (wt_ram_6_io_slv_rd_data  ), //o
    .io_slv_rd_en      (io_wt_rd_6_en            ), //i
    .io_slv_wr_addr    (io_wt_wr_6_addr          ), //i
    .io_slv_wr_data    (io_wt_wr_6_data          ), //i
    .io_slv_wr_en      (io_wt_wr_6_en            ), //i
    .clk               (clk                      ), //i
    .reset             (reset                    )  //i
  );
  conv_mem wt_ram_7 (
    .io_slv_rd_addr    (io_wt_rd_7_addr          ), //i
    .io_slv_rd_data    (wt_ram_7_io_slv_rd_data  ), //o
    .io_slv_rd_en      (io_wt_rd_7_en            ), //i
    .io_slv_wr_addr    (io_wt_wr_7_addr          ), //i
    .io_slv_wr_data    (io_wt_wr_7_data          ), //i
    .io_slv_wr_en      (io_wt_wr_7_en            ), //i
    .clk               (clk                      ), //i
    .reset             (reset                    )  //i
  );
  assign io_dt_rd_data = dt_ram_io_slv_rd_data;
  assign io_wt_rd_0_data = wt_ram_0_io_slv_rd_data;
  assign io_wt_rd_1_data = wt_ram_1_io_slv_rd_data;
  assign io_wt_rd_2_data = wt_ram_2_io_slv_rd_data;
  assign io_wt_rd_3_data = wt_ram_3_io_slv_rd_data;
  assign io_wt_rd_4_data = wt_ram_4_io_slv_rd_data;
  assign io_wt_rd_5_data = wt_ram_5_io_slv_rd_data;
  assign io_wt_rd_6_data = wt_ram_6_io_slv_rd_data;
  assign io_wt_rd_7_data = wt_ram_7_io_slv_rd_data;

endmodule

//conv_mem replaced by conv_mem

//conv_mem replaced by conv_mem

//conv_mem replaced by conv_mem

//conv_mem replaced by conv_mem

//conv_mem replaced by conv_mem

//conv_mem replaced by conv_mem

//conv_mem replaced by conv_mem

//conv_mem replaced by conv_mem

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
  wire       [11:0]   _zz_mem_port;
  wire       [255:0]  _zz_mem_port_1;
  wire       [11:0]   _zz_mem_port_2;
  wire       [11:0]   _zz_io_slv_rd_data_1;
  wire       [255:0]  slv_wr_data;
  wire       [31:0]   _zz_io_slv_rd_data;
  reg [255:0] mem [0:4095];

  assign _zz_mem_port = io_slv_wr_addr[11:0];
  assign _zz_io_slv_rd_data_1 = _zz_io_slv_rd_data[11:0];
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

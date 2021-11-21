// Generator : SpinalHDL v1.5.0    git head : 83a031922866b078c411ec5529e00f1b6e79f8e7
// Component : cvt_stream2uint
// Git hash  : e2189220af21b54a766af2e46e14139faede418a



module cvt_stream2uint (
  input               io_in_0_valid,
  output              io_in_0_ready,
  input      [7:0]    io_in_0_payload,
  input               io_in_1_valid,
  output              io_in_1_ready,
  input      [7:0]    io_in_1_payload,
  input               io_in_2_valid,
  output              io_in_2_ready,
  input      [7:0]    io_in_2_payload,
  input               io_in_3_valid,
  output              io_in_3_ready,
  input      [7:0]    io_in_3_payload,
  input               io_in_4_valid,
  output              io_in_4_ready,
  input      [7:0]    io_in_4_payload,
  input               io_in_5_valid,
  output              io_in_5_ready,
  input      [7:0]    io_in_5_payload,
  input               io_in_6_valid,
  output              io_in_6_ready,
  input      [7:0]    io_in_6_payload,
  input               io_in_7_valid,
  output              io_in_7_ready,
  input      [7:0]    io_in_7_payload,
  output              io_out_valid,
  input               io_out_ready,
  output     [63:0]   io_out_payload
);

  assign io_out_valid = (((((((io_in_0_valid && io_in_1_valid) && io_in_2_valid) && io_in_3_valid) && io_in_4_valid) && io_in_5_valid) && io_in_6_valid) && io_in_7_valid);
  assign io_in_0_ready = io_out_ready;
  assign io_in_1_ready = io_out_ready;
  assign io_in_2_ready = io_out_ready;
  assign io_in_3_ready = io_out_ready;
  assign io_in_4_ready = io_out_ready;
  assign io_in_5_ready = io_out_ready;
  assign io_in_6_ready = io_out_ready;
  assign io_in_7_ready = io_out_ready;
  assign io_out_payload = {{{{{{{io_in_0_payload,io_in_1_payload},io_in_2_payload},io_in_3_payload},io_in_4_payload},io_in_5_payload},io_in_6_payload},io_in_7_payload};

endmodule

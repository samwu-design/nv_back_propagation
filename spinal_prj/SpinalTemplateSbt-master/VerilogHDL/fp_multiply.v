// Generator : SpinalHDL v1.5.0    git head : 83a031922866b078c411ec5529e00f1b6e79f8e7
// Component : fp_multiply
// Git hash  : 468260b61ffaaed727a3b82deccca770fc0579f1


module fp_multiply (
  input               ina_valid,
  output              ina_ready,
  input      [31:0]   ina_payload,
  input               inb_valid,
  output              inb_ready,
  input      [31:0]   inb_payload,
  output              out_valid,
  input               out_ready,
  output     [31:0]   out_payload,
  input               clk
);
  wire                fp_multi_s_axis_a_tready;
  wire                fp_multi_s_axis_b_tready;
  wire                fp_multi_m_axis_result_tvalid;
  wire       [31:0]   fp_multi_m_axis_result_tdata;

  fp_adder_bb fp_multi (
    .aclk                    (clk                            ), //i
    .s_axis_a_tvalid         (ina_valid                      ), //i
    .s_axis_a_tready         (fp_multi_s_axis_a_tready       ), //o
    .s_axis_a_tdata          (ina_payload                    ), //i
    .s_axis_b_tvalid         (inb_valid                      ), //i
    .s_axis_b_tready         (fp_multi_s_axis_b_tready       ), //o
    .s_axis_b_tdata          (inb_payload                    ), //i
    .m_axis_result_tvalid    (fp_multi_m_axis_result_tvalid  ), //o
    .m_axis_result_tready    (out_ready                      ), //i
    .m_axis_result_tdata     (fp_multi_m_axis_result_tdata   )  //o
  );
  assign ina_ready = fp_multi_s_axis_a_tready;
  assign inb_ready = fp_multi_s_axis_b_tready;
  assign out_valid = fp_multi_m_axis_result_tvalid;
  assign out_payload = fp_multi_m_axis_result_tdata;

endmodule

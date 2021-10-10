// Generator : SpinalHDL v1.5.0    git head : 83a031922866b078c411ec5529e00f1b6e79f8e7
// Component : atom_adder
// Git hash  : 468260b61ffaaed727a3b82deccca770fc0579f1



module atom_adder (
  input               io_in_0_valid,
  output              io_in_0_ready,
  input      [31:0]   io_in_0_payload,
  input               io_in_1_valid,
  output              io_in_1_ready,
  input      [31:0]   io_in_1_payload,
  input               io_in_2_valid,
  output              io_in_2_ready,
  input      [31:0]   io_in_2_payload,
  input               io_in_3_valid,
  output              io_in_3_ready,
  input      [31:0]   io_in_3_payload,
  input               io_in_4_valid,
  output              io_in_4_ready,
  input      [31:0]   io_in_4_payload,
  input               io_in_5_valid,
  output              io_in_5_ready,
  input      [31:0]   io_in_5_payload,
  input               io_in_6_valid,
  output              io_in_6_ready,
  input      [31:0]   io_in_6_payload,
  input               io_in_7_valid,
  output              io_in_7_ready,
  input      [31:0]   io_in_7_payload,
  output              io_out_valid,
  input               io_out_ready,
  output     [31:0]   io_out_payload,
  input               clk
);
  wire                fp_adder_l0_0_ina_ready;
  wire                fp_adder_l0_0_inb_ready;
  wire                fp_adder_l0_0_out_valid;
  wire       [31:0]   fp_adder_l0_0_out_payload;
  wire                fp_adder_l0_1_ina_ready;
  wire                fp_adder_l0_1_inb_ready;
  wire                fp_adder_l0_1_out_valid;
  wire       [31:0]   fp_adder_l0_1_out_payload;
  wire                fp_adder_l0_2_ina_ready;
  wire                fp_adder_l0_2_inb_ready;
  wire                fp_adder_l0_2_out_valid;
  wire       [31:0]   fp_adder_l0_2_out_payload;
  wire                fp_adder_l0_3_ina_ready;
  wire                fp_adder_l0_3_inb_ready;
  wire                fp_adder_l0_3_out_valid;
  wire       [31:0]   fp_adder_l0_3_out_payload;
  wire                fp_adder_l1_0_ina_ready;
  wire                fp_adder_l1_0_inb_ready;
  wire                fp_adder_l1_0_out_valid;
  wire       [31:0]   fp_adder_l1_0_out_payload;
  wire                fp_adder_l1_1_ina_ready;
  wire                fp_adder_l1_1_inb_ready;
  wire                fp_adder_l1_1_out_valid;
  wire       [31:0]   fp_adder_l1_1_out_payload;
  wire                fp_adder_l2_ina_ready;
  wire                fp_adder_l2_inb_ready;
  wire                fp_adder_l2_out_valid;
  wire       [31:0]   fp_adder_l2_out_payload;

  fp_adder fp_adder_l0_0 (
    .ina_valid      (io_in_0_valid              ), //i
    .ina_ready      (fp_adder_l0_0_ina_ready    ), //o
    .ina_payload    (io_in_0_payload            ), //i
    .inb_valid      (io_in_1_valid              ), //i
    .inb_ready      (fp_adder_l0_0_inb_ready    ), //o
    .inb_payload    (io_in_1_payload            ), //i
    .out_valid      (fp_adder_l0_0_out_valid    ), //o
    .out_ready      (fp_adder_l1_0_ina_ready    ), //i
    .out_payload    (fp_adder_l0_0_out_payload  ), //o
    .clk            (clk                        )  //i
  );
  fp_adder fp_adder_l0_1 (
    .ina_valid      (io_in_2_valid              ), //i
    .ina_ready      (fp_adder_l0_1_ina_ready    ), //o
    .ina_payload    (io_in_2_payload            ), //i
    .inb_valid      (io_in_3_valid              ), //i
    .inb_ready      (fp_adder_l0_1_inb_ready    ), //o
    .inb_payload    (io_in_3_payload            ), //i
    .out_valid      (fp_adder_l0_1_out_valid    ), //o
    .out_ready      (fp_adder_l1_0_inb_ready    ), //i
    .out_payload    (fp_adder_l0_1_out_payload  ), //o
    .clk            (clk                        )  //i
  );
  fp_adder fp_adder_l0_2 (
    .ina_valid      (io_in_4_valid              ), //i
    .ina_ready      (fp_adder_l0_2_ina_ready    ), //o
    .ina_payload    (io_in_4_payload            ), //i
    .inb_valid      (io_in_5_valid              ), //i
    .inb_ready      (fp_adder_l0_2_inb_ready    ), //o
    .inb_payload    (io_in_5_payload            ), //i
    .out_valid      (fp_adder_l0_2_out_valid    ), //o
    .out_ready      (fp_adder_l1_1_ina_ready    ), //i
    .out_payload    (fp_adder_l0_2_out_payload  ), //o
    .clk            (clk                        )  //i
  );
  fp_adder fp_adder_l0_3 (
    .ina_valid      (io_in_6_valid              ), //i
    .ina_ready      (fp_adder_l0_3_ina_ready    ), //o
    .ina_payload    (io_in_6_payload            ), //i
    .inb_valid      (io_in_7_valid              ), //i
    .inb_ready      (fp_adder_l0_3_inb_ready    ), //o
    .inb_payload    (io_in_7_payload            ), //i
    .out_valid      (fp_adder_l0_3_out_valid    ), //o
    .out_ready      (fp_adder_l1_1_inb_ready    ), //i
    .out_payload    (fp_adder_l0_3_out_payload  ), //o
    .clk            (clk                        )  //i
  );
  fp_adder fp_adder_l1_0 (
    .ina_valid      (fp_adder_l0_0_out_valid    ), //i
    .ina_ready      (fp_adder_l1_0_ina_ready    ), //o
    .ina_payload    (fp_adder_l0_0_out_payload  ), //i
    .inb_valid      (fp_adder_l0_1_out_valid    ), //i
    .inb_ready      (fp_adder_l1_0_inb_ready    ), //o
    .inb_payload    (fp_adder_l0_1_out_payload  ), //i
    .out_valid      (fp_adder_l1_0_out_valid    ), //o
    .out_ready      (fp_adder_l2_ina_ready      ), //i
    .out_payload    (fp_adder_l1_0_out_payload  ), //o
    .clk            (clk                        )  //i
  );
  fp_adder fp_adder_l1_1 (
    .ina_valid      (fp_adder_l0_2_out_valid    ), //i
    .ina_ready      (fp_adder_l1_1_ina_ready    ), //o
    .ina_payload    (fp_adder_l0_2_out_payload  ), //i
    .inb_valid      (fp_adder_l0_3_out_valid    ), //i
    .inb_ready      (fp_adder_l1_1_inb_ready    ), //o
    .inb_payload    (fp_adder_l0_3_out_payload  ), //i
    .out_valid      (fp_adder_l1_1_out_valid    ), //o
    .out_ready      (fp_adder_l2_inb_ready      ), //i
    .out_payload    (fp_adder_l1_1_out_payload  ), //o
    .clk            (clk                        )  //i
  );
  fp_adder fp_adder_l2 (
    .ina_valid      (fp_adder_l1_0_out_valid    ), //i
    .ina_ready      (fp_adder_l2_ina_ready      ), //o
    .ina_payload    (fp_adder_l1_0_out_payload  ), //i
    .inb_valid      (fp_adder_l1_1_out_valid    ), //i
    .inb_ready      (fp_adder_l2_inb_ready      ), //o
    .inb_payload    (fp_adder_l1_1_out_payload  ), //i
    .out_valid      (fp_adder_l2_out_valid      ), //o
    .out_ready      (io_out_ready               ), //i
    .out_payload    (fp_adder_l2_out_payload    ), //o
    .clk            (clk                        )  //i
  );
  assign io_in_0_ready = fp_adder_l0_0_ina_ready;
  assign io_in_1_ready = fp_adder_l0_0_inb_ready;
  assign io_in_2_ready = fp_adder_l0_1_ina_ready;
  assign io_in_3_ready = fp_adder_l0_1_inb_ready;
  assign io_in_4_ready = fp_adder_l0_2_ina_ready;
  assign io_in_5_ready = fp_adder_l0_2_inb_ready;
  assign io_in_6_ready = fp_adder_l0_3_ina_ready;
  assign io_in_7_ready = fp_adder_l0_3_inb_ready;
  assign io_out_valid = fp_adder_l2_out_valid;
  assign io_out_payload = fp_adder_l2_out_payload;

endmodule

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

module fp_adder (
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
  wire                fp_adder_7_s_axis_a_tready;
  wire                fp_adder_7_s_axis_b_tready;
  wire                fp_adder_7_m_axis_result_tvalid;
  wire       [31:0]   fp_adder_7_m_axis_result_tdata;

  fp_adder_bb fp_adder_7 (
    .aclk                    (clk                              ), //i
    .s_axis_a_tvalid         (ina_valid                        ), //i
    .s_axis_a_tready         (fp_adder_7_s_axis_a_tready       ), //o
    .s_axis_a_tdata          (ina_payload                      ), //i
    .s_axis_b_tvalid         (inb_valid                        ), //i
    .s_axis_b_tready         (fp_adder_7_s_axis_b_tready       ), //o
    .s_axis_b_tdata          (inb_payload                      ), //i
    .m_axis_result_tvalid    (fp_adder_7_m_axis_result_tvalid  ), //o
    .m_axis_result_tready    (out_ready                        ), //i
    .m_axis_result_tdata     (fp_adder_7_m_axis_result_tdata   )  //o
  );
  assign ina_ready = fp_adder_7_s_axis_a_tready;
  assign inb_ready = fp_adder_7_s_axis_b_tready;
  assign out_valid = fp_adder_7_m_axis_result_tvalid;
  assign out_payload = fp_adder_7_m_axis_result_tdata;

endmodule

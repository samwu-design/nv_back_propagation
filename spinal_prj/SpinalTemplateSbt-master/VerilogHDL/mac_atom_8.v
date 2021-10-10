// Generator : SpinalHDL v1.5.0    git head : 83a031922866b078c411ec5529e00f1b6e79f8e7
// Component : mac_atom_8
// Git hash  : 468260b61ffaaed727a3b82deccca770fc0579f1



module mac_atom_8 (
  input               dataIn_a_valid,
  output              dataIn_a_ready,
  input      [31:0]   dataIn_a_payload_0,
  input      [31:0]   dataIn_a_payload_1,
  input      [31:0]   dataIn_a_payload_2,
  input      [31:0]   dataIn_a_payload_3,
  input      [31:0]   dataIn_a_payload_4,
  input      [31:0]   dataIn_a_payload_5,
  input      [31:0]   dataIn_a_payload_6,
  input      [31:0]   dataIn_a_payload_7,
  input               dataIn_b_valid,
  output              dataIn_b_ready,
  input      [31:0]   dataIn_b_payload_0,
  input      [31:0]   dataIn_b_payload_1,
  input      [31:0]   dataIn_b_payload_2,
  input      [31:0]   dataIn_b_payload_3,
  input      [31:0]   dataIn_b_payload_4,
  input      [31:0]   dataIn_b_payload_5,
  input      [31:0]   dataIn_b_payload_6,
  input      [31:0]   dataIn_b_payload_7,
  output              dataOut_valid,
  input               dataOut_ready,
  output     [31:0]   dataOut_payload_0,
  output     [31:0]   dataOut_payload_1,
  output     [31:0]   dataOut_payload_2,
  output     [31:0]   dataOut_payload_3,
  output     [31:0]   dataOut_payload_4,
  output     [31:0]   dataOut_payload_5,
  output     [31:0]   dataOut_payload_6,
  output     [31:0]   dataOut_payload_7,
  input               clk
);
  wire                fp_mul_0_s_axis_a_tready;
  wire                fp_mul_0_s_axis_b_tready;
  wire                fp_mul_0_m_axis_result_tvalid;
  wire       [31:0]   fp_mul_0_m_axis_result_tdata;
  wire                fp_mul_1_s_axis_a_tready;
  wire                fp_mul_1_s_axis_b_tready;
  wire                fp_mul_1_m_axis_result_tvalid;
  wire       [31:0]   fp_mul_1_m_axis_result_tdata;
  wire                fp_mul_2_s_axis_a_tready;
  wire                fp_mul_2_s_axis_b_tready;
  wire                fp_mul_2_m_axis_result_tvalid;
  wire       [31:0]   fp_mul_2_m_axis_result_tdata;
  wire                fp_mul_3_s_axis_a_tready;
  wire                fp_mul_3_s_axis_b_tready;
  wire                fp_mul_3_m_axis_result_tvalid;
  wire       [31:0]   fp_mul_3_m_axis_result_tdata;
  wire                fp_mul_4_s_axis_a_tready;
  wire                fp_mul_4_s_axis_b_tready;
  wire                fp_mul_4_m_axis_result_tvalid;
  wire       [31:0]   fp_mul_4_m_axis_result_tdata;
  wire                fp_mul_5_s_axis_a_tready;
  wire                fp_mul_5_s_axis_b_tready;
  wire                fp_mul_5_m_axis_result_tvalid;
  wire       [31:0]   fp_mul_5_m_axis_result_tdata;
  wire                fp_mul_6_s_axis_a_tready;
  wire                fp_mul_6_s_axis_b_tready;
  wire                fp_mul_6_m_axis_result_tvalid;
  wire       [31:0]   fp_mul_6_m_axis_result_tdata;
  wire                fp_mul_7_s_axis_a_tready;
  wire                fp_mul_7_s_axis_b_tready;
  wire                fp_mul_7_m_axis_result_tvalid;
  wire       [31:0]   fp_mul_7_m_axis_result_tdata;

  fp_multi fp_mul_0 (
    .aclk                    (clk                            ), //i
    .s_axis_a_tvalid         (dataIn_a_valid                 ), //i
    .s_axis_a_tready         (fp_mul_0_s_axis_a_tready       ), //o
    .s_axis_a_tdata          (dataIn_a_payload_0             ), //i
    .s_axis_b_tvalid         (dataIn_b_valid                 ), //i
    .s_axis_b_tready         (fp_mul_0_s_axis_b_tready       ), //o
    .s_axis_b_tdata          (dataIn_b_payload_0             ), //i
    .m_axis_result_tvalid    (fp_mul_0_m_axis_result_tvalid  ), //o
    .m_axis_result_tready    (dataOut_ready                  ), //i
    .m_axis_result_tdata     (fp_mul_0_m_axis_result_tdata   )  //o
  );
  fp_multi fp_mul_1 (
    .aclk                    (clk                            ), //i
    .s_axis_a_tvalid         (dataIn_a_valid                 ), //i
    .s_axis_a_tready         (fp_mul_1_s_axis_a_tready       ), //o
    .s_axis_a_tdata          (dataIn_a_payload_1             ), //i
    .s_axis_b_tvalid         (dataIn_b_valid                 ), //i
    .s_axis_b_tready         (fp_mul_1_s_axis_b_tready       ), //o
    .s_axis_b_tdata          (dataIn_b_payload_1             ), //i
    .m_axis_result_tvalid    (fp_mul_1_m_axis_result_tvalid  ), //o
    .m_axis_result_tready    (dataOut_ready                  ), //i
    .m_axis_result_tdata     (fp_mul_1_m_axis_result_tdata   )  //o
  );
  fp_multi fp_mul_2 (
    .aclk                    (clk                            ), //i
    .s_axis_a_tvalid         (dataIn_a_valid                 ), //i
    .s_axis_a_tready         (fp_mul_2_s_axis_a_tready       ), //o
    .s_axis_a_tdata          (dataIn_a_payload_2             ), //i
    .s_axis_b_tvalid         (dataIn_b_valid                 ), //i
    .s_axis_b_tready         (fp_mul_2_s_axis_b_tready       ), //o
    .s_axis_b_tdata          (dataIn_b_payload_2             ), //i
    .m_axis_result_tvalid    (fp_mul_2_m_axis_result_tvalid  ), //o
    .m_axis_result_tready    (dataOut_ready                  ), //i
    .m_axis_result_tdata     (fp_mul_2_m_axis_result_tdata   )  //o
  );
  fp_multi fp_mul_3 (
    .aclk                    (clk                            ), //i
    .s_axis_a_tvalid         (dataIn_a_valid                 ), //i
    .s_axis_a_tready         (fp_mul_3_s_axis_a_tready       ), //o
    .s_axis_a_tdata          (dataIn_a_payload_3             ), //i
    .s_axis_b_tvalid         (dataIn_b_valid                 ), //i
    .s_axis_b_tready         (fp_mul_3_s_axis_b_tready       ), //o
    .s_axis_b_tdata          (dataIn_b_payload_3             ), //i
    .m_axis_result_tvalid    (fp_mul_3_m_axis_result_tvalid  ), //o
    .m_axis_result_tready    (dataOut_ready                  ), //i
    .m_axis_result_tdata     (fp_mul_3_m_axis_result_tdata   )  //o
  );
  fp_multi fp_mul_4 (
    .aclk                    (clk                            ), //i
    .s_axis_a_tvalid         (dataIn_a_valid                 ), //i
    .s_axis_a_tready         (fp_mul_4_s_axis_a_tready       ), //o
    .s_axis_a_tdata          (dataIn_a_payload_4             ), //i
    .s_axis_b_tvalid         (dataIn_b_valid                 ), //i
    .s_axis_b_tready         (fp_mul_4_s_axis_b_tready       ), //o
    .s_axis_b_tdata          (dataIn_b_payload_4             ), //i
    .m_axis_result_tvalid    (fp_mul_4_m_axis_result_tvalid  ), //o
    .m_axis_result_tready    (dataOut_ready                  ), //i
    .m_axis_result_tdata     (fp_mul_4_m_axis_result_tdata   )  //o
  );
  fp_multi fp_mul_5 (
    .aclk                    (clk                            ), //i
    .s_axis_a_tvalid         (dataIn_a_valid                 ), //i
    .s_axis_a_tready         (fp_mul_5_s_axis_a_tready       ), //o
    .s_axis_a_tdata          (dataIn_a_payload_5             ), //i
    .s_axis_b_tvalid         (dataIn_b_valid                 ), //i
    .s_axis_b_tready         (fp_mul_5_s_axis_b_tready       ), //o
    .s_axis_b_tdata          (dataIn_b_payload_5             ), //i
    .m_axis_result_tvalid    (fp_mul_5_m_axis_result_tvalid  ), //o
    .m_axis_result_tready    (dataOut_ready                  ), //i
    .m_axis_result_tdata     (fp_mul_5_m_axis_result_tdata   )  //o
  );
  fp_multi fp_mul_6 (
    .aclk                    (clk                            ), //i
    .s_axis_a_tvalid         (dataIn_a_valid                 ), //i
    .s_axis_a_tready         (fp_mul_6_s_axis_a_tready       ), //o
    .s_axis_a_tdata          (dataIn_a_payload_6             ), //i
    .s_axis_b_tvalid         (dataIn_b_valid                 ), //i
    .s_axis_b_tready         (fp_mul_6_s_axis_b_tready       ), //o
    .s_axis_b_tdata          (dataIn_b_payload_6             ), //i
    .m_axis_result_tvalid    (fp_mul_6_m_axis_result_tvalid  ), //o
    .m_axis_result_tready    (dataOut_ready                  ), //i
    .m_axis_result_tdata     (fp_mul_6_m_axis_result_tdata   )  //o
  );
  fp_multi fp_mul_7 (
    .aclk                    (clk                            ), //i
    .s_axis_a_tvalid         (dataIn_a_valid                 ), //i
    .s_axis_a_tready         (fp_mul_7_s_axis_a_tready       ), //o
    .s_axis_a_tdata          (dataIn_a_payload_7             ), //i
    .s_axis_b_tvalid         (dataIn_b_valid                 ), //i
    .s_axis_b_tready         (fp_mul_7_s_axis_b_tready       ), //o
    .s_axis_b_tdata          (dataIn_b_payload_7             ), //i
    .m_axis_result_tvalid    (fp_mul_7_m_axis_result_tvalid  ), //o
    .m_axis_result_tready    (dataOut_ready                  ), //i
    .m_axis_result_tdata     (fp_mul_7_m_axis_result_tdata   )  //o
  );
  assign dataIn_a_ready = (((((((fp_mul_0_s_axis_a_tready && fp_mul_1_s_axis_a_tready) && fp_mul_2_s_axis_a_tready) && fp_mul_3_s_axis_a_tready) && fp_mul_4_s_axis_a_tready) && fp_mul_5_s_axis_a_tready) && fp_mul_6_s_axis_a_tready) && fp_mul_7_s_axis_a_tready);
  assign dataIn_b_ready = (((((((fp_mul_0_s_axis_b_tready && fp_mul_1_s_axis_b_tready) && fp_mul_2_s_axis_b_tready) && fp_mul_3_s_axis_b_tready) && fp_mul_4_s_axis_b_tready) && fp_mul_5_s_axis_b_tready) && fp_mul_6_s_axis_b_tready) && fp_mul_7_s_axis_b_tready);
  assign dataOut_valid = (((((((fp_mul_0_m_axis_result_tvalid && fp_mul_1_m_axis_result_tvalid) && fp_mul_2_m_axis_result_tvalid) && fp_mul_3_m_axis_result_tvalid) && fp_mul_4_m_axis_result_tvalid) && fp_mul_5_m_axis_result_tvalid) && fp_mul_6_m_axis_result_tvalid) && fp_mul_7_m_axis_result_tvalid);
  assign dataOut_payload_0 = fp_mul_0_m_axis_result_tdata;
  assign dataOut_payload_1 = fp_mul_1_m_axis_result_tdata;
  assign dataOut_payload_2 = fp_mul_2_m_axis_result_tdata;
  assign dataOut_payload_3 = fp_mul_3_m_axis_result_tdata;
  assign dataOut_payload_4 = fp_mul_4_m_axis_result_tdata;
  assign dataOut_payload_5 = fp_mul_5_m_axis_result_tdata;
  assign dataOut_payload_6 = fp_mul_6_m_axis_result_tdata;
  assign dataOut_payload_7 = fp_mul_7_m_axis_result_tdata;

endmodule

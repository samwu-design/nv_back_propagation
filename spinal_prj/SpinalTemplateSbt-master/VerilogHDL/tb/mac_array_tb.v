// Generator : SpinalHDL v1.5.0    git head : 83a031922866b078c411ec5529e00f1b6e79f8e7
// Component : mac_array_tb
// Git hash  : 468260b61ffaaed727a3b82deccca770fc0579f1



module mac_array_tb (
);

reg clk;

initial begin
     clk = 0;
end

always@(*) #10 clk <= ~clk;

  wire                dut_io_in_data_a_ready;
  wire                dut_io_in_data_b_0_ready;
  wire                dut_io_in_data_b_1_ready;
  wire                dut_io_in_data_b_2_ready;
  wire                dut_io_in_data_b_3_ready;
  wire                dut_io_in_data_b_4_ready;
  wire                dut_io_in_data_b_5_ready;
  wire                dut_io_in_data_b_6_ready;
  wire                dut_io_in_data_b_7_ready;
  wire                dut_io_o_result_0_valid;
  wire       [31:0]   dut_io_o_result_0_payload_0;
  wire       [31:0]   dut_io_o_result_0_payload_1;
  wire       [31:0]   dut_io_o_result_0_payload_2;
  wire       [31:0]   dut_io_o_result_0_payload_3;
  wire       [31:0]   dut_io_o_result_0_payload_4;
  wire       [31:0]   dut_io_o_result_0_payload_5;
  wire       [31:0]   dut_io_o_result_0_payload_6;
  wire       [31:0]   dut_io_o_result_0_payload_7;
  wire                dut_io_o_result_1_valid;
  wire       [31:0]   dut_io_o_result_1_payload_0;
  wire       [31:0]   dut_io_o_result_1_payload_1;
  wire       [31:0]   dut_io_o_result_1_payload_2;
  wire       [31:0]   dut_io_o_result_1_payload_3;
  wire       [31:0]   dut_io_o_result_1_payload_4;
  wire       [31:0]   dut_io_o_result_1_payload_5;
  wire       [31:0]   dut_io_o_result_1_payload_6;
  wire       [31:0]   dut_io_o_result_1_payload_7;
  wire                dut_io_o_result_2_valid;
  wire       [31:0]   dut_io_o_result_2_payload_0;
  wire       [31:0]   dut_io_o_result_2_payload_1;
  wire       [31:0]   dut_io_o_result_2_payload_2;
  wire       [31:0]   dut_io_o_result_2_payload_3;
  wire       [31:0]   dut_io_o_result_2_payload_4;
  wire       [31:0]   dut_io_o_result_2_payload_5;
  wire       [31:0]   dut_io_o_result_2_payload_6;
  wire       [31:0]   dut_io_o_result_2_payload_7;
  wire                dut_io_o_result_3_valid;
  wire       [31:0]   dut_io_o_result_3_payload_0;
  wire       [31:0]   dut_io_o_result_3_payload_1;
  wire       [31:0]   dut_io_o_result_3_payload_2;
  wire       [31:0]   dut_io_o_result_3_payload_3;
  wire       [31:0]   dut_io_o_result_3_payload_4;
  wire       [31:0]   dut_io_o_result_3_payload_5;
  wire       [31:0]   dut_io_o_result_3_payload_6;
  wire       [31:0]   dut_io_o_result_3_payload_7;
  wire                dut_io_o_result_4_valid;
  wire       [31:0]   dut_io_o_result_4_payload_0;
  wire       [31:0]   dut_io_o_result_4_payload_1;
  wire       [31:0]   dut_io_o_result_4_payload_2;
  wire       [31:0]   dut_io_o_result_4_payload_3;
  wire       [31:0]   dut_io_o_result_4_payload_4;
  wire       [31:0]   dut_io_o_result_4_payload_5;
  wire       [31:0]   dut_io_o_result_4_payload_6;
  wire       [31:0]   dut_io_o_result_4_payload_7;
  wire                dut_io_o_result_5_valid;
  wire       [31:0]   dut_io_o_result_5_payload_0;
  wire       [31:0]   dut_io_o_result_5_payload_1;
  wire       [31:0]   dut_io_o_result_5_payload_2;
  wire       [31:0]   dut_io_o_result_5_payload_3;
  wire       [31:0]   dut_io_o_result_5_payload_4;
  wire       [31:0]   dut_io_o_result_5_payload_5;
  wire       [31:0]   dut_io_o_result_5_payload_6;
  wire       [31:0]   dut_io_o_result_5_payload_7;
  wire                dut_io_o_result_6_valid;
  wire       [31:0]   dut_io_o_result_6_payload_0;
  wire       [31:0]   dut_io_o_result_6_payload_1;
  wire       [31:0]   dut_io_o_result_6_payload_2;
  wire       [31:0]   dut_io_o_result_6_payload_3;
  wire       [31:0]   dut_io_o_result_6_payload_4;
  wire       [31:0]   dut_io_o_result_6_payload_5;
  wire       [31:0]   dut_io_o_result_6_payload_6;
  wire       [31:0]   dut_io_o_result_6_payload_7;
  wire                dut_io_o_result_7_valid;
  wire       [31:0]   dut_io_o_result_7_payload_0;
  wire       [31:0]   dut_io_o_result_7_payload_1;
  wire       [31:0]   dut_io_o_result_7_payload_2;
  wire       [31:0]   dut_io_o_result_7_payload_3;
  wire       [31:0]   dut_io_o_result_7_payload_4;
  wire       [31:0]   dut_io_o_result_7_payload_5;
  wire       [31:0]   dut_io_o_result_7_payload_6;
  wire       [31:0]   dut_io_o_result_7_payload_7;
  wire                coreClock;
  wire                coreReset;
  wire       [31:0]   testVec_0;
  wire       [31:0]   testVec_1;
  wire       [31:0]   testVec_2;
  wire       [31:0]   testVec_3;
  wire       [31:0]   testVec_4;
  wire       [31:0]   testVec_5;
  wire       [31:0]   testVec_6;
  wire       [31:0]   testVec_7;

  mac_array_8 dut (
    .io_in_data_a_valid          (1'b1                         ), //i
    .io_in_data_a_ready          (dut_io_in_data_a_ready       ), //o
    .io_in_data_a_payload_0      (32'h0                        ), //i
    .io_in_data_a_payload_1      (32'h00000001                 ), //i
    .io_in_data_a_payload_2      (32'h00000002                 ), //i
    .io_in_data_a_payload_3      (32'h00000003                 ), //i
    .io_in_data_a_payload_4      (32'h00000004                 ), //i
    .io_in_data_a_payload_5      (32'h00000005                 ), //i
    .io_in_data_a_payload_6      (32'h00000006                 ), //i
    .io_in_data_a_payload_7      (32'h00000007                 ), //i
    .io_in_data_b_0_valid        (1'b1                         ), //i
    .io_in_data_b_0_ready        (dut_io_in_data_b_0_ready     ), //o
    .io_in_data_b_0_payload_0    (32'h0                        ), //i
    .io_in_data_b_0_payload_1    (32'h00000001                 ), //i
    .io_in_data_b_0_payload_2    (32'h00000002                 ), //i
    .io_in_data_b_0_payload_3    (32'h00000003                 ), //i
    .io_in_data_b_0_payload_4    (32'h00000004                 ), //i
    .io_in_data_b_0_payload_5    (32'h00000005                 ), //i
    .io_in_data_b_0_payload_6    (32'h00000006                 ), //i
    .io_in_data_b_0_payload_7    (32'h00000007                 ), //i
    .io_in_data_b_1_valid        (1'b1                         ), //i
    .io_in_data_b_1_ready        (dut_io_in_data_b_1_ready     ), //o
    .io_in_data_b_1_payload_0    (32'h0                        ), //i
    .io_in_data_b_1_payload_1    (32'h00000001                 ), //i
    .io_in_data_b_1_payload_2    (32'h00000002                 ), //i
    .io_in_data_b_1_payload_3    (32'h00000003                 ), //i
    .io_in_data_b_1_payload_4    (32'h00000004                 ), //i
    .io_in_data_b_1_payload_5    (32'h00000005                 ), //i
    .io_in_data_b_1_payload_6    (32'h00000006                 ), //i
    .io_in_data_b_1_payload_7    (32'h00000007                 ), //i
    .io_in_data_b_2_valid        (1'b1                         ), //i
    .io_in_data_b_2_ready        (dut_io_in_data_b_2_ready     ), //o
    .io_in_data_b_2_payload_0    (32'h0                        ), //i
    .io_in_data_b_2_payload_1    (32'h00000001                 ), //i
    .io_in_data_b_2_payload_2    (32'h00000002                 ), //i
    .io_in_data_b_2_payload_3    (32'h00000003                 ), //i
    .io_in_data_b_2_payload_4    (32'h00000004                 ), //i
    .io_in_data_b_2_payload_5    (32'h00000005                 ), //i
    .io_in_data_b_2_payload_6    (32'h00000006                 ), //i
    .io_in_data_b_2_payload_7    (32'h00000007                 ), //i
    .io_in_data_b_3_valid        (1'b1                         ), //i
    .io_in_data_b_3_ready        (dut_io_in_data_b_3_ready     ), //o
    .io_in_data_b_3_payload_0    (32'h0                        ), //i
    .io_in_data_b_3_payload_1    (32'h00000001                 ), //i
    .io_in_data_b_3_payload_2    (32'h00000002                 ), //i
    .io_in_data_b_3_payload_3    (32'h00000003                 ), //i
    .io_in_data_b_3_payload_4    (32'h00000004                 ), //i
    .io_in_data_b_3_payload_5    (32'h00000005                 ), //i
    .io_in_data_b_3_payload_6    (32'h00000006                 ), //i
    .io_in_data_b_3_payload_7    (32'h00000007                 ), //i
    .io_in_data_b_4_valid        (1'b1                         ), //i
    .io_in_data_b_4_ready        (dut_io_in_data_b_4_ready     ), //o
    .io_in_data_b_4_payload_0    (32'h0                        ), //i
    .io_in_data_b_4_payload_1    (32'h00000001                 ), //i
    .io_in_data_b_4_payload_2    (32'h00000002                 ), //i
    .io_in_data_b_4_payload_3    (32'h00000003                 ), //i
    .io_in_data_b_4_payload_4    (32'h00000004                 ), //i
    .io_in_data_b_4_payload_5    (32'h00000005                 ), //i
    .io_in_data_b_4_payload_6    (32'h00000006                 ), //i
    .io_in_data_b_4_payload_7    (32'h00000007                 ), //i
    .io_in_data_b_5_valid        (1'b1                         ), //i
    .io_in_data_b_5_ready        (dut_io_in_data_b_5_ready     ), //o
    .io_in_data_b_5_payload_0    (32'h0                        ), //i
    .io_in_data_b_5_payload_1    (32'h00000001                 ), //i
    .io_in_data_b_5_payload_2    (32'h00000002                 ), //i
    .io_in_data_b_5_payload_3    (32'h00000003                 ), //i
    .io_in_data_b_5_payload_4    (32'h00000004                 ), //i
    .io_in_data_b_5_payload_5    (32'h00000005                 ), //i
    .io_in_data_b_5_payload_6    (32'h00000006                 ), //i
    .io_in_data_b_5_payload_7    (32'h00000007                 ), //i
    .io_in_data_b_6_valid        (1'b1                         ), //i
    .io_in_data_b_6_ready        (dut_io_in_data_b_6_ready     ), //o
    .io_in_data_b_6_payload_0    (32'h0                        ), //i
    .io_in_data_b_6_payload_1    (32'h00000001                 ), //i
    .io_in_data_b_6_payload_2    (32'h00000002                 ), //i
    .io_in_data_b_6_payload_3    (32'h00000003                 ), //i
    .io_in_data_b_6_payload_4    (32'h00000004                 ), //i
    .io_in_data_b_6_payload_5    (32'h00000005                 ), //i
    .io_in_data_b_6_payload_6    (32'h00000006                 ), //i
    .io_in_data_b_6_payload_7    (32'h00000007                 ), //i
    .io_in_data_b_7_valid        (1'b1                         ), //i
    .io_in_data_b_7_ready        (dut_io_in_data_b_7_ready     ), //o
    .io_in_data_b_7_payload_0    (32'h0                        ), //i
    .io_in_data_b_7_payload_1    (32'h00000001                 ), //i
    .io_in_data_b_7_payload_2    (32'h00000002                 ), //i
    .io_in_data_b_7_payload_3    (32'h00000003                 ), //i
    .io_in_data_b_7_payload_4    (32'h00000004                 ), //i
    .io_in_data_b_7_payload_5    (32'h00000005                 ), //i
    .io_in_data_b_7_payload_6    (32'h00000006                 ), //i
    .io_in_data_b_7_payload_7    (32'h00000007                 ), //i
    .io_o_result_0_valid         (dut_io_o_result_0_valid      ), //o
    .io_o_result_0_ready         (1'b1                         ), //i
    .io_o_result_0_payload_0     (dut_io_o_result_0_payload_0  ), //o
    .io_o_result_0_payload_1     (dut_io_o_result_0_payload_1  ), //o
    .io_o_result_0_payload_2     (dut_io_o_result_0_payload_2  ), //o
    .io_o_result_0_payload_3     (dut_io_o_result_0_payload_3  ), //o
    .io_o_result_0_payload_4     (dut_io_o_result_0_payload_4  ), //o
    .io_o_result_0_payload_5     (dut_io_o_result_0_payload_5  ), //o
    .io_o_result_0_payload_6     (dut_io_o_result_0_payload_6  ), //o
    .io_o_result_0_payload_7     (dut_io_o_result_0_payload_7  ), //o
    .io_o_result_1_valid         (dut_io_o_result_1_valid      ), //o
    .io_o_result_1_ready         (1'b1                         ), //i
    .io_o_result_1_payload_0     (dut_io_o_result_1_payload_0  ), //o
    .io_o_result_1_payload_1     (dut_io_o_result_1_payload_1  ), //o
    .io_o_result_1_payload_2     (dut_io_o_result_1_payload_2  ), //o
    .io_o_result_1_payload_3     (dut_io_o_result_1_payload_3  ), //o
    .io_o_result_1_payload_4     (dut_io_o_result_1_payload_4  ), //o
    .io_o_result_1_payload_5     (dut_io_o_result_1_payload_5  ), //o
    .io_o_result_1_payload_6     (dut_io_o_result_1_payload_6  ), //o
    .io_o_result_1_payload_7     (dut_io_o_result_1_payload_7  ), //o
    .io_o_result_2_valid         (dut_io_o_result_2_valid      ), //o
    .io_o_result_2_ready         (1'b1                         ), //i
    .io_o_result_2_payload_0     (dut_io_o_result_2_payload_0  ), //o
    .io_o_result_2_payload_1     (dut_io_o_result_2_payload_1  ), //o
    .io_o_result_2_payload_2     (dut_io_o_result_2_payload_2  ), //o
    .io_o_result_2_payload_3     (dut_io_o_result_2_payload_3  ), //o
    .io_o_result_2_payload_4     (dut_io_o_result_2_payload_4  ), //o
    .io_o_result_2_payload_5     (dut_io_o_result_2_payload_5  ), //o
    .io_o_result_2_payload_6     (dut_io_o_result_2_payload_6  ), //o
    .io_o_result_2_payload_7     (dut_io_o_result_2_payload_7  ), //o
    .io_o_result_3_valid         (dut_io_o_result_3_valid      ), //o
    .io_o_result_3_ready         (1'b1                         ), //i
    .io_o_result_3_payload_0     (dut_io_o_result_3_payload_0  ), //o
    .io_o_result_3_payload_1     (dut_io_o_result_3_payload_1  ), //o
    .io_o_result_3_payload_2     (dut_io_o_result_3_payload_2  ), //o
    .io_o_result_3_payload_3     (dut_io_o_result_3_payload_3  ), //o
    .io_o_result_3_payload_4     (dut_io_o_result_3_payload_4  ), //o
    .io_o_result_3_payload_5     (dut_io_o_result_3_payload_5  ), //o
    .io_o_result_3_payload_6     (dut_io_o_result_3_payload_6  ), //o
    .io_o_result_3_payload_7     (dut_io_o_result_3_payload_7  ), //o
    .io_o_result_4_valid         (dut_io_o_result_4_valid      ), //o
    .io_o_result_4_ready         (1'b1                         ), //i
    .io_o_result_4_payload_0     (dut_io_o_result_4_payload_0  ), //o
    .io_o_result_4_payload_1     (dut_io_o_result_4_payload_1  ), //o
    .io_o_result_4_payload_2     (dut_io_o_result_4_payload_2  ), //o
    .io_o_result_4_payload_3     (dut_io_o_result_4_payload_3  ), //o
    .io_o_result_4_payload_4     (dut_io_o_result_4_payload_4  ), //o
    .io_o_result_4_payload_5     (dut_io_o_result_4_payload_5  ), //o
    .io_o_result_4_payload_6     (dut_io_o_result_4_payload_6  ), //o
    .io_o_result_4_payload_7     (dut_io_o_result_4_payload_7  ), //o
    .io_o_result_5_valid         (dut_io_o_result_5_valid      ), //o
    .io_o_result_5_ready         (1'b1                         ), //i
    .io_o_result_5_payload_0     (dut_io_o_result_5_payload_0  ), //o
    .io_o_result_5_payload_1     (dut_io_o_result_5_payload_1  ), //o
    .io_o_result_5_payload_2     (dut_io_o_result_5_payload_2  ), //o
    .io_o_result_5_payload_3     (dut_io_o_result_5_payload_3  ), //o
    .io_o_result_5_payload_4     (dut_io_o_result_5_payload_4  ), //o
    .io_o_result_5_payload_5     (dut_io_o_result_5_payload_5  ), //o
    .io_o_result_5_payload_6     (dut_io_o_result_5_payload_6  ), //o
    .io_o_result_5_payload_7     (dut_io_o_result_5_payload_7  ), //o
    .io_o_result_6_valid         (dut_io_o_result_6_valid      ), //o
    .io_o_result_6_ready         (1'b1                         ), //i
    .io_o_result_6_payload_0     (dut_io_o_result_6_payload_0  ), //o
    .io_o_result_6_payload_1     (dut_io_o_result_6_payload_1  ), //o
    .io_o_result_6_payload_2     (dut_io_o_result_6_payload_2  ), //o
    .io_o_result_6_payload_3     (dut_io_o_result_6_payload_3  ), //o
    .io_o_result_6_payload_4     (dut_io_o_result_6_payload_4  ), //o
    .io_o_result_6_payload_5     (dut_io_o_result_6_payload_5  ), //o
    .io_o_result_6_payload_6     (dut_io_o_result_6_payload_6  ), //o
    .io_o_result_6_payload_7     (dut_io_o_result_6_payload_7  ), //o
    .io_o_result_7_valid         (dut_io_o_result_7_valid      ), //o
    .io_o_result_7_ready         (1'b1                         ), //i
    .io_o_result_7_payload_0     (dut_io_o_result_7_payload_0  ), //o
    .io_o_result_7_payload_1     (dut_io_o_result_7_payload_1  ), //o
    .io_o_result_7_payload_2     (dut_io_o_result_7_payload_2  ), //o
    .io_o_result_7_payload_3     (dut_io_o_result_7_payload_3  ), //o
    .io_o_result_7_payload_4     (dut_io_o_result_7_payload_4  ), //o
    .io_o_result_7_payload_5     (dut_io_o_result_7_payload_5  ), //o
    .io_o_result_7_payload_6     (dut_io_o_result_7_payload_6  ), //o
    .io_o_result_7_payload_7     (dut_io_o_result_7_payload_7  ), //o
    .clk                         (clk                          )  //i
  );

endmodule



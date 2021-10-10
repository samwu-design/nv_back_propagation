// Generator : SpinalHDL v1.5.0    git head : 83a031922866b078c411ec5529e00f1b6e79f8e7
// Component : mac_array_8
// Git hash  : 468260b61ffaaed727a3b82deccca770fc0579f1



module mac_array_8 (
  input               io_in_data_a_valid,
  output              io_in_data_a_ready,
  input      [31:0]   io_in_data_a_payload_0,
  input      [31:0]   io_in_data_a_payload_1,
  input      [31:0]   io_in_data_a_payload_2,
  input      [31:0]   io_in_data_a_payload_3,
  input      [31:0]   io_in_data_a_payload_4,
  input      [31:0]   io_in_data_a_payload_5,
  input      [31:0]   io_in_data_a_payload_6,
  input      [31:0]   io_in_data_a_payload_7,
  input               io_in_data_b_0_valid,
  output              io_in_data_b_0_ready,
  input      [31:0]   io_in_data_b_0_payload_0,
  input      [31:0]   io_in_data_b_0_payload_1,
  input      [31:0]   io_in_data_b_0_payload_2,
  input      [31:0]   io_in_data_b_0_payload_3,
  input      [31:0]   io_in_data_b_0_payload_4,
  input      [31:0]   io_in_data_b_0_payload_5,
  input      [31:0]   io_in_data_b_0_payload_6,
  input      [31:0]   io_in_data_b_0_payload_7,
  input               io_in_data_b_1_valid,
  output              io_in_data_b_1_ready,
  input      [31:0]   io_in_data_b_1_payload_0,
  input      [31:0]   io_in_data_b_1_payload_1,
  input      [31:0]   io_in_data_b_1_payload_2,
  input      [31:0]   io_in_data_b_1_payload_3,
  input      [31:0]   io_in_data_b_1_payload_4,
  input      [31:0]   io_in_data_b_1_payload_5,
  input      [31:0]   io_in_data_b_1_payload_6,
  input      [31:0]   io_in_data_b_1_payload_7,
  input               io_in_data_b_2_valid,
  output              io_in_data_b_2_ready,
  input      [31:0]   io_in_data_b_2_payload_0,
  input      [31:0]   io_in_data_b_2_payload_1,
  input      [31:0]   io_in_data_b_2_payload_2,
  input      [31:0]   io_in_data_b_2_payload_3,
  input      [31:0]   io_in_data_b_2_payload_4,
  input      [31:0]   io_in_data_b_2_payload_5,
  input      [31:0]   io_in_data_b_2_payload_6,
  input      [31:0]   io_in_data_b_2_payload_7,
  input               io_in_data_b_3_valid,
  output              io_in_data_b_3_ready,
  input      [31:0]   io_in_data_b_3_payload_0,
  input      [31:0]   io_in_data_b_3_payload_1,
  input      [31:0]   io_in_data_b_3_payload_2,
  input      [31:0]   io_in_data_b_3_payload_3,
  input      [31:0]   io_in_data_b_3_payload_4,
  input      [31:0]   io_in_data_b_3_payload_5,
  input      [31:0]   io_in_data_b_3_payload_6,
  input      [31:0]   io_in_data_b_3_payload_7,
  input               io_in_data_b_4_valid,
  output              io_in_data_b_4_ready,
  input      [31:0]   io_in_data_b_4_payload_0,
  input      [31:0]   io_in_data_b_4_payload_1,
  input      [31:0]   io_in_data_b_4_payload_2,
  input      [31:0]   io_in_data_b_4_payload_3,
  input      [31:0]   io_in_data_b_4_payload_4,
  input      [31:0]   io_in_data_b_4_payload_5,
  input      [31:0]   io_in_data_b_4_payload_6,
  input      [31:0]   io_in_data_b_4_payload_7,
  input               io_in_data_b_5_valid,
  output              io_in_data_b_5_ready,
  input      [31:0]   io_in_data_b_5_payload_0,
  input      [31:0]   io_in_data_b_5_payload_1,
  input      [31:0]   io_in_data_b_5_payload_2,
  input      [31:0]   io_in_data_b_5_payload_3,
  input      [31:0]   io_in_data_b_5_payload_4,
  input      [31:0]   io_in_data_b_5_payload_5,
  input      [31:0]   io_in_data_b_5_payload_6,
  input      [31:0]   io_in_data_b_5_payload_7,
  input               io_in_data_b_6_valid,
  output              io_in_data_b_6_ready,
  input      [31:0]   io_in_data_b_6_payload_0,
  input      [31:0]   io_in_data_b_6_payload_1,
  input      [31:0]   io_in_data_b_6_payload_2,
  input      [31:0]   io_in_data_b_6_payload_3,
  input      [31:0]   io_in_data_b_6_payload_4,
  input      [31:0]   io_in_data_b_6_payload_5,
  input      [31:0]   io_in_data_b_6_payload_6,
  input      [31:0]   io_in_data_b_6_payload_7,
  input               io_in_data_b_7_valid,
  output              io_in_data_b_7_ready,
  input      [31:0]   io_in_data_b_7_payload_0,
  input      [31:0]   io_in_data_b_7_payload_1,
  input      [31:0]   io_in_data_b_7_payload_2,
  input      [31:0]   io_in_data_b_7_payload_3,
  input      [31:0]   io_in_data_b_7_payload_4,
  input      [31:0]   io_in_data_b_7_payload_5,
  input      [31:0]   io_in_data_b_7_payload_6,
  input      [31:0]   io_in_data_b_7_payload_7,
  output              io_o_result_0_valid,
  input               io_o_result_0_ready,
  output     [31:0]   io_o_result_0_payload_0,
  output     [31:0]   io_o_result_0_payload_1,
  output     [31:0]   io_o_result_0_payload_2,
  output     [31:0]   io_o_result_0_payload_3,
  output     [31:0]   io_o_result_0_payload_4,
  output     [31:0]   io_o_result_0_payload_5,
  output     [31:0]   io_o_result_0_payload_6,
  output     [31:0]   io_o_result_0_payload_7,
  output              io_o_result_1_valid,
  input               io_o_result_1_ready,
  output     [31:0]   io_o_result_1_payload_0,
  output     [31:0]   io_o_result_1_payload_1,
  output     [31:0]   io_o_result_1_payload_2,
  output     [31:0]   io_o_result_1_payload_3,
  output     [31:0]   io_o_result_1_payload_4,
  output     [31:0]   io_o_result_1_payload_5,
  output     [31:0]   io_o_result_1_payload_6,
  output     [31:0]   io_o_result_1_payload_7,
  output              io_o_result_2_valid,
  input               io_o_result_2_ready,
  output     [31:0]   io_o_result_2_payload_0,
  output     [31:0]   io_o_result_2_payload_1,
  output     [31:0]   io_o_result_2_payload_2,
  output     [31:0]   io_o_result_2_payload_3,
  output     [31:0]   io_o_result_2_payload_4,
  output     [31:0]   io_o_result_2_payload_5,
  output     [31:0]   io_o_result_2_payload_6,
  output     [31:0]   io_o_result_2_payload_7,
  output              io_o_result_3_valid,
  input               io_o_result_3_ready,
  output     [31:0]   io_o_result_3_payload_0,
  output     [31:0]   io_o_result_3_payload_1,
  output     [31:0]   io_o_result_3_payload_2,
  output     [31:0]   io_o_result_3_payload_3,
  output     [31:0]   io_o_result_3_payload_4,
  output     [31:0]   io_o_result_3_payload_5,
  output     [31:0]   io_o_result_3_payload_6,
  output     [31:0]   io_o_result_3_payload_7,
  output              io_o_result_4_valid,
  input               io_o_result_4_ready,
  output     [31:0]   io_o_result_4_payload_0,
  output     [31:0]   io_o_result_4_payload_1,
  output     [31:0]   io_o_result_4_payload_2,
  output     [31:0]   io_o_result_4_payload_3,
  output     [31:0]   io_o_result_4_payload_4,
  output     [31:0]   io_o_result_4_payload_5,
  output     [31:0]   io_o_result_4_payload_6,
  output     [31:0]   io_o_result_4_payload_7,
  output              io_o_result_5_valid,
  input               io_o_result_5_ready,
  output     [31:0]   io_o_result_5_payload_0,
  output     [31:0]   io_o_result_5_payload_1,
  output     [31:0]   io_o_result_5_payload_2,
  output     [31:0]   io_o_result_5_payload_3,
  output     [31:0]   io_o_result_5_payload_4,
  output     [31:0]   io_o_result_5_payload_5,
  output     [31:0]   io_o_result_5_payload_6,
  output     [31:0]   io_o_result_5_payload_7,
  output              io_o_result_6_valid,
  input               io_o_result_6_ready,
  output     [31:0]   io_o_result_6_payload_0,
  output     [31:0]   io_o_result_6_payload_1,
  output     [31:0]   io_o_result_6_payload_2,
  output     [31:0]   io_o_result_6_payload_3,
  output     [31:0]   io_o_result_6_payload_4,
  output     [31:0]   io_o_result_6_payload_5,
  output     [31:0]   io_o_result_6_payload_6,
  output     [31:0]   io_o_result_6_payload_7,
  output              io_o_result_7_valid,
  input               io_o_result_7_ready,
  output     [31:0]   io_o_result_7_payload_0,
  output     [31:0]   io_o_result_7_payload_1,
  output     [31:0]   io_o_result_7_payload_2,
  output     [31:0]   io_o_result_7_payload_3,
  output     [31:0]   io_o_result_7_payload_4,
  output     [31:0]   io_o_result_7_payload_5,
  output     [31:0]   io_o_result_7_payload_6,
  output     [31:0]   io_o_result_7_payload_7,
  input               clk
);
  wire                mac_atom_0_dataIn_a_ready;
  wire                mac_atom_0_dataIn_b_ready;
  wire                mac_atom_0_dataOut_valid;
  wire       [31:0]   mac_atom_0_dataOut_payload_0;
  wire       [31:0]   mac_atom_0_dataOut_payload_1;
  wire       [31:0]   mac_atom_0_dataOut_payload_2;
  wire       [31:0]   mac_atom_0_dataOut_payload_3;
  wire       [31:0]   mac_atom_0_dataOut_payload_4;
  wire       [31:0]   mac_atom_0_dataOut_payload_5;
  wire       [31:0]   mac_atom_0_dataOut_payload_6;
  wire       [31:0]   mac_atom_0_dataOut_payload_7;
  wire                mac_atom_1_dataIn_a_ready;
  wire                mac_atom_1_dataIn_b_ready;
  wire                mac_atom_1_dataOut_valid;
  wire       [31:0]   mac_atom_1_dataOut_payload_0;
  wire       [31:0]   mac_atom_1_dataOut_payload_1;
  wire       [31:0]   mac_atom_1_dataOut_payload_2;
  wire       [31:0]   mac_atom_1_dataOut_payload_3;
  wire       [31:0]   mac_atom_1_dataOut_payload_4;
  wire       [31:0]   mac_atom_1_dataOut_payload_5;
  wire       [31:0]   mac_atom_1_dataOut_payload_6;
  wire       [31:0]   mac_atom_1_dataOut_payload_7;
  wire                mac_atom_2_dataIn_a_ready;
  wire                mac_atom_2_dataIn_b_ready;
  wire                mac_atom_2_dataOut_valid;
  wire       [31:0]   mac_atom_2_dataOut_payload_0;
  wire       [31:0]   mac_atom_2_dataOut_payload_1;
  wire       [31:0]   mac_atom_2_dataOut_payload_2;
  wire       [31:0]   mac_atom_2_dataOut_payload_3;
  wire       [31:0]   mac_atom_2_dataOut_payload_4;
  wire       [31:0]   mac_atom_2_dataOut_payload_5;
  wire       [31:0]   mac_atom_2_dataOut_payload_6;
  wire       [31:0]   mac_atom_2_dataOut_payload_7;
  wire                mac_atom_3_dataIn_a_ready;
  wire                mac_atom_3_dataIn_b_ready;
  wire                mac_atom_3_dataOut_valid;
  wire       [31:0]   mac_atom_3_dataOut_payload_0;
  wire       [31:0]   mac_atom_3_dataOut_payload_1;
  wire       [31:0]   mac_atom_3_dataOut_payload_2;
  wire       [31:0]   mac_atom_3_dataOut_payload_3;
  wire       [31:0]   mac_atom_3_dataOut_payload_4;
  wire       [31:0]   mac_atom_3_dataOut_payload_5;
  wire       [31:0]   mac_atom_3_dataOut_payload_6;
  wire       [31:0]   mac_atom_3_dataOut_payload_7;
  wire                mac_atom_4_dataIn_a_ready;
  wire                mac_atom_4_dataIn_b_ready;
  wire                mac_atom_4_dataOut_valid;
  wire       [31:0]   mac_atom_4_dataOut_payload_0;
  wire       [31:0]   mac_atom_4_dataOut_payload_1;
  wire       [31:0]   mac_atom_4_dataOut_payload_2;
  wire       [31:0]   mac_atom_4_dataOut_payload_3;
  wire       [31:0]   mac_atom_4_dataOut_payload_4;
  wire       [31:0]   mac_atom_4_dataOut_payload_5;
  wire       [31:0]   mac_atom_4_dataOut_payload_6;
  wire       [31:0]   mac_atom_4_dataOut_payload_7;
  wire                mac_atom_5_dataIn_a_ready;
  wire                mac_atom_5_dataIn_b_ready;
  wire                mac_atom_5_dataOut_valid;
  wire       [31:0]   mac_atom_5_dataOut_payload_0;
  wire       [31:0]   mac_atom_5_dataOut_payload_1;
  wire       [31:0]   mac_atom_5_dataOut_payload_2;
  wire       [31:0]   mac_atom_5_dataOut_payload_3;
  wire       [31:0]   mac_atom_5_dataOut_payload_4;
  wire       [31:0]   mac_atom_5_dataOut_payload_5;
  wire       [31:0]   mac_atom_5_dataOut_payload_6;
  wire       [31:0]   mac_atom_5_dataOut_payload_7;
  wire                mac_atom_6_dataIn_a_ready;
  wire                mac_atom_6_dataIn_b_ready;
  wire                mac_atom_6_dataOut_valid;
  wire       [31:0]   mac_atom_6_dataOut_payload_0;
  wire       [31:0]   mac_atom_6_dataOut_payload_1;
  wire       [31:0]   mac_atom_6_dataOut_payload_2;
  wire       [31:0]   mac_atom_6_dataOut_payload_3;
  wire       [31:0]   mac_atom_6_dataOut_payload_4;
  wire       [31:0]   mac_atom_6_dataOut_payload_5;
  wire       [31:0]   mac_atom_6_dataOut_payload_6;
  wire       [31:0]   mac_atom_6_dataOut_payload_7;
  wire                mac_atom_7_dataIn_a_ready;
  wire                mac_atom_7_dataIn_b_ready;
  wire                mac_atom_7_dataOut_valid;
  wire       [31:0]   mac_atom_7_dataOut_payload_0;
  wire       [31:0]   mac_atom_7_dataOut_payload_1;
  wire       [31:0]   mac_atom_7_dataOut_payload_2;
  wire       [31:0]   mac_atom_7_dataOut_payload_3;
  wire       [31:0]   mac_atom_7_dataOut_payload_4;
  wire       [31:0]   mac_atom_7_dataOut_payload_5;
  wire       [31:0]   mac_atom_7_dataOut_payload_6;
  wire       [31:0]   mac_atom_7_dataOut_payload_7;

  mac_atom_8 mac_atom_0 (
    .dataIn_a_valid        (io_in_data_a_valid            ), //i
    .dataIn_a_ready        (mac_atom_0_dataIn_a_ready     ), //o
    .dataIn_a_payload_0    (io_in_data_a_payload_0        ), //i
    .dataIn_a_payload_1    (io_in_data_a_payload_1        ), //i
    .dataIn_a_payload_2    (io_in_data_a_payload_2        ), //i
    .dataIn_a_payload_3    (io_in_data_a_payload_3        ), //i
    .dataIn_a_payload_4    (io_in_data_a_payload_4        ), //i
    .dataIn_a_payload_5    (io_in_data_a_payload_5        ), //i
    .dataIn_a_payload_6    (io_in_data_a_payload_6        ), //i
    .dataIn_a_payload_7    (io_in_data_a_payload_7        ), //i
    .dataIn_b_valid        (io_in_data_b_0_valid          ), //i
    .dataIn_b_ready        (mac_atom_0_dataIn_b_ready     ), //o
    .dataIn_b_payload_0    (io_in_data_b_0_payload_0      ), //i
    .dataIn_b_payload_1    (io_in_data_b_0_payload_1      ), //i
    .dataIn_b_payload_2    (io_in_data_b_0_payload_2      ), //i
    .dataIn_b_payload_3    (io_in_data_b_0_payload_3      ), //i
    .dataIn_b_payload_4    (io_in_data_b_0_payload_4      ), //i
    .dataIn_b_payload_5    (io_in_data_b_0_payload_5      ), //i
    .dataIn_b_payload_6    (io_in_data_b_0_payload_6      ), //i
    .dataIn_b_payload_7    (io_in_data_b_0_payload_7      ), //i
    .dataOut_valid         (mac_atom_0_dataOut_valid      ), //o
    .dataOut_ready         (io_o_result_0_ready           ), //i
    .dataOut_payload_0     (mac_atom_0_dataOut_payload_0  ), //o
    .dataOut_payload_1     (mac_atom_0_dataOut_payload_1  ), //o
    .dataOut_payload_2     (mac_atom_0_dataOut_payload_2  ), //o
    .dataOut_payload_3     (mac_atom_0_dataOut_payload_3  ), //o
    .dataOut_payload_4     (mac_atom_0_dataOut_payload_4  ), //o
    .dataOut_payload_5     (mac_atom_0_dataOut_payload_5  ), //o
    .dataOut_payload_6     (mac_atom_0_dataOut_payload_6  ), //o
    .dataOut_payload_7     (mac_atom_0_dataOut_payload_7  ), //o
    .clk                   (clk                           )  //i
  );
  mac_atom_8 mac_atom_1 (
    .dataIn_a_valid        (io_in_data_a_valid            ), //i
    .dataIn_a_ready        (mac_atom_1_dataIn_a_ready     ), //o
    .dataIn_a_payload_0    (io_in_data_a_payload_0        ), //i
    .dataIn_a_payload_1    (io_in_data_a_payload_1        ), //i
    .dataIn_a_payload_2    (io_in_data_a_payload_2        ), //i
    .dataIn_a_payload_3    (io_in_data_a_payload_3        ), //i
    .dataIn_a_payload_4    (io_in_data_a_payload_4        ), //i
    .dataIn_a_payload_5    (io_in_data_a_payload_5        ), //i
    .dataIn_a_payload_6    (io_in_data_a_payload_6        ), //i
    .dataIn_a_payload_7    (io_in_data_a_payload_7        ), //i
    .dataIn_b_valid        (io_in_data_b_1_valid          ), //i
    .dataIn_b_ready        (mac_atom_1_dataIn_b_ready     ), //o
    .dataIn_b_payload_0    (io_in_data_b_1_payload_0      ), //i
    .dataIn_b_payload_1    (io_in_data_b_1_payload_1      ), //i
    .dataIn_b_payload_2    (io_in_data_b_1_payload_2      ), //i
    .dataIn_b_payload_3    (io_in_data_b_1_payload_3      ), //i
    .dataIn_b_payload_4    (io_in_data_b_1_payload_4      ), //i
    .dataIn_b_payload_5    (io_in_data_b_1_payload_5      ), //i
    .dataIn_b_payload_6    (io_in_data_b_1_payload_6      ), //i
    .dataIn_b_payload_7    (io_in_data_b_1_payload_7      ), //i
    .dataOut_valid         (mac_atom_1_dataOut_valid      ), //o
    .dataOut_ready         (io_o_result_1_ready           ), //i
    .dataOut_payload_0     (mac_atom_1_dataOut_payload_0  ), //o
    .dataOut_payload_1     (mac_atom_1_dataOut_payload_1  ), //o
    .dataOut_payload_2     (mac_atom_1_dataOut_payload_2  ), //o
    .dataOut_payload_3     (mac_atom_1_dataOut_payload_3  ), //o
    .dataOut_payload_4     (mac_atom_1_dataOut_payload_4  ), //o
    .dataOut_payload_5     (mac_atom_1_dataOut_payload_5  ), //o
    .dataOut_payload_6     (mac_atom_1_dataOut_payload_6  ), //o
    .dataOut_payload_7     (mac_atom_1_dataOut_payload_7  ), //o
    .clk                   (clk                           )  //i
  );
  mac_atom_8 mac_atom_2 (
    .dataIn_a_valid        (io_in_data_a_valid            ), //i
    .dataIn_a_ready        (mac_atom_2_dataIn_a_ready     ), //o
    .dataIn_a_payload_0    (io_in_data_a_payload_0        ), //i
    .dataIn_a_payload_1    (io_in_data_a_payload_1        ), //i
    .dataIn_a_payload_2    (io_in_data_a_payload_2        ), //i
    .dataIn_a_payload_3    (io_in_data_a_payload_3        ), //i
    .dataIn_a_payload_4    (io_in_data_a_payload_4        ), //i
    .dataIn_a_payload_5    (io_in_data_a_payload_5        ), //i
    .dataIn_a_payload_6    (io_in_data_a_payload_6        ), //i
    .dataIn_a_payload_7    (io_in_data_a_payload_7        ), //i
    .dataIn_b_valid        (io_in_data_b_2_valid          ), //i
    .dataIn_b_ready        (mac_atom_2_dataIn_b_ready     ), //o
    .dataIn_b_payload_0    (io_in_data_b_2_payload_0      ), //i
    .dataIn_b_payload_1    (io_in_data_b_2_payload_1      ), //i
    .dataIn_b_payload_2    (io_in_data_b_2_payload_2      ), //i
    .dataIn_b_payload_3    (io_in_data_b_2_payload_3      ), //i
    .dataIn_b_payload_4    (io_in_data_b_2_payload_4      ), //i
    .dataIn_b_payload_5    (io_in_data_b_2_payload_5      ), //i
    .dataIn_b_payload_6    (io_in_data_b_2_payload_6      ), //i
    .dataIn_b_payload_7    (io_in_data_b_2_payload_7      ), //i
    .dataOut_valid         (mac_atom_2_dataOut_valid      ), //o
    .dataOut_ready         (io_o_result_2_ready           ), //i
    .dataOut_payload_0     (mac_atom_2_dataOut_payload_0  ), //o
    .dataOut_payload_1     (mac_atom_2_dataOut_payload_1  ), //o
    .dataOut_payload_2     (mac_atom_2_dataOut_payload_2  ), //o
    .dataOut_payload_3     (mac_atom_2_dataOut_payload_3  ), //o
    .dataOut_payload_4     (mac_atom_2_dataOut_payload_4  ), //o
    .dataOut_payload_5     (mac_atom_2_dataOut_payload_5  ), //o
    .dataOut_payload_6     (mac_atom_2_dataOut_payload_6  ), //o
    .dataOut_payload_7     (mac_atom_2_dataOut_payload_7  ), //o
    .clk                   (clk                           )  //i
  );
  mac_atom_8 mac_atom_3 (
    .dataIn_a_valid        (io_in_data_a_valid            ), //i
    .dataIn_a_ready        (mac_atom_3_dataIn_a_ready     ), //o
    .dataIn_a_payload_0    (io_in_data_a_payload_0        ), //i
    .dataIn_a_payload_1    (io_in_data_a_payload_1        ), //i
    .dataIn_a_payload_2    (io_in_data_a_payload_2        ), //i
    .dataIn_a_payload_3    (io_in_data_a_payload_3        ), //i
    .dataIn_a_payload_4    (io_in_data_a_payload_4        ), //i
    .dataIn_a_payload_5    (io_in_data_a_payload_5        ), //i
    .dataIn_a_payload_6    (io_in_data_a_payload_6        ), //i
    .dataIn_a_payload_7    (io_in_data_a_payload_7        ), //i
    .dataIn_b_valid        (io_in_data_b_3_valid          ), //i
    .dataIn_b_ready        (mac_atom_3_dataIn_b_ready     ), //o
    .dataIn_b_payload_0    (io_in_data_b_3_payload_0      ), //i
    .dataIn_b_payload_1    (io_in_data_b_3_payload_1      ), //i
    .dataIn_b_payload_2    (io_in_data_b_3_payload_2      ), //i
    .dataIn_b_payload_3    (io_in_data_b_3_payload_3      ), //i
    .dataIn_b_payload_4    (io_in_data_b_3_payload_4      ), //i
    .dataIn_b_payload_5    (io_in_data_b_3_payload_5      ), //i
    .dataIn_b_payload_6    (io_in_data_b_3_payload_6      ), //i
    .dataIn_b_payload_7    (io_in_data_b_3_payload_7      ), //i
    .dataOut_valid         (mac_atom_3_dataOut_valid      ), //o
    .dataOut_ready         (io_o_result_3_ready           ), //i
    .dataOut_payload_0     (mac_atom_3_dataOut_payload_0  ), //o
    .dataOut_payload_1     (mac_atom_3_dataOut_payload_1  ), //o
    .dataOut_payload_2     (mac_atom_3_dataOut_payload_2  ), //o
    .dataOut_payload_3     (mac_atom_3_dataOut_payload_3  ), //o
    .dataOut_payload_4     (mac_atom_3_dataOut_payload_4  ), //o
    .dataOut_payload_5     (mac_atom_3_dataOut_payload_5  ), //o
    .dataOut_payload_6     (mac_atom_3_dataOut_payload_6  ), //o
    .dataOut_payload_7     (mac_atom_3_dataOut_payload_7  ), //o
    .clk                   (clk                           )  //i
  );
  mac_atom_8 mac_atom_4 (
    .dataIn_a_valid        (io_in_data_a_valid            ), //i
    .dataIn_a_ready        (mac_atom_4_dataIn_a_ready     ), //o
    .dataIn_a_payload_0    (io_in_data_a_payload_0        ), //i
    .dataIn_a_payload_1    (io_in_data_a_payload_1        ), //i
    .dataIn_a_payload_2    (io_in_data_a_payload_2        ), //i
    .dataIn_a_payload_3    (io_in_data_a_payload_3        ), //i
    .dataIn_a_payload_4    (io_in_data_a_payload_4        ), //i
    .dataIn_a_payload_5    (io_in_data_a_payload_5        ), //i
    .dataIn_a_payload_6    (io_in_data_a_payload_6        ), //i
    .dataIn_a_payload_7    (io_in_data_a_payload_7        ), //i
    .dataIn_b_valid        (io_in_data_b_4_valid          ), //i
    .dataIn_b_ready        (mac_atom_4_dataIn_b_ready     ), //o
    .dataIn_b_payload_0    (io_in_data_b_4_payload_0      ), //i
    .dataIn_b_payload_1    (io_in_data_b_4_payload_1      ), //i
    .dataIn_b_payload_2    (io_in_data_b_4_payload_2      ), //i
    .dataIn_b_payload_3    (io_in_data_b_4_payload_3      ), //i
    .dataIn_b_payload_4    (io_in_data_b_4_payload_4      ), //i
    .dataIn_b_payload_5    (io_in_data_b_4_payload_5      ), //i
    .dataIn_b_payload_6    (io_in_data_b_4_payload_6      ), //i
    .dataIn_b_payload_7    (io_in_data_b_4_payload_7      ), //i
    .dataOut_valid         (mac_atom_4_dataOut_valid      ), //o
    .dataOut_ready         (io_o_result_4_ready           ), //i
    .dataOut_payload_0     (mac_atom_4_dataOut_payload_0  ), //o
    .dataOut_payload_1     (mac_atom_4_dataOut_payload_1  ), //o
    .dataOut_payload_2     (mac_atom_4_dataOut_payload_2  ), //o
    .dataOut_payload_3     (mac_atom_4_dataOut_payload_3  ), //o
    .dataOut_payload_4     (mac_atom_4_dataOut_payload_4  ), //o
    .dataOut_payload_5     (mac_atom_4_dataOut_payload_5  ), //o
    .dataOut_payload_6     (mac_atom_4_dataOut_payload_6  ), //o
    .dataOut_payload_7     (mac_atom_4_dataOut_payload_7  ), //o
    .clk                   (clk                           )  //i
  );
  mac_atom_8 mac_atom_5 (
    .dataIn_a_valid        (io_in_data_a_valid            ), //i
    .dataIn_a_ready        (mac_atom_5_dataIn_a_ready     ), //o
    .dataIn_a_payload_0    (io_in_data_a_payload_0        ), //i
    .dataIn_a_payload_1    (io_in_data_a_payload_1        ), //i
    .dataIn_a_payload_2    (io_in_data_a_payload_2        ), //i
    .dataIn_a_payload_3    (io_in_data_a_payload_3        ), //i
    .dataIn_a_payload_4    (io_in_data_a_payload_4        ), //i
    .dataIn_a_payload_5    (io_in_data_a_payload_5        ), //i
    .dataIn_a_payload_6    (io_in_data_a_payload_6        ), //i
    .dataIn_a_payload_7    (io_in_data_a_payload_7        ), //i
    .dataIn_b_valid        (io_in_data_b_5_valid          ), //i
    .dataIn_b_ready        (mac_atom_5_dataIn_b_ready     ), //o
    .dataIn_b_payload_0    (io_in_data_b_5_payload_0      ), //i
    .dataIn_b_payload_1    (io_in_data_b_5_payload_1      ), //i
    .dataIn_b_payload_2    (io_in_data_b_5_payload_2      ), //i
    .dataIn_b_payload_3    (io_in_data_b_5_payload_3      ), //i
    .dataIn_b_payload_4    (io_in_data_b_5_payload_4      ), //i
    .dataIn_b_payload_5    (io_in_data_b_5_payload_5      ), //i
    .dataIn_b_payload_6    (io_in_data_b_5_payload_6      ), //i
    .dataIn_b_payload_7    (io_in_data_b_5_payload_7      ), //i
    .dataOut_valid         (mac_atom_5_dataOut_valid      ), //o
    .dataOut_ready         (io_o_result_5_ready           ), //i
    .dataOut_payload_0     (mac_atom_5_dataOut_payload_0  ), //o
    .dataOut_payload_1     (mac_atom_5_dataOut_payload_1  ), //o
    .dataOut_payload_2     (mac_atom_5_dataOut_payload_2  ), //o
    .dataOut_payload_3     (mac_atom_5_dataOut_payload_3  ), //o
    .dataOut_payload_4     (mac_atom_5_dataOut_payload_4  ), //o
    .dataOut_payload_5     (mac_atom_5_dataOut_payload_5  ), //o
    .dataOut_payload_6     (mac_atom_5_dataOut_payload_6  ), //o
    .dataOut_payload_7     (mac_atom_5_dataOut_payload_7  ), //o
    .clk                   (clk                           )  //i
  );
  mac_atom_8 mac_atom_6 (
    .dataIn_a_valid        (io_in_data_a_valid            ), //i
    .dataIn_a_ready        (mac_atom_6_dataIn_a_ready     ), //o
    .dataIn_a_payload_0    (io_in_data_a_payload_0        ), //i
    .dataIn_a_payload_1    (io_in_data_a_payload_1        ), //i
    .dataIn_a_payload_2    (io_in_data_a_payload_2        ), //i
    .dataIn_a_payload_3    (io_in_data_a_payload_3        ), //i
    .dataIn_a_payload_4    (io_in_data_a_payload_4        ), //i
    .dataIn_a_payload_5    (io_in_data_a_payload_5        ), //i
    .dataIn_a_payload_6    (io_in_data_a_payload_6        ), //i
    .dataIn_a_payload_7    (io_in_data_a_payload_7        ), //i
    .dataIn_b_valid        (io_in_data_b_6_valid          ), //i
    .dataIn_b_ready        (mac_atom_6_dataIn_b_ready     ), //o
    .dataIn_b_payload_0    (io_in_data_b_6_payload_0      ), //i
    .dataIn_b_payload_1    (io_in_data_b_6_payload_1      ), //i
    .dataIn_b_payload_2    (io_in_data_b_6_payload_2      ), //i
    .dataIn_b_payload_3    (io_in_data_b_6_payload_3      ), //i
    .dataIn_b_payload_4    (io_in_data_b_6_payload_4      ), //i
    .dataIn_b_payload_5    (io_in_data_b_6_payload_5      ), //i
    .dataIn_b_payload_6    (io_in_data_b_6_payload_6      ), //i
    .dataIn_b_payload_7    (io_in_data_b_6_payload_7      ), //i
    .dataOut_valid         (mac_atom_6_dataOut_valid      ), //o
    .dataOut_ready         (io_o_result_6_ready           ), //i
    .dataOut_payload_0     (mac_atom_6_dataOut_payload_0  ), //o
    .dataOut_payload_1     (mac_atom_6_dataOut_payload_1  ), //o
    .dataOut_payload_2     (mac_atom_6_dataOut_payload_2  ), //o
    .dataOut_payload_3     (mac_atom_6_dataOut_payload_3  ), //o
    .dataOut_payload_4     (mac_atom_6_dataOut_payload_4  ), //o
    .dataOut_payload_5     (mac_atom_6_dataOut_payload_5  ), //o
    .dataOut_payload_6     (mac_atom_6_dataOut_payload_6  ), //o
    .dataOut_payload_7     (mac_atom_6_dataOut_payload_7  ), //o
    .clk                   (clk                           )  //i
  );
  mac_atom_8 mac_atom_7 (
    .dataIn_a_valid        (io_in_data_a_valid            ), //i
    .dataIn_a_ready        (mac_atom_7_dataIn_a_ready     ), //o
    .dataIn_a_payload_0    (io_in_data_a_payload_0        ), //i
    .dataIn_a_payload_1    (io_in_data_a_payload_1        ), //i
    .dataIn_a_payload_2    (io_in_data_a_payload_2        ), //i
    .dataIn_a_payload_3    (io_in_data_a_payload_3        ), //i
    .dataIn_a_payload_4    (io_in_data_a_payload_4        ), //i
    .dataIn_a_payload_5    (io_in_data_a_payload_5        ), //i
    .dataIn_a_payload_6    (io_in_data_a_payload_6        ), //i
    .dataIn_a_payload_7    (io_in_data_a_payload_7        ), //i
    .dataIn_b_valid        (io_in_data_b_7_valid          ), //i
    .dataIn_b_ready        (mac_atom_7_dataIn_b_ready     ), //o
    .dataIn_b_payload_0    (io_in_data_b_7_payload_0      ), //i
    .dataIn_b_payload_1    (io_in_data_b_7_payload_1      ), //i
    .dataIn_b_payload_2    (io_in_data_b_7_payload_2      ), //i
    .dataIn_b_payload_3    (io_in_data_b_7_payload_3      ), //i
    .dataIn_b_payload_4    (io_in_data_b_7_payload_4      ), //i
    .dataIn_b_payload_5    (io_in_data_b_7_payload_5      ), //i
    .dataIn_b_payload_6    (io_in_data_b_7_payload_6      ), //i
    .dataIn_b_payload_7    (io_in_data_b_7_payload_7      ), //i
    .dataOut_valid         (mac_atom_7_dataOut_valid      ), //o
    .dataOut_ready         (io_o_result_7_ready           ), //i
    .dataOut_payload_0     (mac_atom_7_dataOut_payload_0  ), //o
    .dataOut_payload_1     (mac_atom_7_dataOut_payload_1  ), //o
    .dataOut_payload_2     (mac_atom_7_dataOut_payload_2  ), //o
    .dataOut_payload_3     (mac_atom_7_dataOut_payload_3  ), //o
    .dataOut_payload_4     (mac_atom_7_dataOut_payload_4  ), //o
    .dataOut_payload_5     (mac_atom_7_dataOut_payload_5  ), //o
    .dataOut_payload_6     (mac_atom_7_dataOut_payload_6  ), //o
    .dataOut_payload_7     (mac_atom_7_dataOut_payload_7  ), //o
    .clk                   (clk                           )  //i
  );
  assign io_in_data_a_ready = (((((((mac_atom_0_dataIn_a_ready && mac_atom_1_dataIn_a_ready) && mac_atom_2_dataIn_a_ready) && mac_atom_3_dataIn_a_ready) && mac_atom_4_dataIn_a_ready) && mac_atom_5_dataIn_a_ready) && mac_atom_6_dataIn_a_ready) && mac_atom_7_dataIn_a_ready);
  assign io_in_data_b_0_ready = mac_atom_0_dataIn_b_ready;
  assign io_o_result_0_valid = mac_atom_0_dataOut_valid;
  assign io_o_result_0_payload_0 = mac_atom_0_dataOut_payload_0;
  assign io_o_result_0_payload_1 = mac_atom_0_dataOut_payload_1;
  assign io_o_result_0_payload_2 = mac_atom_0_dataOut_payload_2;
  assign io_o_result_0_payload_3 = mac_atom_0_dataOut_payload_3;
  assign io_o_result_0_payload_4 = mac_atom_0_dataOut_payload_4;
  assign io_o_result_0_payload_5 = mac_atom_0_dataOut_payload_5;
  assign io_o_result_0_payload_6 = mac_atom_0_dataOut_payload_6;
  assign io_o_result_0_payload_7 = mac_atom_0_dataOut_payload_7;
  assign io_in_data_b_1_ready = mac_atom_1_dataIn_b_ready;
  assign io_o_result_1_valid = mac_atom_1_dataOut_valid;
  assign io_o_result_1_payload_0 = mac_atom_1_dataOut_payload_0;
  assign io_o_result_1_payload_1 = mac_atom_1_dataOut_payload_1;
  assign io_o_result_1_payload_2 = mac_atom_1_dataOut_payload_2;
  assign io_o_result_1_payload_3 = mac_atom_1_dataOut_payload_3;
  assign io_o_result_1_payload_4 = mac_atom_1_dataOut_payload_4;
  assign io_o_result_1_payload_5 = mac_atom_1_dataOut_payload_5;
  assign io_o_result_1_payload_6 = mac_atom_1_dataOut_payload_6;
  assign io_o_result_1_payload_7 = mac_atom_1_dataOut_payload_7;
  assign io_in_data_b_2_ready = mac_atom_2_dataIn_b_ready;
  assign io_o_result_2_valid = mac_atom_2_dataOut_valid;
  assign io_o_result_2_payload_0 = mac_atom_2_dataOut_payload_0;
  assign io_o_result_2_payload_1 = mac_atom_2_dataOut_payload_1;
  assign io_o_result_2_payload_2 = mac_atom_2_dataOut_payload_2;
  assign io_o_result_2_payload_3 = mac_atom_2_dataOut_payload_3;
  assign io_o_result_2_payload_4 = mac_atom_2_dataOut_payload_4;
  assign io_o_result_2_payload_5 = mac_atom_2_dataOut_payload_5;
  assign io_o_result_2_payload_6 = mac_atom_2_dataOut_payload_6;
  assign io_o_result_2_payload_7 = mac_atom_2_dataOut_payload_7;
  assign io_in_data_b_3_ready = mac_atom_3_dataIn_b_ready;
  assign io_o_result_3_valid = mac_atom_3_dataOut_valid;
  assign io_o_result_3_payload_0 = mac_atom_3_dataOut_payload_0;
  assign io_o_result_3_payload_1 = mac_atom_3_dataOut_payload_1;
  assign io_o_result_3_payload_2 = mac_atom_3_dataOut_payload_2;
  assign io_o_result_3_payload_3 = mac_atom_3_dataOut_payload_3;
  assign io_o_result_3_payload_4 = mac_atom_3_dataOut_payload_4;
  assign io_o_result_3_payload_5 = mac_atom_3_dataOut_payload_5;
  assign io_o_result_3_payload_6 = mac_atom_3_dataOut_payload_6;
  assign io_o_result_3_payload_7 = mac_atom_3_dataOut_payload_7;
  assign io_in_data_b_4_ready = mac_atom_4_dataIn_b_ready;
  assign io_o_result_4_valid = mac_atom_4_dataOut_valid;
  assign io_o_result_4_payload_0 = mac_atom_4_dataOut_payload_0;
  assign io_o_result_4_payload_1 = mac_atom_4_dataOut_payload_1;
  assign io_o_result_4_payload_2 = mac_atom_4_dataOut_payload_2;
  assign io_o_result_4_payload_3 = mac_atom_4_dataOut_payload_3;
  assign io_o_result_4_payload_4 = mac_atom_4_dataOut_payload_4;
  assign io_o_result_4_payload_5 = mac_atom_4_dataOut_payload_5;
  assign io_o_result_4_payload_6 = mac_atom_4_dataOut_payload_6;
  assign io_o_result_4_payload_7 = mac_atom_4_dataOut_payload_7;
  assign io_in_data_b_5_ready = mac_atom_5_dataIn_b_ready;
  assign io_o_result_5_valid = mac_atom_5_dataOut_valid;
  assign io_o_result_5_payload_0 = mac_atom_5_dataOut_payload_0;
  assign io_o_result_5_payload_1 = mac_atom_5_dataOut_payload_1;
  assign io_o_result_5_payload_2 = mac_atom_5_dataOut_payload_2;
  assign io_o_result_5_payload_3 = mac_atom_5_dataOut_payload_3;
  assign io_o_result_5_payload_4 = mac_atom_5_dataOut_payload_4;
  assign io_o_result_5_payload_5 = mac_atom_5_dataOut_payload_5;
  assign io_o_result_5_payload_6 = mac_atom_5_dataOut_payload_6;
  assign io_o_result_5_payload_7 = mac_atom_5_dataOut_payload_7;
  assign io_in_data_b_6_ready = mac_atom_6_dataIn_b_ready;
  assign io_o_result_6_valid = mac_atom_6_dataOut_valid;
  assign io_o_result_6_payload_0 = mac_atom_6_dataOut_payload_0;
  assign io_o_result_6_payload_1 = mac_atom_6_dataOut_payload_1;
  assign io_o_result_6_payload_2 = mac_atom_6_dataOut_payload_2;
  assign io_o_result_6_payload_3 = mac_atom_6_dataOut_payload_3;
  assign io_o_result_6_payload_4 = mac_atom_6_dataOut_payload_4;
  assign io_o_result_6_payload_5 = mac_atom_6_dataOut_payload_5;
  assign io_o_result_6_payload_6 = mac_atom_6_dataOut_payload_6;
  assign io_o_result_6_payload_7 = mac_atom_6_dataOut_payload_7;
  assign io_in_data_b_7_ready = mac_atom_7_dataIn_b_ready;
  assign io_o_result_7_valid = mac_atom_7_dataOut_valid;
  assign io_o_result_7_payload_0 = mac_atom_7_dataOut_payload_0;
  assign io_o_result_7_payload_1 = mac_atom_7_dataOut_payload_1;
  assign io_o_result_7_payload_2 = mac_atom_7_dataOut_payload_2;
  assign io_o_result_7_payload_3 = mac_atom_7_dataOut_payload_3;
  assign io_o_result_7_payload_4 = mac_atom_7_dataOut_payload_4;
  assign io_o_result_7_payload_5 = mac_atom_7_dataOut_payload_5;
  assign io_o_result_7_payload_6 = mac_atom_7_dataOut_payload_6;
  assign io_o_result_7_payload_7 = mac_atom_7_dataOut_payload_7;

endmodule

//mac_atom_8 replaced by mac_atom_8

//mac_atom_8 replaced by mac_atom_8

//mac_atom_8 replaced by mac_atom_8

//mac_atom_8 replaced by mac_atom_8

//mac_atom_8 replaced by mac_atom_8

//mac_atom_8 replaced by mac_atom_8

//mac_atom_8 replaced by mac_atom_8

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
  wire                fp_mul_0_io_in_a_ready;
  wire                fp_mul_0_io_in_b_ready;
  wire                fp_mul_0_io_result_valid;
  wire       [31:0]   fp_mul_0_io_result_payload;
  wire                fp_mul_1_io_in_a_ready;
  wire                fp_mul_1_io_in_b_ready;
  wire                fp_mul_1_io_result_valid;
  wire       [31:0]   fp_mul_1_io_result_payload;
  wire                fp_mul_2_io_in_a_ready;
  wire                fp_mul_2_io_in_b_ready;
  wire                fp_mul_2_io_result_valid;
  wire       [31:0]   fp_mul_2_io_result_payload;
  wire                fp_mul_3_io_in_a_ready;
  wire                fp_mul_3_io_in_b_ready;
  wire                fp_mul_3_io_result_valid;
  wire       [31:0]   fp_mul_3_io_result_payload;
  wire                fp_mul_4_io_in_a_ready;
  wire                fp_mul_4_io_in_b_ready;
  wire                fp_mul_4_io_result_valid;
  wire       [31:0]   fp_mul_4_io_result_payload;
  wire                fp_mul_5_io_in_a_ready;
  wire                fp_mul_5_io_in_b_ready;
  wire                fp_mul_5_io_result_valid;
  wire       [31:0]   fp_mul_5_io_result_payload;
  wire                fp_mul_6_io_in_a_ready;
  wire                fp_mul_6_io_in_b_ready;
  wire                fp_mul_6_io_result_valid;
  wire       [31:0]   fp_mul_6_io_result_payload;
  wire                fp_mul_7_io_in_a_ready;
  wire                fp_mul_7_io_in_b_ready;
  wire                fp_mul_7_io_result_valid;
  wire       [31:0]   fp_mul_7_io_result_payload;

  fp_multi fp_mul_0 (
    .io_clk               (clk                         ), //i
    .io_in_a_valid        (dataIn_a_valid              ), //i
    .io_in_a_ready        (fp_mul_0_io_in_a_ready      ), //o
    .io_in_a_payload      (dataIn_a_payload_0          ), //i
    .io_in_b_valid        (dataIn_b_valid              ), //i
    .io_in_b_ready        (fp_mul_0_io_in_b_ready      ), //o
    .io_in_b_payload      (dataIn_b_payload_0          ), //i
    .io_result_valid      (fp_mul_0_io_result_valid    ), //o
    .io_result_ready      (dataOut_ready               ), //i
    .io_result_payload    (fp_mul_0_io_result_payload  )  //o
  );
  fp_multi fp_mul_1 (
    .io_clk               (clk                         ), //i
    .io_in_a_valid        (dataIn_a_valid              ), //i
    .io_in_a_ready        (fp_mul_1_io_in_a_ready      ), //o
    .io_in_a_payload      (dataIn_a_payload_1          ), //i
    .io_in_b_valid        (dataIn_b_valid              ), //i
    .io_in_b_ready        (fp_mul_1_io_in_b_ready      ), //o
    .io_in_b_payload      (dataIn_b_payload_1          ), //i
    .io_result_valid      (fp_mul_1_io_result_valid    ), //o
    .io_result_ready      (dataOut_ready               ), //i
    .io_result_payload    (fp_mul_1_io_result_payload  )  //o
  );
  fp_multi fp_mul_2 (
    .io_clk               (clk                         ), //i
    .io_in_a_valid        (dataIn_a_valid              ), //i
    .io_in_a_ready        (fp_mul_2_io_in_a_ready      ), //o
    .io_in_a_payload      (dataIn_a_payload_2          ), //i
    .io_in_b_valid        (dataIn_b_valid              ), //i
    .io_in_b_ready        (fp_mul_2_io_in_b_ready      ), //o
    .io_in_b_payload      (dataIn_b_payload_2          ), //i
    .io_result_valid      (fp_mul_2_io_result_valid    ), //o
    .io_result_ready      (dataOut_ready               ), //i
    .io_result_payload    (fp_mul_2_io_result_payload  )  //o
  );
  fp_multi fp_mul_3 (
    .io_clk               (clk                         ), //i
    .io_in_a_valid        (dataIn_a_valid              ), //i
    .io_in_a_ready        (fp_mul_3_io_in_a_ready      ), //o
    .io_in_a_payload      (dataIn_a_payload_3          ), //i
    .io_in_b_valid        (dataIn_b_valid              ), //i
    .io_in_b_ready        (fp_mul_3_io_in_b_ready      ), //o
    .io_in_b_payload      (dataIn_b_payload_3          ), //i
    .io_result_valid      (fp_mul_3_io_result_valid    ), //o
    .io_result_ready      (dataOut_ready               ), //i
    .io_result_payload    (fp_mul_3_io_result_payload  )  //o
  );
  fp_multi fp_mul_4 (
    .io_clk               (clk                         ), //i
    .io_in_a_valid        (dataIn_a_valid              ), //i
    .io_in_a_ready        (fp_mul_4_io_in_a_ready      ), //o
    .io_in_a_payload      (dataIn_a_payload_4          ), //i
    .io_in_b_valid        (dataIn_b_valid              ), //i
    .io_in_b_ready        (fp_mul_4_io_in_b_ready      ), //o
    .io_in_b_payload      (dataIn_b_payload_4          ), //i
    .io_result_valid      (fp_mul_4_io_result_valid    ), //o
    .io_result_ready      (dataOut_ready               ), //i
    .io_result_payload    (fp_mul_4_io_result_payload  )  //o
  );
  fp_multi fp_mul_5 (
    .io_clk               (clk                         ), //i
    .io_in_a_valid        (dataIn_a_valid              ), //i
    .io_in_a_ready        (fp_mul_5_io_in_a_ready      ), //o
    .io_in_a_payload      (dataIn_a_payload_5          ), //i
    .io_in_b_valid        (dataIn_b_valid              ), //i
    .io_in_b_ready        (fp_mul_5_io_in_b_ready      ), //o
    .io_in_b_payload      (dataIn_b_payload_5          ), //i
    .io_result_valid      (fp_mul_5_io_result_valid    ), //o
    .io_result_ready      (dataOut_ready               ), //i
    .io_result_payload    (fp_mul_5_io_result_payload  )  //o
  );
  fp_multi fp_mul_6 (
    .io_clk               (clk                         ), //i
    .io_in_a_valid        (dataIn_a_valid              ), //i
    .io_in_a_ready        (fp_mul_6_io_in_a_ready      ), //o
    .io_in_a_payload      (dataIn_a_payload_6          ), //i
    .io_in_b_valid        (dataIn_b_valid              ), //i
    .io_in_b_ready        (fp_mul_6_io_in_b_ready      ), //o
    .io_in_b_payload      (dataIn_b_payload_6          ), //i
    .io_result_valid      (fp_mul_6_io_result_valid    ), //o
    .io_result_ready      (dataOut_ready               ), //i
    .io_result_payload    (fp_mul_6_io_result_payload  )  //o
  );
  fp_multi fp_mul_7 (
    .io_clk               (clk                         ), //i
    .io_in_a_valid        (dataIn_a_valid              ), //i
    .io_in_a_ready        (fp_mul_7_io_in_a_ready      ), //o
    .io_in_a_payload      (dataIn_a_payload_7          ), //i
    .io_in_b_valid        (dataIn_b_valid              ), //i
    .io_in_b_ready        (fp_mul_7_io_in_b_ready      ), //o
    .io_in_b_payload      (dataIn_b_payload_7          ), //i
    .io_result_valid      (fp_mul_7_io_result_valid    ), //o
    .io_result_ready      (dataOut_ready               ), //i
    .io_result_payload    (fp_mul_7_io_result_payload  )  //o
  );
  assign dataIn_a_ready = (((((((fp_mul_0_io_in_a_ready && fp_mul_1_io_in_a_ready) && fp_mul_2_io_in_a_ready) && fp_mul_3_io_in_a_ready) && fp_mul_4_io_in_a_ready) && fp_mul_5_io_in_a_ready) && fp_mul_6_io_in_a_ready) && fp_mul_7_io_in_a_ready);
  assign dataIn_b_ready = (((((((fp_mul_0_io_in_b_ready && fp_mul_1_io_in_b_ready) && fp_mul_2_io_in_b_ready) && fp_mul_3_io_in_b_ready) && fp_mul_4_io_in_b_ready) && fp_mul_5_io_in_b_ready) && fp_mul_6_io_in_b_ready) && fp_mul_7_io_in_b_ready);
  assign dataOut_valid = (((((((fp_mul_0_io_result_valid && fp_mul_1_io_result_valid) && fp_mul_2_io_result_valid) && fp_mul_3_io_result_valid) && fp_mul_4_io_result_valid) && fp_mul_5_io_result_valid) && fp_mul_6_io_result_valid) && fp_mul_7_io_result_valid);
  assign dataOut_payload_0 = fp_mul_0_io_result_payload;
  assign dataOut_payload_1 = fp_mul_1_io_result_payload;
  assign dataOut_payload_2 = fp_mul_2_io_result_payload;
  assign dataOut_payload_3 = fp_mul_3_io_result_payload;
  assign dataOut_payload_4 = fp_mul_4_io_result_payload;
  assign dataOut_payload_5 = fp_mul_5_io_result_payload;
  assign dataOut_payload_6 = fp_mul_6_io_result_payload;
  assign dataOut_payload_7 = fp_mul_7_io_result_payload;

endmodule

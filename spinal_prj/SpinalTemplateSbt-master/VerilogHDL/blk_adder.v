// Generator : SpinalHDL v1.5.0    git head : 83a031922866b078c411ec5529e00f1b6e79f8e7
// Component : blk_adder
// Git hash  : 468260b61ffaaed727a3b82deccca770fc0579f1


module blk_adder (
  input               input_0_valid,
  output              input_0_ready,
  input      [31:0]   input_0_payload_0,
  input      [31:0]   input_0_payload_1,
  input      [31:0]   input_0_payload_2,
  input      [31:0]   input_0_payload_3,
  input      [31:0]   input_0_payload_4,
  input      [31:0]   input_0_payload_5,
  input      [31:0]   input_0_payload_6,
  input      [31:0]   input_0_payload_7,
  input               input_1_valid,
  output              input_1_ready,
  input      [31:0]   input_1_payload_0,
  input      [31:0]   input_1_payload_1,
  input      [31:0]   input_1_payload_2,
  input      [31:0]   input_1_payload_3,
  input      [31:0]   input_1_payload_4,
  input      [31:0]   input_1_payload_5,
  input      [31:0]   input_1_payload_6,
  input      [31:0]   input_1_payload_7,
  input               input_2_valid,
  output              input_2_ready,
  input      [31:0]   input_2_payload_0,
  input      [31:0]   input_2_payload_1,
  input      [31:0]   input_2_payload_2,
  input      [31:0]   input_2_payload_3,
  input      [31:0]   input_2_payload_4,
  input      [31:0]   input_2_payload_5,
  input      [31:0]   input_2_payload_6,
  input      [31:0]   input_2_payload_7,
  input               input_3_valid,
  output              input_3_ready,
  input      [31:0]   input_3_payload_0,
  input      [31:0]   input_3_payload_1,
  input      [31:0]   input_3_payload_2,
  input      [31:0]   input_3_payload_3,
  input      [31:0]   input_3_payload_4,
  input      [31:0]   input_3_payload_5,
  input      [31:0]   input_3_payload_6,
  input      [31:0]   input_3_payload_7,
  input               input_4_valid,
  output              input_4_ready,
  input      [31:0]   input_4_payload_0,
  input      [31:0]   input_4_payload_1,
  input      [31:0]   input_4_payload_2,
  input      [31:0]   input_4_payload_3,
  input      [31:0]   input_4_payload_4,
  input      [31:0]   input_4_payload_5,
  input      [31:0]   input_4_payload_6,
  input      [31:0]   input_4_payload_7,
  input               input_5_valid,
  output              input_5_ready,
  input      [31:0]   input_5_payload_0,
  input      [31:0]   input_5_payload_1,
  input      [31:0]   input_5_payload_2,
  input      [31:0]   input_5_payload_3,
  input      [31:0]   input_5_payload_4,
  input      [31:0]   input_5_payload_5,
  input      [31:0]   input_5_payload_6,
  input      [31:0]   input_5_payload_7,
  input               input_6_valid,
  output              input_6_ready,
  input      [31:0]   input_6_payload_0,
  input      [31:0]   input_6_payload_1,
  input      [31:0]   input_6_payload_2,
  input      [31:0]   input_6_payload_3,
  input      [31:0]   input_6_payload_4,
  input      [31:0]   input_6_payload_5,
  input      [31:0]   input_6_payload_6,
  input      [31:0]   input_6_payload_7,
  input               input_7_valid,
  output              input_7_ready,
  input      [31:0]   input_7_payload_0,
  input      [31:0]   input_7_payload_1,
  input      [31:0]   input_7_payload_2,
  input      [31:0]   input_7_payload_3,
  input      [31:0]   input_7_payload_4,
  input      [31:0]   input_7_payload_5,
  input      [31:0]   input_7_payload_6,
  input      [31:0]   input_7_payload_7,
  output              output_valid,
  input               output_ready,
  output     [31:0]   output_payload_0,
  output     [31:0]   output_payload_1,
  output     [31:0]   output_payload_2,
  output     [31:0]   output_payload_3,
  output     [31:0]   output_payload_4,
  output     [31:0]   output_payload_5,
  output     [31:0]   output_payload_6,
  output     [31:0]   output_payload_7,
  input               clk
);
  wire                fp_adder_l0_0_ina_ready;
  wire                fp_adder_l0_0_inb_ready;
  wire                fp_adder_l0_0_out_valid;
  wire       [31:0]   fp_adder_l0_0_out_payload_0;
  wire       [31:0]   fp_adder_l0_0_out_payload_1;
  wire       [31:0]   fp_adder_l0_0_out_payload_2;
  wire       [31:0]   fp_adder_l0_0_out_payload_3;
  wire       [31:0]   fp_adder_l0_0_out_payload_4;
  wire       [31:0]   fp_adder_l0_0_out_payload_5;
  wire       [31:0]   fp_adder_l0_0_out_payload_6;
  wire       [31:0]   fp_adder_l0_0_out_payload_7;
  wire                fp_adder_l0_1_ina_ready;
  wire                fp_adder_l0_1_inb_ready;
  wire                fp_adder_l0_1_out_valid;
  wire       [31:0]   fp_adder_l0_1_out_payload_0;
  wire       [31:0]   fp_adder_l0_1_out_payload_1;
  wire       [31:0]   fp_adder_l0_1_out_payload_2;
  wire       [31:0]   fp_adder_l0_1_out_payload_3;
  wire       [31:0]   fp_adder_l0_1_out_payload_4;
  wire       [31:0]   fp_adder_l0_1_out_payload_5;
  wire       [31:0]   fp_adder_l0_1_out_payload_6;
  wire       [31:0]   fp_adder_l0_1_out_payload_7;
  wire                fp_adder_l0_2_ina_ready;
  wire                fp_adder_l0_2_inb_ready;
  wire                fp_adder_l0_2_out_valid;
  wire       [31:0]   fp_adder_l0_2_out_payload_0;
  wire       [31:0]   fp_adder_l0_2_out_payload_1;
  wire       [31:0]   fp_adder_l0_2_out_payload_2;
  wire       [31:0]   fp_adder_l0_2_out_payload_3;
  wire       [31:0]   fp_adder_l0_2_out_payload_4;
  wire       [31:0]   fp_adder_l0_2_out_payload_5;
  wire       [31:0]   fp_adder_l0_2_out_payload_6;
  wire       [31:0]   fp_adder_l0_2_out_payload_7;
  wire                fp_adder_l0_3_ina_ready;
  wire                fp_adder_l0_3_inb_ready;
  wire                fp_adder_l0_3_out_valid;
  wire       [31:0]   fp_adder_l0_3_out_payload_0;
  wire       [31:0]   fp_adder_l0_3_out_payload_1;
  wire       [31:0]   fp_adder_l0_3_out_payload_2;
  wire       [31:0]   fp_adder_l0_3_out_payload_3;
  wire       [31:0]   fp_adder_l0_3_out_payload_4;
  wire       [31:0]   fp_adder_l0_3_out_payload_5;
  wire       [31:0]   fp_adder_l0_3_out_payload_6;
  wire       [31:0]   fp_adder_l0_3_out_payload_7;
  wire                fp_adder_l1_0_ina_ready;
  wire                fp_adder_l1_0_inb_ready;
  wire                fp_adder_l1_0_out_valid;
  wire       [31:0]   fp_adder_l1_0_out_payload_0;
  wire       [31:0]   fp_adder_l1_0_out_payload_1;
  wire       [31:0]   fp_adder_l1_0_out_payload_2;
  wire       [31:0]   fp_adder_l1_0_out_payload_3;
  wire       [31:0]   fp_adder_l1_0_out_payload_4;
  wire       [31:0]   fp_adder_l1_0_out_payload_5;
  wire       [31:0]   fp_adder_l1_0_out_payload_6;
  wire       [31:0]   fp_adder_l1_0_out_payload_7;
  wire                fp_adder_l1_1_ina_ready;
  wire                fp_adder_l1_1_inb_ready;
  wire                fp_adder_l1_1_out_valid;
  wire       [31:0]   fp_adder_l1_1_out_payload_0;
  wire       [31:0]   fp_adder_l1_1_out_payload_1;
  wire       [31:0]   fp_adder_l1_1_out_payload_2;
  wire       [31:0]   fp_adder_l1_1_out_payload_3;
  wire       [31:0]   fp_adder_l1_1_out_payload_4;
  wire       [31:0]   fp_adder_l1_1_out_payload_5;
  wire       [31:0]   fp_adder_l1_1_out_payload_6;
  wire       [31:0]   fp_adder_l1_1_out_payload_7;
  wire                fp_adder_l2_ina_ready;
  wire                fp_adder_l2_inb_ready;
  wire                fp_adder_l2_out_valid;
  wire       [31:0]   fp_adder_l2_out_payload_0;
  wire       [31:0]   fp_adder_l2_out_payload_1;
  wire       [31:0]   fp_adder_l2_out_payload_2;
  wire       [31:0]   fp_adder_l2_out_payload_3;
  wire       [31:0]   fp_adder_l2_out_payload_4;
  wire       [31:0]   fp_adder_l2_out_payload_5;
  wire       [31:0]   fp_adder_l2_out_payload_6;
  wire       [31:0]   fp_adder_l2_out_payload_7;

  atom_adder fp_adder_l0_0 (
    .ina_valid        (input_0_valid                ), //i
    .ina_ready        (fp_adder_l0_0_ina_ready      ), //o
    .ina_payload_0    (input_0_payload_0            ), //i
    .ina_payload_1    (input_0_payload_1            ), //i
    .ina_payload_2    (input_0_payload_2            ), //i
    .ina_payload_3    (input_0_payload_3            ), //i
    .ina_payload_4    (input_0_payload_4            ), //i
    .ina_payload_5    (input_0_payload_5            ), //i
    .ina_payload_6    (input_0_payload_6            ), //i
    .ina_payload_7    (input_0_payload_7            ), //i
    .inb_valid        (input_1_valid                ), //i
    .inb_ready        (fp_adder_l0_0_inb_ready      ), //o
    .inb_payload_0    (input_1_payload_0            ), //i
    .inb_payload_1    (input_1_payload_1            ), //i
    .inb_payload_2    (input_1_payload_2            ), //i
    .inb_payload_3    (input_1_payload_3            ), //i
    .inb_payload_4    (input_1_payload_4            ), //i
    .inb_payload_5    (input_1_payload_5            ), //i
    .inb_payload_6    (input_1_payload_6            ), //i
    .inb_payload_7    (input_1_payload_7            ), //i
    .out_valid        (fp_adder_l0_0_out_valid      ), //o
    .out_ready        (fp_adder_l1_0_ina_ready      ), //i
    .out_payload_0    (fp_adder_l0_0_out_payload_0  ), //o
    .out_payload_1    (fp_adder_l0_0_out_payload_1  ), //o
    .out_payload_2    (fp_adder_l0_0_out_payload_2  ), //o
    .out_payload_3    (fp_adder_l0_0_out_payload_3  ), //o
    .out_payload_4    (fp_adder_l0_0_out_payload_4  ), //o
    .out_payload_5    (fp_adder_l0_0_out_payload_5  ), //o
    .out_payload_6    (fp_adder_l0_0_out_payload_6  ), //o
    .out_payload_7    (fp_adder_l0_0_out_payload_7  ), //o
    .clk              (clk                          )  //i
  );
  atom_adder fp_adder_l0_1 (
    .ina_valid        (input_2_valid                ), //i
    .ina_ready        (fp_adder_l0_1_ina_ready      ), //o
    .ina_payload_0    (input_2_payload_0            ), //i
    .ina_payload_1    (input_2_payload_1            ), //i
    .ina_payload_2    (input_2_payload_2            ), //i
    .ina_payload_3    (input_2_payload_3            ), //i
    .ina_payload_4    (input_2_payload_4            ), //i
    .ina_payload_5    (input_2_payload_5            ), //i
    .ina_payload_6    (input_2_payload_6            ), //i
    .ina_payload_7    (input_2_payload_7            ), //i
    .inb_valid        (input_3_valid                ), //i
    .inb_ready        (fp_adder_l0_1_inb_ready      ), //o
    .inb_payload_0    (input_3_payload_0            ), //i
    .inb_payload_1    (input_3_payload_1            ), //i
    .inb_payload_2    (input_3_payload_2            ), //i
    .inb_payload_3    (input_3_payload_3            ), //i
    .inb_payload_4    (input_3_payload_4            ), //i
    .inb_payload_5    (input_3_payload_5            ), //i
    .inb_payload_6    (input_3_payload_6            ), //i
    .inb_payload_7    (input_3_payload_7            ), //i
    .out_valid        (fp_adder_l0_1_out_valid      ), //o
    .out_ready        (fp_adder_l1_0_inb_ready      ), //i
    .out_payload_0    (fp_adder_l0_1_out_payload_0  ), //o
    .out_payload_1    (fp_adder_l0_1_out_payload_1  ), //o
    .out_payload_2    (fp_adder_l0_1_out_payload_2  ), //o
    .out_payload_3    (fp_adder_l0_1_out_payload_3  ), //o
    .out_payload_4    (fp_adder_l0_1_out_payload_4  ), //o
    .out_payload_5    (fp_adder_l0_1_out_payload_5  ), //o
    .out_payload_6    (fp_adder_l0_1_out_payload_6  ), //o
    .out_payload_7    (fp_adder_l0_1_out_payload_7  ), //o
    .clk              (clk                          )  //i
  );
  atom_adder fp_adder_l0_2 (
    .ina_valid        (input_4_valid                ), //i
    .ina_ready        (fp_adder_l0_2_ina_ready      ), //o
    .ina_payload_0    (input_4_payload_0            ), //i
    .ina_payload_1    (input_4_payload_1            ), //i
    .ina_payload_2    (input_4_payload_2            ), //i
    .ina_payload_3    (input_4_payload_3            ), //i
    .ina_payload_4    (input_4_payload_4            ), //i
    .ina_payload_5    (input_4_payload_5            ), //i
    .ina_payload_6    (input_4_payload_6            ), //i
    .ina_payload_7    (input_4_payload_7            ), //i
    .inb_valid        (input_5_valid                ), //i
    .inb_ready        (fp_adder_l0_2_inb_ready      ), //o
    .inb_payload_0    (input_5_payload_0            ), //i
    .inb_payload_1    (input_5_payload_1            ), //i
    .inb_payload_2    (input_5_payload_2            ), //i
    .inb_payload_3    (input_5_payload_3            ), //i
    .inb_payload_4    (input_5_payload_4            ), //i
    .inb_payload_5    (input_5_payload_5            ), //i
    .inb_payload_6    (input_5_payload_6            ), //i
    .inb_payload_7    (input_5_payload_7            ), //i
    .out_valid        (fp_adder_l0_2_out_valid      ), //o
    .out_ready        (fp_adder_l1_1_ina_ready      ), //i
    .out_payload_0    (fp_adder_l0_2_out_payload_0  ), //o
    .out_payload_1    (fp_adder_l0_2_out_payload_1  ), //o
    .out_payload_2    (fp_adder_l0_2_out_payload_2  ), //o
    .out_payload_3    (fp_adder_l0_2_out_payload_3  ), //o
    .out_payload_4    (fp_adder_l0_2_out_payload_4  ), //o
    .out_payload_5    (fp_adder_l0_2_out_payload_5  ), //o
    .out_payload_6    (fp_adder_l0_2_out_payload_6  ), //o
    .out_payload_7    (fp_adder_l0_2_out_payload_7  ), //o
    .clk              (clk                          )  //i
  );
  atom_adder fp_adder_l0_3 (
    .ina_valid        (input_6_valid                ), //i
    .ina_ready        (fp_adder_l0_3_ina_ready      ), //o
    .ina_payload_0    (input_6_payload_0            ), //i
    .ina_payload_1    (input_6_payload_1            ), //i
    .ina_payload_2    (input_6_payload_2            ), //i
    .ina_payload_3    (input_6_payload_3            ), //i
    .ina_payload_4    (input_6_payload_4            ), //i
    .ina_payload_5    (input_6_payload_5            ), //i
    .ina_payload_6    (input_6_payload_6            ), //i
    .ina_payload_7    (input_6_payload_7            ), //i
    .inb_valid        (input_7_valid                ), //i
    .inb_ready        (fp_adder_l0_3_inb_ready      ), //o
    .inb_payload_0    (input_7_payload_0            ), //i
    .inb_payload_1    (input_7_payload_1            ), //i
    .inb_payload_2    (input_7_payload_2            ), //i
    .inb_payload_3    (input_7_payload_3            ), //i
    .inb_payload_4    (input_7_payload_4            ), //i
    .inb_payload_5    (input_7_payload_5            ), //i
    .inb_payload_6    (input_7_payload_6            ), //i
    .inb_payload_7    (input_7_payload_7            ), //i
    .out_valid        (fp_adder_l0_3_out_valid      ), //o
    .out_ready        (fp_adder_l1_1_inb_ready      ), //i
    .out_payload_0    (fp_adder_l0_3_out_payload_0  ), //o
    .out_payload_1    (fp_adder_l0_3_out_payload_1  ), //o
    .out_payload_2    (fp_adder_l0_3_out_payload_2  ), //o
    .out_payload_3    (fp_adder_l0_3_out_payload_3  ), //o
    .out_payload_4    (fp_adder_l0_3_out_payload_4  ), //o
    .out_payload_5    (fp_adder_l0_3_out_payload_5  ), //o
    .out_payload_6    (fp_adder_l0_3_out_payload_6  ), //o
    .out_payload_7    (fp_adder_l0_3_out_payload_7  ), //o
    .clk              (clk                          )  //i
  );
  atom_adder fp_adder_l1_0 (
    .ina_valid        (fp_adder_l0_0_out_valid      ), //i
    .ina_ready        (fp_adder_l1_0_ina_ready      ), //o
    .ina_payload_0    (fp_adder_l0_0_out_payload_0  ), //i
    .ina_payload_1    (fp_adder_l0_0_out_payload_1  ), //i
    .ina_payload_2    (fp_adder_l0_0_out_payload_2  ), //i
    .ina_payload_3    (fp_adder_l0_0_out_payload_3  ), //i
    .ina_payload_4    (fp_adder_l0_0_out_payload_4  ), //i
    .ina_payload_5    (fp_adder_l0_0_out_payload_5  ), //i
    .ina_payload_6    (fp_adder_l0_0_out_payload_6  ), //i
    .ina_payload_7    (fp_adder_l0_0_out_payload_7  ), //i
    .inb_valid        (fp_adder_l0_1_out_valid      ), //i
    .inb_ready        (fp_adder_l1_0_inb_ready      ), //o
    .inb_payload_0    (fp_adder_l0_1_out_payload_0  ), //i
    .inb_payload_1    (fp_adder_l0_1_out_payload_1  ), //i
    .inb_payload_2    (fp_adder_l0_1_out_payload_2  ), //i
    .inb_payload_3    (fp_adder_l0_1_out_payload_3  ), //i
    .inb_payload_4    (fp_adder_l0_1_out_payload_4  ), //i
    .inb_payload_5    (fp_adder_l0_1_out_payload_5  ), //i
    .inb_payload_6    (fp_adder_l0_1_out_payload_6  ), //i
    .inb_payload_7    (fp_adder_l0_1_out_payload_7  ), //i
    .out_valid        (fp_adder_l1_0_out_valid      ), //o
    .out_ready        (fp_adder_l2_ina_ready        ), //i
    .out_payload_0    (fp_adder_l1_0_out_payload_0  ), //o
    .out_payload_1    (fp_adder_l1_0_out_payload_1  ), //o
    .out_payload_2    (fp_adder_l1_0_out_payload_2  ), //o
    .out_payload_3    (fp_adder_l1_0_out_payload_3  ), //o
    .out_payload_4    (fp_adder_l1_0_out_payload_4  ), //o
    .out_payload_5    (fp_adder_l1_0_out_payload_5  ), //o
    .out_payload_6    (fp_adder_l1_0_out_payload_6  ), //o
    .out_payload_7    (fp_adder_l1_0_out_payload_7  ), //o
    .clk              (clk                          )  //i
  );
  atom_adder fp_adder_l1_1 (
    .ina_valid        (fp_adder_l0_2_out_valid      ), //i
    .ina_ready        (fp_adder_l1_1_ina_ready      ), //o
    .ina_payload_0    (fp_adder_l0_2_out_payload_0  ), //i
    .ina_payload_1    (fp_adder_l0_2_out_payload_1  ), //i
    .ina_payload_2    (fp_adder_l0_2_out_payload_2  ), //i
    .ina_payload_3    (fp_adder_l0_2_out_payload_3  ), //i
    .ina_payload_4    (fp_adder_l0_2_out_payload_4  ), //i
    .ina_payload_5    (fp_adder_l0_2_out_payload_5  ), //i
    .ina_payload_6    (fp_adder_l0_2_out_payload_6  ), //i
    .ina_payload_7    (fp_adder_l0_2_out_payload_7  ), //i
    .inb_valid        (fp_adder_l0_3_out_valid      ), //i
    .inb_ready        (fp_adder_l1_1_inb_ready      ), //o
    .inb_payload_0    (fp_adder_l0_3_out_payload_0  ), //i
    .inb_payload_1    (fp_adder_l0_3_out_payload_1  ), //i
    .inb_payload_2    (fp_adder_l0_3_out_payload_2  ), //i
    .inb_payload_3    (fp_adder_l0_3_out_payload_3  ), //i
    .inb_payload_4    (fp_adder_l0_3_out_payload_4  ), //i
    .inb_payload_5    (fp_adder_l0_3_out_payload_5  ), //i
    .inb_payload_6    (fp_adder_l0_3_out_payload_6  ), //i
    .inb_payload_7    (fp_adder_l0_3_out_payload_7  ), //i
    .out_valid        (fp_adder_l1_1_out_valid      ), //o
    .out_ready        (fp_adder_l2_inb_ready        ), //i
    .out_payload_0    (fp_adder_l1_1_out_payload_0  ), //o
    .out_payload_1    (fp_adder_l1_1_out_payload_1  ), //o
    .out_payload_2    (fp_adder_l1_1_out_payload_2  ), //o
    .out_payload_3    (fp_adder_l1_1_out_payload_3  ), //o
    .out_payload_4    (fp_adder_l1_1_out_payload_4  ), //o
    .out_payload_5    (fp_adder_l1_1_out_payload_5  ), //o
    .out_payload_6    (fp_adder_l1_1_out_payload_6  ), //o
    .out_payload_7    (fp_adder_l1_1_out_payload_7  ), //o
    .clk              (clk                          )  //i
  );
  atom_adder fp_adder_l2 (
    .ina_valid        (fp_adder_l1_0_out_valid      ), //i
    .ina_ready        (fp_adder_l2_ina_ready        ), //o
    .ina_payload_0    (fp_adder_l1_0_out_payload_0  ), //i
    .ina_payload_1    (fp_adder_l1_0_out_payload_1  ), //i
    .ina_payload_2    (fp_adder_l1_0_out_payload_2  ), //i
    .ina_payload_3    (fp_adder_l1_0_out_payload_3  ), //i
    .ina_payload_4    (fp_adder_l1_0_out_payload_4  ), //i
    .ina_payload_5    (fp_adder_l1_0_out_payload_5  ), //i
    .ina_payload_6    (fp_adder_l1_0_out_payload_6  ), //i
    .ina_payload_7    (fp_adder_l1_0_out_payload_7  ), //i
    .inb_valid        (fp_adder_l1_1_out_valid      ), //i
    .inb_ready        (fp_adder_l2_inb_ready        ), //o
    .inb_payload_0    (fp_adder_l1_1_out_payload_0  ), //i
    .inb_payload_1    (fp_adder_l1_1_out_payload_1  ), //i
    .inb_payload_2    (fp_adder_l1_1_out_payload_2  ), //i
    .inb_payload_3    (fp_adder_l1_1_out_payload_3  ), //i
    .inb_payload_4    (fp_adder_l1_1_out_payload_4  ), //i
    .inb_payload_5    (fp_adder_l1_1_out_payload_5  ), //i
    .inb_payload_6    (fp_adder_l1_1_out_payload_6  ), //i
    .inb_payload_7    (fp_adder_l1_1_out_payload_7  ), //i
    .out_valid        (fp_adder_l2_out_valid        ), //o
    .out_ready        (output_ready                 ), //i
    .out_payload_0    (fp_adder_l2_out_payload_0    ), //o
    .out_payload_1    (fp_adder_l2_out_payload_1    ), //o
    .out_payload_2    (fp_adder_l2_out_payload_2    ), //o
    .out_payload_3    (fp_adder_l2_out_payload_3    ), //o
    .out_payload_4    (fp_adder_l2_out_payload_4    ), //o
    .out_payload_5    (fp_adder_l2_out_payload_5    ), //o
    .out_payload_6    (fp_adder_l2_out_payload_6    ), //o
    .out_payload_7    (fp_adder_l2_out_payload_7    ), //o
    .clk              (clk                          )  //i
  );
  assign input_0_ready = fp_adder_l0_0_ina_ready;
  assign input_1_ready = fp_adder_l0_0_inb_ready;
  assign input_2_ready = fp_adder_l0_1_ina_ready;
  assign input_3_ready = fp_adder_l0_1_inb_ready;
  assign input_4_ready = fp_adder_l0_2_ina_ready;
  assign input_5_ready = fp_adder_l0_2_inb_ready;
  assign input_6_ready = fp_adder_l0_3_ina_ready;
  assign input_7_ready = fp_adder_l0_3_inb_ready;
  assign output_valid = fp_adder_l2_out_valid;
  assign output_payload_0 = fp_adder_l2_out_payload_0;
  assign output_payload_1 = fp_adder_l2_out_payload_1;
  assign output_payload_2 = fp_adder_l2_out_payload_2;
  assign output_payload_3 = fp_adder_l2_out_payload_3;
  assign output_payload_4 = fp_adder_l2_out_payload_4;
  assign output_payload_5 = fp_adder_l2_out_payload_5;
  assign output_payload_6 = fp_adder_l2_out_payload_6;
  assign output_payload_7 = fp_adder_l2_out_payload_7;

endmodule

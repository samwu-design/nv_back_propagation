// Generator : SpinalHDL v1.5.0    git head : 83a031922866b078c411ec5529e00f1b6e79f8e7
// Component : array_adder
// Git hash  : 468260b61ffaaed727a3b82deccca770fc0579f1



module array_adder (
  input               io_in_0_0_valid,
  output              io_in_0_0_ready,
  input      [31:0]   io_in_0_0_payload,
  input               io_in_0_1_valid,
  output              io_in_0_1_ready,
  input      [31:0]   io_in_0_1_payload,
  input               io_in_0_2_valid,
  output              io_in_0_2_ready,
  input      [31:0]   io_in_0_2_payload,
  input               io_in_0_3_valid,
  output              io_in_0_3_ready,
  input      [31:0]   io_in_0_3_payload,
  input               io_in_0_4_valid,
  output              io_in_0_4_ready,
  input      [31:0]   io_in_0_4_payload,
  input               io_in_0_5_valid,
  output              io_in_0_5_ready,
  input      [31:0]   io_in_0_5_payload,
  input               io_in_0_6_valid,
  output              io_in_0_6_ready,
  input      [31:0]   io_in_0_6_payload,
  input               io_in_0_7_valid,
  output              io_in_0_7_ready,
  input      [31:0]   io_in_0_7_payload,
  input               io_in_1_0_valid,
  output              io_in_1_0_ready,
  input      [31:0]   io_in_1_0_payload,
  input               io_in_1_1_valid,
  output              io_in_1_1_ready,
  input      [31:0]   io_in_1_1_payload,
  input               io_in_1_2_valid,
  output              io_in_1_2_ready,
  input      [31:0]   io_in_1_2_payload,
  input               io_in_1_3_valid,
  output              io_in_1_3_ready,
  input      [31:0]   io_in_1_3_payload,
  input               io_in_1_4_valid,
  output              io_in_1_4_ready,
  input      [31:0]   io_in_1_4_payload,
  input               io_in_1_5_valid,
  output              io_in_1_5_ready,
  input      [31:0]   io_in_1_5_payload,
  input               io_in_1_6_valid,
  output              io_in_1_6_ready,
  input      [31:0]   io_in_1_6_payload,
  input               io_in_1_7_valid,
  output              io_in_1_7_ready,
  input      [31:0]   io_in_1_7_payload,
  input               io_in_2_0_valid,
  output              io_in_2_0_ready,
  input      [31:0]   io_in_2_0_payload,
  input               io_in_2_1_valid,
  output              io_in_2_1_ready,
  input      [31:0]   io_in_2_1_payload,
  input               io_in_2_2_valid,
  output              io_in_2_2_ready,
  input      [31:0]   io_in_2_2_payload,
  input               io_in_2_3_valid,
  output              io_in_2_3_ready,
  input      [31:0]   io_in_2_3_payload,
  input               io_in_2_4_valid,
  output              io_in_2_4_ready,
  input      [31:0]   io_in_2_4_payload,
  input               io_in_2_5_valid,
  output              io_in_2_5_ready,
  input      [31:0]   io_in_2_5_payload,
  input               io_in_2_6_valid,
  output              io_in_2_6_ready,
  input      [31:0]   io_in_2_6_payload,
  input               io_in_2_7_valid,
  output              io_in_2_7_ready,
  input      [31:0]   io_in_2_7_payload,
  input               io_in_3_0_valid,
  output              io_in_3_0_ready,
  input      [31:0]   io_in_3_0_payload,
  input               io_in_3_1_valid,
  output              io_in_3_1_ready,
  input      [31:0]   io_in_3_1_payload,
  input               io_in_3_2_valid,
  output              io_in_3_2_ready,
  input      [31:0]   io_in_3_2_payload,
  input               io_in_3_3_valid,
  output              io_in_3_3_ready,
  input      [31:0]   io_in_3_3_payload,
  input               io_in_3_4_valid,
  output              io_in_3_4_ready,
  input      [31:0]   io_in_3_4_payload,
  input               io_in_3_5_valid,
  output              io_in_3_5_ready,
  input      [31:0]   io_in_3_5_payload,
  input               io_in_3_6_valid,
  output              io_in_3_6_ready,
  input      [31:0]   io_in_3_6_payload,
  input               io_in_3_7_valid,
  output              io_in_3_7_ready,
  input      [31:0]   io_in_3_7_payload,
  input               io_in_4_0_valid,
  output              io_in_4_0_ready,
  input      [31:0]   io_in_4_0_payload,
  input               io_in_4_1_valid,
  output              io_in_4_1_ready,
  input      [31:0]   io_in_4_1_payload,
  input               io_in_4_2_valid,
  output              io_in_4_2_ready,
  input      [31:0]   io_in_4_2_payload,
  input               io_in_4_3_valid,
  output              io_in_4_3_ready,
  input      [31:0]   io_in_4_3_payload,
  input               io_in_4_4_valid,
  output              io_in_4_4_ready,
  input      [31:0]   io_in_4_4_payload,
  input               io_in_4_5_valid,
  output              io_in_4_5_ready,
  input      [31:0]   io_in_4_5_payload,
  input               io_in_4_6_valid,
  output              io_in_4_6_ready,
  input      [31:0]   io_in_4_6_payload,
  input               io_in_4_7_valid,
  output              io_in_4_7_ready,
  input      [31:0]   io_in_4_7_payload,
  input               io_in_5_0_valid,
  output              io_in_5_0_ready,
  input      [31:0]   io_in_5_0_payload,
  input               io_in_5_1_valid,
  output              io_in_5_1_ready,
  input      [31:0]   io_in_5_1_payload,
  input               io_in_5_2_valid,
  output              io_in_5_2_ready,
  input      [31:0]   io_in_5_2_payload,
  input               io_in_5_3_valid,
  output              io_in_5_3_ready,
  input      [31:0]   io_in_5_3_payload,
  input               io_in_5_4_valid,
  output              io_in_5_4_ready,
  input      [31:0]   io_in_5_4_payload,
  input               io_in_5_5_valid,
  output              io_in_5_5_ready,
  input      [31:0]   io_in_5_5_payload,
  input               io_in_5_6_valid,
  output              io_in_5_6_ready,
  input      [31:0]   io_in_5_6_payload,
  input               io_in_5_7_valid,
  output              io_in_5_7_ready,
  input      [31:0]   io_in_5_7_payload,
  input               io_in_6_0_valid,
  output              io_in_6_0_ready,
  input      [31:0]   io_in_6_0_payload,
  input               io_in_6_1_valid,
  output              io_in_6_1_ready,
  input      [31:0]   io_in_6_1_payload,
  input               io_in_6_2_valid,
  output              io_in_6_2_ready,
  input      [31:0]   io_in_6_2_payload,
  input               io_in_6_3_valid,
  output              io_in_6_3_ready,
  input      [31:0]   io_in_6_3_payload,
  input               io_in_6_4_valid,
  output              io_in_6_4_ready,
  input      [31:0]   io_in_6_4_payload,
  input               io_in_6_5_valid,
  output              io_in_6_5_ready,
  input      [31:0]   io_in_6_5_payload,
  input               io_in_6_6_valid,
  output              io_in_6_6_ready,
  input      [31:0]   io_in_6_6_payload,
  input               io_in_6_7_valid,
  output              io_in_6_7_ready,
  input      [31:0]   io_in_6_7_payload,
  input               io_in_7_0_valid,
  output              io_in_7_0_ready,
  input      [31:0]   io_in_7_0_payload,
  input               io_in_7_1_valid,
  output              io_in_7_1_ready,
  input      [31:0]   io_in_7_1_payload,
  input               io_in_7_2_valid,
  output              io_in_7_2_ready,
  input      [31:0]   io_in_7_2_payload,
  input               io_in_7_3_valid,
  output              io_in_7_3_ready,
  input      [31:0]   io_in_7_3_payload,
  input               io_in_7_4_valid,
  output              io_in_7_4_ready,
  input      [31:0]   io_in_7_4_payload,
  input               io_in_7_5_valid,
  output              io_in_7_5_ready,
  input      [31:0]   io_in_7_5_payload,
  input               io_in_7_6_valid,
  output              io_in_7_6_ready,
  input      [31:0]   io_in_7_6_payload,
  input               io_in_7_7_valid,
  output              io_in_7_7_ready,
  input      [31:0]   io_in_7_7_payload,
  output              io_out_0_valid,
  input               io_out_0_ready,
  output     [31:0]   io_out_0_payload,
  output              io_out_1_valid,
  input               io_out_1_ready,
  output     [31:0]   io_out_1_payload,
  output              io_out_2_valid,
  input               io_out_2_ready,
  output     [31:0]   io_out_2_payload,
  output              io_out_3_valid,
  input               io_out_3_ready,
  output     [31:0]   io_out_3_payload,
  output              io_out_4_valid,
  input               io_out_4_ready,
  output     [31:0]   io_out_4_payload,
  output              io_out_5_valid,
  input               io_out_5_ready,
  output     [31:0]   io_out_5_payload,
  output              io_out_6_valid,
  input               io_out_6_ready,
  output     [31:0]   io_out_6_payload,
  output              io_out_7_valid,
  input               io_out_7_ready,
  output     [31:0]   io_out_7_payload,
  input               clk
);
  wire                atom_adder_0_io_in_0_ready;
  wire                atom_adder_0_io_in_1_ready;
  wire                atom_adder_0_io_in_2_ready;
  wire                atom_adder_0_io_in_3_ready;
  wire                atom_adder_0_io_in_4_ready;
  wire                atom_adder_0_io_in_5_ready;
  wire                atom_adder_0_io_in_6_ready;
  wire                atom_adder_0_io_in_7_ready;
  wire                atom_adder_0_io_out_valid;
  wire       [31:0]   atom_adder_0_io_out_payload;
  wire                atom_adder_1_1_io_in_0_ready;
  wire                atom_adder_1_1_io_in_1_ready;
  wire                atom_adder_1_1_io_in_2_ready;
  wire                atom_adder_1_1_io_in_3_ready;
  wire                atom_adder_1_1_io_in_4_ready;
  wire                atom_adder_1_1_io_in_5_ready;
  wire                atom_adder_1_1_io_in_6_ready;
  wire                atom_adder_1_1_io_in_7_ready;
  wire                atom_adder_1_1_io_out_valid;
  wire       [31:0]   atom_adder_1_1_io_out_payload;
  wire                atom_adder_2_1_io_in_0_ready;
  wire                atom_adder_2_1_io_in_1_ready;
  wire                atom_adder_2_1_io_in_2_ready;
  wire                atom_adder_2_1_io_in_3_ready;
  wire                atom_adder_2_1_io_in_4_ready;
  wire                atom_adder_2_1_io_in_5_ready;
  wire                atom_adder_2_1_io_in_6_ready;
  wire                atom_adder_2_1_io_in_7_ready;
  wire                atom_adder_2_1_io_out_valid;
  wire       [31:0]   atom_adder_2_1_io_out_payload;
  wire                atom_adder_3_1_io_in_0_ready;
  wire                atom_adder_3_1_io_in_1_ready;
  wire                atom_adder_3_1_io_in_2_ready;
  wire                atom_adder_3_1_io_in_3_ready;
  wire                atom_adder_3_1_io_in_4_ready;
  wire                atom_adder_3_1_io_in_5_ready;
  wire                atom_adder_3_1_io_in_6_ready;
  wire                atom_adder_3_1_io_in_7_ready;
  wire                atom_adder_3_1_io_out_valid;
  wire       [31:0]   atom_adder_3_1_io_out_payload;
  wire                atom_adder_4_1_io_in_0_ready;
  wire                atom_adder_4_1_io_in_1_ready;
  wire                atom_adder_4_1_io_in_2_ready;
  wire                atom_adder_4_1_io_in_3_ready;
  wire                atom_adder_4_1_io_in_4_ready;
  wire                atom_adder_4_1_io_in_5_ready;
  wire                atom_adder_4_1_io_in_6_ready;
  wire                atom_adder_4_1_io_in_7_ready;
  wire                atom_adder_4_1_io_out_valid;
  wire       [31:0]   atom_adder_4_1_io_out_payload;
  wire                atom_adder_5_1_io_in_0_ready;
  wire                atom_adder_5_1_io_in_1_ready;
  wire                atom_adder_5_1_io_in_2_ready;
  wire                atom_adder_5_1_io_in_3_ready;
  wire                atom_adder_5_1_io_in_4_ready;
  wire                atom_adder_5_1_io_in_5_ready;
  wire                atom_adder_5_1_io_in_6_ready;
  wire                atom_adder_5_1_io_in_7_ready;
  wire                atom_adder_5_1_io_out_valid;
  wire       [31:0]   atom_adder_5_1_io_out_payload;
  wire                atom_adder_6_1_io_in_0_ready;
  wire                atom_adder_6_1_io_in_1_ready;
  wire                atom_adder_6_1_io_in_2_ready;
  wire                atom_adder_6_1_io_in_3_ready;
  wire                atom_adder_6_1_io_in_4_ready;
  wire                atom_adder_6_1_io_in_5_ready;
  wire                atom_adder_6_1_io_in_6_ready;
  wire                atom_adder_6_1_io_in_7_ready;
  wire                atom_adder_6_1_io_out_valid;
  wire       [31:0]   atom_adder_6_1_io_out_payload;
  wire                atom_adder_7_1_io_in_0_ready;
  wire                atom_adder_7_1_io_in_1_ready;
  wire                atom_adder_7_1_io_in_2_ready;
  wire                atom_adder_7_1_io_in_3_ready;
  wire                atom_adder_7_1_io_in_4_ready;
  wire                atom_adder_7_1_io_in_5_ready;
  wire                atom_adder_7_1_io_in_6_ready;
  wire                atom_adder_7_1_io_in_7_ready;
  wire                atom_adder_7_1_io_out_valid;
  wire       [31:0]   atom_adder_7_1_io_out_payload;

  atom_adder atom_adder_0 (
    .io_in_0_valid      (io_in_0_0_valid              ), //i
    .io_in_0_ready      (atom_adder_0_io_in_0_ready   ), //o
    .io_in_0_payload    (io_in_0_0_payload            ), //i
    .io_in_1_valid      (io_in_0_1_valid              ), //i
    .io_in_1_ready      (atom_adder_0_io_in_1_ready   ), //o
    .io_in_1_payload    (io_in_0_1_payload            ), //i
    .io_in_2_valid      (io_in_0_2_valid              ), //i
    .io_in_2_ready      (atom_adder_0_io_in_2_ready   ), //o
    .io_in_2_payload    (io_in_0_2_payload            ), //i
    .io_in_3_valid      (io_in_0_3_valid              ), //i
    .io_in_3_ready      (atom_adder_0_io_in_3_ready   ), //o
    .io_in_3_payload    (io_in_0_3_payload            ), //i
    .io_in_4_valid      (io_in_0_4_valid              ), //i
    .io_in_4_ready      (atom_adder_0_io_in_4_ready   ), //o
    .io_in_4_payload    (io_in_0_4_payload            ), //i
    .io_in_5_valid      (io_in_0_5_valid              ), //i
    .io_in_5_ready      (atom_adder_0_io_in_5_ready   ), //o
    .io_in_5_payload    (io_in_0_5_payload            ), //i
    .io_in_6_valid      (io_in_0_6_valid              ), //i
    .io_in_6_ready      (atom_adder_0_io_in_6_ready   ), //o
    .io_in_6_payload    (io_in_0_6_payload            ), //i
    .io_in_7_valid      (io_in_0_7_valid              ), //i
    .io_in_7_ready      (atom_adder_0_io_in_7_ready   ), //o
    .io_in_7_payload    (io_in_0_7_payload            ), //i
    .io_out_valid       (atom_adder_0_io_out_valid    ), //o
    .io_out_ready       (io_out_0_ready               ), //i
    .io_out_payload     (atom_adder_0_io_out_payload  ), //o
    .clk                (clk                          )  //i
  );
  atom_adder atom_adder_1_1 (
    .io_in_0_valid      (io_in_1_0_valid                ), //i
    .io_in_0_ready      (atom_adder_1_1_io_in_0_ready   ), //o
    .io_in_0_payload    (io_in_1_0_payload              ), //i
    .io_in_1_valid      (io_in_1_1_valid                ), //i
    .io_in_1_ready      (atom_adder_1_1_io_in_1_ready   ), //o
    .io_in_1_payload    (io_in_1_1_payload              ), //i
    .io_in_2_valid      (io_in_1_2_valid                ), //i
    .io_in_2_ready      (atom_adder_1_1_io_in_2_ready   ), //o
    .io_in_2_payload    (io_in_1_2_payload              ), //i
    .io_in_3_valid      (io_in_1_3_valid                ), //i
    .io_in_3_ready      (atom_adder_1_1_io_in_3_ready   ), //o
    .io_in_3_payload    (io_in_1_3_payload              ), //i
    .io_in_4_valid      (io_in_1_4_valid                ), //i
    .io_in_4_ready      (atom_adder_1_1_io_in_4_ready   ), //o
    .io_in_4_payload    (io_in_1_4_payload              ), //i
    .io_in_5_valid      (io_in_1_5_valid                ), //i
    .io_in_5_ready      (atom_adder_1_1_io_in_5_ready   ), //o
    .io_in_5_payload    (io_in_1_5_payload              ), //i
    .io_in_6_valid      (io_in_1_6_valid                ), //i
    .io_in_6_ready      (atom_adder_1_1_io_in_6_ready   ), //o
    .io_in_6_payload    (io_in_1_6_payload              ), //i
    .io_in_7_valid      (io_in_1_7_valid                ), //i
    .io_in_7_ready      (atom_adder_1_1_io_in_7_ready   ), //o
    .io_in_7_payload    (io_in_1_7_payload              ), //i
    .io_out_valid       (atom_adder_1_1_io_out_valid    ), //o
    .io_out_ready       (io_out_1_ready                 ), //i
    .io_out_payload     (atom_adder_1_1_io_out_payload  ), //o
    .clk                (clk                            )  //i
  );
  atom_adder atom_adder_2_1 (
    .io_in_0_valid      (io_in_2_0_valid                ), //i
    .io_in_0_ready      (atom_adder_2_1_io_in_0_ready   ), //o
    .io_in_0_payload    (io_in_2_0_payload              ), //i
    .io_in_1_valid      (io_in_2_1_valid                ), //i
    .io_in_1_ready      (atom_adder_2_1_io_in_1_ready   ), //o
    .io_in_1_payload    (io_in_2_1_payload              ), //i
    .io_in_2_valid      (io_in_2_2_valid                ), //i
    .io_in_2_ready      (atom_adder_2_1_io_in_2_ready   ), //o
    .io_in_2_payload    (io_in_2_2_payload              ), //i
    .io_in_3_valid      (io_in_2_3_valid                ), //i
    .io_in_3_ready      (atom_adder_2_1_io_in_3_ready   ), //o
    .io_in_3_payload    (io_in_2_3_payload              ), //i
    .io_in_4_valid      (io_in_2_4_valid                ), //i
    .io_in_4_ready      (atom_adder_2_1_io_in_4_ready   ), //o
    .io_in_4_payload    (io_in_2_4_payload              ), //i
    .io_in_5_valid      (io_in_2_5_valid                ), //i
    .io_in_5_ready      (atom_adder_2_1_io_in_5_ready   ), //o
    .io_in_5_payload    (io_in_2_5_payload              ), //i
    .io_in_6_valid      (io_in_2_6_valid                ), //i
    .io_in_6_ready      (atom_adder_2_1_io_in_6_ready   ), //o
    .io_in_6_payload    (io_in_2_6_payload              ), //i
    .io_in_7_valid      (io_in_2_7_valid                ), //i
    .io_in_7_ready      (atom_adder_2_1_io_in_7_ready   ), //o
    .io_in_7_payload    (io_in_2_7_payload              ), //i
    .io_out_valid       (atom_adder_2_1_io_out_valid    ), //o
    .io_out_ready       (io_out_2_ready                 ), //i
    .io_out_payload     (atom_adder_2_1_io_out_payload  ), //o
    .clk                (clk                            )  //i
  );
  atom_adder atom_adder_3_1 (
    .io_in_0_valid      (io_in_3_0_valid                ), //i
    .io_in_0_ready      (atom_adder_3_1_io_in_0_ready   ), //o
    .io_in_0_payload    (io_in_3_0_payload              ), //i
    .io_in_1_valid      (io_in_3_1_valid                ), //i
    .io_in_1_ready      (atom_adder_3_1_io_in_1_ready   ), //o
    .io_in_1_payload    (io_in_3_1_payload              ), //i
    .io_in_2_valid      (io_in_3_2_valid                ), //i
    .io_in_2_ready      (atom_adder_3_1_io_in_2_ready   ), //o
    .io_in_2_payload    (io_in_3_2_payload              ), //i
    .io_in_3_valid      (io_in_3_3_valid                ), //i
    .io_in_3_ready      (atom_adder_3_1_io_in_3_ready   ), //o
    .io_in_3_payload    (io_in_3_3_payload              ), //i
    .io_in_4_valid      (io_in_3_4_valid                ), //i
    .io_in_4_ready      (atom_adder_3_1_io_in_4_ready   ), //o
    .io_in_4_payload    (io_in_3_4_payload              ), //i
    .io_in_5_valid      (io_in_3_5_valid                ), //i
    .io_in_5_ready      (atom_adder_3_1_io_in_5_ready   ), //o
    .io_in_5_payload    (io_in_3_5_payload              ), //i
    .io_in_6_valid      (io_in_3_6_valid                ), //i
    .io_in_6_ready      (atom_adder_3_1_io_in_6_ready   ), //o
    .io_in_6_payload    (io_in_3_6_payload              ), //i
    .io_in_7_valid      (io_in_3_7_valid                ), //i
    .io_in_7_ready      (atom_adder_3_1_io_in_7_ready   ), //o
    .io_in_7_payload    (io_in_3_7_payload              ), //i
    .io_out_valid       (atom_adder_3_1_io_out_valid    ), //o
    .io_out_ready       (io_out_3_ready                 ), //i
    .io_out_payload     (atom_adder_3_1_io_out_payload  ), //o
    .clk                (clk                            )  //i
  );
  atom_adder atom_adder_4_1 (
    .io_in_0_valid      (io_in_4_0_valid                ), //i
    .io_in_0_ready      (atom_adder_4_1_io_in_0_ready   ), //o
    .io_in_0_payload    (io_in_4_0_payload              ), //i
    .io_in_1_valid      (io_in_4_1_valid                ), //i
    .io_in_1_ready      (atom_adder_4_1_io_in_1_ready   ), //o
    .io_in_1_payload    (io_in_4_1_payload              ), //i
    .io_in_2_valid      (io_in_4_2_valid                ), //i
    .io_in_2_ready      (atom_adder_4_1_io_in_2_ready   ), //o
    .io_in_2_payload    (io_in_4_2_payload              ), //i
    .io_in_3_valid      (io_in_4_3_valid                ), //i
    .io_in_3_ready      (atom_adder_4_1_io_in_3_ready   ), //o
    .io_in_3_payload    (io_in_4_3_payload              ), //i
    .io_in_4_valid      (io_in_4_4_valid                ), //i
    .io_in_4_ready      (atom_adder_4_1_io_in_4_ready   ), //o
    .io_in_4_payload    (io_in_4_4_payload              ), //i
    .io_in_5_valid      (io_in_4_5_valid                ), //i
    .io_in_5_ready      (atom_adder_4_1_io_in_5_ready   ), //o
    .io_in_5_payload    (io_in_4_5_payload              ), //i
    .io_in_6_valid      (io_in_4_6_valid                ), //i
    .io_in_6_ready      (atom_adder_4_1_io_in_6_ready   ), //o
    .io_in_6_payload    (io_in_4_6_payload              ), //i
    .io_in_7_valid      (io_in_4_7_valid                ), //i
    .io_in_7_ready      (atom_adder_4_1_io_in_7_ready   ), //o
    .io_in_7_payload    (io_in_4_7_payload              ), //i
    .io_out_valid       (atom_adder_4_1_io_out_valid    ), //o
    .io_out_ready       (io_out_4_ready                 ), //i
    .io_out_payload     (atom_adder_4_1_io_out_payload  ), //o
    .clk                (clk                            )  //i
  );
  atom_adder atom_adder_5_1 (
    .io_in_0_valid      (io_in_5_0_valid                ), //i
    .io_in_0_ready      (atom_adder_5_1_io_in_0_ready   ), //o
    .io_in_0_payload    (io_in_5_0_payload              ), //i
    .io_in_1_valid      (io_in_5_1_valid                ), //i
    .io_in_1_ready      (atom_adder_5_1_io_in_1_ready   ), //o
    .io_in_1_payload    (io_in_5_1_payload              ), //i
    .io_in_2_valid      (io_in_5_2_valid                ), //i
    .io_in_2_ready      (atom_adder_5_1_io_in_2_ready   ), //o
    .io_in_2_payload    (io_in_5_2_payload              ), //i
    .io_in_3_valid      (io_in_5_3_valid                ), //i
    .io_in_3_ready      (atom_adder_5_1_io_in_3_ready   ), //o
    .io_in_3_payload    (io_in_5_3_payload              ), //i
    .io_in_4_valid      (io_in_5_4_valid                ), //i
    .io_in_4_ready      (atom_adder_5_1_io_in_4_ready   ), //o
    .io_in_4_payload    (io_in_5_4_payload              ), //i
    .io_in_5_valid      (io_in_5_5_valid                ), //i
    .io_in_5_ready      (atom_adder_5_1_io_in_5_ready   ), //o
    .io_in_5_payload    (io_in_5_5_payload              ), //i
    .io_in_6_valid      (io_in_5_6_valid                ), //i
    .io_in_6_ready      (atom_adder_5_1_io_in_6_ready   ), //o
    .io_in_6_payload    (io_in_5_6_payload              ), //i
    .io_in_7_valid      (io_in_5_7_valid                ), //i
    .io_in_7_ready      (atom_adder_5_1_io_in_7_ready   ), //o
    .io_in_7_payload    (io_in_5_7_payload              ), //i
    .io_out_valid       (atom_adder_5_1_io_out_valid    ), //o
    .io_out_ready       (io_out_5_ready                 ), //i
    .io_out_payload     (atom_adder_5_1_io_out_payload  ), //o
    .clk                (clk                            )  //i
  );
  atom_adder atom_adder_6_1 (
    .io_in_0_valid      (io_in_6_0_valid                ), //i
    .io_in_0_ready      (atom_adder_6_1_io_in_0_ready   ), //o
    .io_in_0_payload    (io_in_6_0_payload              ), //i
    .io_in_1_valid      (io_in_6_1_valid                ), //i
    .io_in_1_ready      (atom_adder_6_1_io_in_1_ready   ), //o
    .io_in_1_payload    (io_in_6_1_payload              ), //i
    .io_in_2_valid      (io_in_6_2_valid                ), //i
    .io_in_2_ready      (atom_adder_6_1_io_in_2_ready   ), //o
    .io_in_2_payload    (io_in_6_2_payload              ), //i
    .io_in_3_valid      (io_in_6_3_valid                ), //i
    .io_in_3_ready      (atom_adder_6_1_io_in_3_ready   ), //o
    .io_in_3_payload    (io_in_6_3_payload              ), //i
    .io_in_4_valid      (io_in_6_4_valid                ), //i
    .io_in_4_ready      (atom_adder_6_1_io_in_4_ready   ), //o
    .io_in_4_payload    (io_in_6_4_payload              ), //i
    .io_in_5_valid      (io_in_6_5_valid                ), //i
    .io_in_5_ready      (atom_adder_6_1_io_in_5_ready   ), //o
    .io_in_5_payload    (io_in_6_5_payload              ), //i
    .io_in_6_valid      (io_in_6_6_valid                ), //i
    .io_in_6_ready      (atom_adder_6_1_io_in_6_ready   ), //o
    .io_in_6_payload    (io_in_6_6_payload              ), //i
    .io_in_7_valid      (io_in_6_7_valid                ), //i
    .io_in_7_ready      (atom_adder_6_1_io_in_7_ready   ), //o
    .io_in_7_payload    (io_in_6_7_payload              ), //i
    .io_out_valid       (atom_adder_6_1_io_out_valid    ), //o
    .io_out_ready       (io_out_6_ready                 ), //i
    .io_out_payload     (atom_adder_6_1_io_out_payload  ), //o
    .clk                (clk                            )  //i
  );
  atom_adder atom_adder_7_1 (
    .io_in_0_valid      (io_in_7_0_valid                ), //i
    .io_in_0_ready      (atom_adder_7_1_io_in_0_ready   ), //o
    .io_in_0_payload    (io_in_7_0_payload              ), //i
    .io_in_1_valid      (io_in_7_1_valid                ), //i
    .io_in_1_ready      (atom_adder_7_1_io_in_1_ready   ), //o
    .io_in_1_payload    (io_in_7_1_payload              ), //i
    .io_in_2_valid      (io_in_7_2_valid                ), //i
    .io_in_2_ready      (atom_adder_7_1_io_in_2_ready   ), //o
    .io_in_2_payload    (io_in_7_2_payload              ), //i
    .io_in_3_valid      (io_in_7_3_valid                ), //i
    .io_in_3_ready      (atom_adder_7_1_io_in_3_ready   ), //o
    .io_in_3_payload    (io_in_7_3_payload              ), //i
    .io_in_4_valid      (io_in_7_4_valid                ), //i
    .io_in_4_ready      (atom_adder_7_1_io_in_4_ready   ), //o
    .io_in_4_payload    (io_in_7_4_payload              ), //i
    .io_in_5_valid      (io_in_7_5_valid                ), //i
    .io_in_5_ready      (atom_adder_7_1_io_in_5_ready   ), //o
    .io_in_5_payload    (io_in_7_5_payload              ), //i
    .io_in_6_valid      (io_in_7_6_valid                ), //i
    .io_in_6_ready      (atom_adder_7_1_io_in_6_ready   ), //o
    .io_in_6_payload    (io_in_7_6_payload              ), //i
    .io_in_7_valid      (io_in_7_7_valid                ), //i
    .io_in_7_ready      (atom_adder_7_1_io_in_7_ready   ), //o
    .io_in_7_payload    (io_in_7_7_payload              ), //i
    .io_out_valid       (atom_adder_7_1_io_out_valid    ), //o
    .io_out_ready       (io_out_7_ready                 ), //i
    .io_out_payload     (atom_adder_7_1_io_out_payload  ), //o
    .clk                (clk                            )  //i
  );
  assign io_in_0_0_ready = atom_adder_0_io_in_0_ready;
  assign io_in_0_1_ready = atom_adder_0_io_in_1_ready;
  assign io_in_0_2_ready = atom_adder_0_io_in_2_ready;
  assign io_in_0_3_ready = atom_adder_0_io_in_3_ready;
  assign io_in_0_4_ready = atom_adder_0_io_in_4_ready;
  assign io_in_0_5_ready = atom_adder_0_io_in_5_ready;
  assign io_in_0_6_ready = atom_adder_0_io_in_6_ready;
  assign io_in_0_7_ready = atom_adder_0_io_in_7_ready;
  assign io_out_0_valid = atom_adder_0_io_out_valid;
  assign io_out_0_payload = atom_adder_0_io_out_payload;
  assign io_in_1_0_ready = atom_adder_1_1_io_in_0_ready;
  assign io_in_1_1_ready = atom_adder_1_1_io_in_1_ready;
  assign io_in_1_2_ready = atom_adder_1_1_io_in_2_ready;
  assign io_in_1_3_ready = atom_adder_1_1_io_in_3_ready;
  assign io_in_1_4_ready = atom_adder_1_1_io_in_4_ready;
  assign io_in_1_5_ready = atom_adder_1_1_io_in_5_ready;
  assign io_in_1_6_ready = atom_adder_1_1_io_in_6_ready;
  assign io_in_1_7_ready = atom_adder_1_1_io_in_7_ready;
  assign io_out_1_valid = atom_adder_1_1_io_out_valid;
  assign io_out_1_payload = atom_adder_1_1_io_out_payload;
  assign io_in_2_0_ready = atom_adder_2_1_io_in_0_ready;
  assign io_in_2_1_ready = atom_adder_2_1_io_in_1_ready;
  assign io_in_2_2_ready = atom_adder_2_1_io_in_2_ready;
  assign io_in_2_3_ready = atom_adder_2_1_io_in_3_ready;
  assign io_in_2_4_ready = atom_adder_2_1_io_in_4_ready;
  assign io_in_2_5_ready = atom_adder_2_1_io_in_5_ready;
  assign io_in_2_6_ready = atom_adder_2_1_io_in_6_ready;
  assign io_in_2_7_ready = atom_adder_2_1_io_in_7_ready;
  assign io_out_2_valid = atom_adder_2_1_io_out_valid;
  assign io_out_2_payload = atom_adder_2_1_io_out_payload;
  assign io_in_3_0_ready = atom_adder_3_1_io_in_0_ready;
  assign io_in_3_1_ready = atom_adder_3_1_io_in_1_ready;
  assign io_in_3_2_ready = atom_adder_3_1_io_in_2_ready;
  assign io_in_3_3_ready = atom_adder_3_1_io_in_3_ready;
  assign io_in_3_4_ready = atom_adder_3_1_io_in_4_ready;
  assign io_in_3_5_ready = atom_adder_3_1_io_in_5_ready;
  assign io_in_3_6_ready = atom_adder_3_1_io_in_6_ready;
  assign io_in_3_7_ready = atom_adder_3_1_io_in_7_ready;
  assign io_out_3_valid = atom_adder_3_1_io_out_valid;
  assign io_out_3_payload = atom_adder_3_1_io_out_payload;
  assign io_in_4_0_ready = atom_adder_4_1_io_in_0_ready;
  assign io_in_4_1_ready = atom_adder_4_1_io_in_1_ready;
  assign io_in_4_2_ready = atom_adder_4_1_io_in_2_ready;
  assign io_in_4_3_ready = atom_adder_4_1_io_in_3_ready;
  assign io_in_4_4_ready = atom_adder_4_1_io_in_4_ready;
  assign io_in_4_5_ready = atom_adder_4_1_io_in_5_ready;
  assign io_in_4_6_ready = atom_adder_4_1_io_in_6_ready;
  assign io_in_4_7_ready = atom_adder_4_1_io_in_7_ready;
  assign io_out_4_valid = atom_adder_4_1_io_out_valid;
  assign io_out_4_payload = atom_adder_4_1_io_out_payload;
  assign io_in_5_0_ready = atom_adder_5_1_io_in_0_ready;
  assign io_in_5_1_ready = atom_adder_5_1_io_in_1_ready;
  assign io_in_5_2_ready = atom_adder_5_1_io_in_2_ready;
  assign io_in_5_3_ready = atom_adder_5_1_io_in_3_ready;
  assign io_in_5_4_ready = atom_adder_5_1_io_in_4_ready;
  assign io_in_5_5_ready = atom_adder_5_1_io_in_5_ready;
  assign io_in_5_6_ready = atom_adder_5_1_io_in_6_ready;
  assign io_in_5_7_ready = atom_adder_5_1_io_in_7_ready;
  assign io_out_5_valid = atom_adder_5_1_io_out_valid;
  assign io_out_5_payload = atom_adder_5_1_io_out_payload;
  assign io_in_6_0_ready = atom_adder_6_1_io_in_0_ready;
  assign io_in_6_1_ready = atom_adder_6_1_io_in_1_ready;
  assign io_in_6_2_ready = atom_adder_6_1_io_in_2_ready;
  assign io_in_6_3_ready = atom_adder_6_1_io_in_3_ready;
  assign io_in_6_4_ready = atom_adder_6_1_io_in_4_ready;
  assign io_in_6_5_ready = atom_adder_6_1_io_in_5_ready;
  assign io_in_6_6_ready = atom_adder_6_1_io_in_6_ready;
  assign io_in_6_7_ready = atom_adder_6_1_io_in_7_ready;
  assign io_out_6_valid = atom_adder_6_1_io_out_valid;
  assign io_out_6_payload = atom_adder_6_1_io_out_payload;
  assign io_in_7_0_ready = atom_adder_7_1_io_in_0_ready;
  assign io_in_7_1_ready = atom_adder_7_1_io_in_1_ready;
  assign io_in_7_2_ready = atom_adder_7_1_io_in_2_ready;
  assign io_in_7_3_ready = atom_adder_7_1_io_in_3_ready;
  assign io_in_7_4_ready = atom_adder_7_1_io_in_4_ready;
  assign io_in_7_5_ready = atom_adder_7_1_io_in_5_ready;
  assign io_in_7_6_ready = atom_adder_7_1_io_in_6_ready;
  assign io_in_7_7_ready = atom_adder_7_1_io_in_7_ready;
  assign io_out_7_valid = atom_adder_7_1_io_out_valid;
  assign io_out_7_payload = atom_adder_7_1_io_out_payload;

endmodule

//atom_adder replaced by atom_adder

//atom_adder replaced by atom_adder

//atom_adder replaced by atom_adder

//atom_adder replaced by atom_adder

//atom_adder replaced by atom_adder

//atom_adder replaced by atom_adder

//atom_adder replaced by atom_adder

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

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

//fp_adder replaced by fp_adder

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
  wire                fp_adder_56_s_axis_a_tready;
  wire                fp_adder_56_s_axis_b_tready;
  wire                fp_adder_56_m_axis_result_tvalid;
  wire       [31:0]   fp_adder_56_m_axis_result_tdata;

  fp_adder_bb fp_adder_56 (
    .aclk                    (clk                               ), //i
    .s_axis_a_tvalid         (ina_valid                         ), //i
    .s_axis_a_tready         (fp_adder_56_s_axis_a_tready       ), //o
    .s_axis_a_tdata          (ina_payload                       ), //i
    .s_axis_b_tvalid         (inb_valid                         ), //i
    .s_axis_b_tready         (fp_adder_56_s_axis_b_tready       ), //o
    .s_axis_b_tdata          (inb_payload                       ), //i
    .m_axis_result_tvalid    (fp_adder_56_m_axis_result_tvalid  ), //o
    .m_axis_result_tready    (out_ready                         ), //i
    .m_axis_result_tdata     (fp_adder_56_m_axis_result_tdata   )  //o
  );
  assign ina_ready = fp_adder_56_s_axis_a_tready;
  assign inb_ready = fp_adder_56_s_axis_b_tready;
  assign out_valid = fp_adder_56_m_axis_result_tvalid;
  assign out_payload = fp_adder_56_m_axis_result_tdata;

endmodule

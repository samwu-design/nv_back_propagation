// Generator : SpinalHDL v1.5.0    git head : 83a031922866b078c411ec5529e00f1b6e79f8e7
// Component : mac_acc_atom
// Git hash  : 468260b61ffaaed727a3b82deccca770fc0579f1


module mac_acc_atom (
  input               io_ina_0_valid,
  output              io_ina_0_ready,
  input      [31:0]   io_ina_0_payload,
  input               io_ina_1_valid,
  output              io_ina_1_ready,
  input      [31:0]   io_ina_1_payload,
  input               io_ina_2_valid,
  output              io_ina_2_ready,
  input      [31:0]   io_ina_2_payload,
  input               io_ina_3_valid,
  output              io_ina_3_ready,
  input      [31:0]   io_ina_3_payload,
  input               io_ina_4_valid,
  output              io_ina_4_ready,
  input      [31:0]   io_ina_4_payload,
  input               io_ina_5_valid,
  output              io_ina_5_ready,
  input      [31:0]   io_ina_5_payload,
  input               io_ina_6_valid,
  output              io_ina_6_ready,
  input      [31:0]   io_ina_6_payload,
  input               io_ina_7_valid,
  output              io_ina_7_ready,
  input      [31:0]   io_ina_7_payload,
  input               io_inb_0_valid,
  output              io_inb_0_ready,
  input      [31:0]   io_inb_0_payload,
  input               io_inb_1_valid,
  output              io_inb_1_ready,
  input      [31:0]   io_inb_1_payload,
  input               io_inb_2_valid,
  output              io_inb_2_ready,
  input      [31:0]   io_inb_2_payload,
  input               io_inb_3_valid,
  output              io_inb_3_ready,
  input      [31:0]   io_inb_3_payload,
  input               io_inb_4_valid,
  output              io_inb_4_ready,
  input      [31:0]   io_inb_4_payload,
  input               io_inb_5_valid,
  output              io_inb_5_ready,
  input      [31:0]   io_inb_5_payload,
  input               io_inb_6_valid,
  output              io_inb_6_ready,
  input      [31:0]   io_inb_6_payload,
  input               io_inb_7_valid,
  output              io_inb_7_ready,
  input      [31:0]   io_inb_7_payload,
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
  input      [15:0]   io_par_acc_cnt,
  input               io_acc_enable,
  input               clk,
  input               reset
);
  wire                mac_0_io_ina_ready;
  wire                mac_0_io_inb_ready;
  wire                mac_0_io_out_valid;
  wire       [31:0]   mac_0_io_out_payload;
  wire                mac_1_io_ina_ready;
  wire                mac_1_io_inb_ready;
  wire                mac_1_io_out_valid;
  wire       [31:0]   mac_1_io_out_payload;
  wire                mac_2_io_ina_ready;
  wire                mac_2_io_inb_ready;
  wire                mac_2_io_out_valid;
  wire       [31:0]   mac_2_io_out_payload;
  wire                mac_3_io_ina_ready;
  wire                mac_3_io_inb_ready;
  wire                mac_3_io_out_valid;
  wire       [31:0]   mac_3_io_out_payload;
  wire                mac_4_io_ina_ready;
  wire                mac_4_io_inb_ready;
  wire                mac_4_io_out_valid;
  wire       [31:0]   mac_4_io_out_payload;
  wire                mac_5_io_ina_ready;
  wire                mac_5_io_inb_ready;
  wire                mac_5_io_out_valid;
  wire       [31:0]   mac_5_io_out_payload;
  wire                mac_6_io_ina_ready;
  wire                mac_6_io_inb_ready;
  wire                mac_6_io_out_valid;
  wire       [31:0]   mac_6_io_out_payload;
  wire                mac_7_io_ina_ready;
  wire                mac_7_io_inb_ready;
  wire                mac_7_io_out_valid;
  wire       [31:0]   mac_7_io_out_payload;

  mac_acc_unit mac_0 (
    .io_ina_valid      (io_ina_0_valid        ), //i
    .io_ina_ready      (mac_0_io_ina_ready    ), //o
    .io_ina_payload    (io_ina_0_payload      ), //i
    .io_inb_valid      (io_inb_0_valid        ), //i
    .io_inb_ready      (mac_0_io_inb_ready    ), //o
    .io_inb_payload    (io_inb_0_payload      ), //i
    .io_out_valid      (mac_0_io_out_valid    ), //o
    .io_out_ready      (io_out_0_ready        ), //i
    .io_out_payload    (mac_0_io_out_payload  ), //o
    .io_acc_enable     (io_acc_enable         ), //i
    .io_par_acc_cnt    (io_par_acc_cnt        ), //i
    .clk               (clk                   ), //i
    .reset             (reset                 )  //i
  );
  mac_acc_unit_1 mac_1 (
    .io_ina_valid      (io_ina_1_valid        ), //i
    .io_ina_ready      (mac_1_io_ina_ready    ), //o
    .io_ina_payload    (io_ina_1_payload      ), //i
    .io_inb_valid      (io_inb_1_valid        ), //i
    .io_inb_ready      (mac_1_io_inb_ready    ), //o
    .io_inb_payload    (io_inb_1_payload      ), //i
    .io_out_valid      (mac_1_io_out_valid    ), //o
    .io_out_ready      (io_out_1_ready        ), //i
    .io_out_payload    (mac_1_io_out_payload  ), //o
    .io_acc_enable     (io_acc_enable         ), //i
    .io_par_acc_cnt    (io_par_acc_cnt        ), //i
    .clk               (clk                   ), //i
    .reset             (reset                 )  //i
  );
  mac_acc_unit_2 mac_2 (
    .io_ina_valid      (io_ina_2_valid        ), //i
    .io_ina_ready      (mac_2_io_ina_ready    ), //o
    .io_ina_payload    (io_ina_2_payload      ), //i
    .io_inb_valid      (io_inb_2_valid        ), //i
    .io_inb_ready      (mac_2_io_inb_ready    ), //o
    .io_inb_payload    (io_inb_2_payload      ), //i
    .io_out_valid      (mac_2_io_out_valid    ), //o
    .io_out_ready      (io_out_2_ready        ), //i
    .io_out_payload    (mac_2_io_out_payload  ), //o
    .io_acc_enable     (io_acc_enable         ), //i
    .io_par_acc_cnt    (io_par_acc_cnt        ), //i
    .clk               (clk                   ), //i
    .reset             (reset                 )  //i
  );
  mac_acc_unit_3 mac_3 (
    .io_ina_valid      (io_ina_3_valid        ), //i
    .io_ina_ready      (mac_3_io_ina_ready    ), //o
    .io_ina_payload    (io_ina_3_payload      ), //i
    .io_inb_valid      (io_inb_3_valid        ), //i
    .io_inb_ready      (mac_3_io_inb_ready    ), //o
    .io_inb_payload    (io_inb_3_payload      ), //i
    .io_out_valid      (mac_3_io_out_valid    ), //o
    .io_out_ready      (io_out_3_ready        ), //i
    .io_out_payload    (mac_3_io_out_payload  ), //o
    .io_acc_enable     (io_acc_enable         ), //i
    .io_par_acc_cnt    (io_par_acc_cnt        ), //i
    .clk               (clk                   ), //i
    .reset             (reset                 )  //i
  );
  mac_acc_unit_4 mac_4 (
    .io_ina_valid      (io_ina_4_valid        ), //i
    .io_ina_ready      (mac_4_io_ina_ready    ), //o
    .io_ina_payload    (io_ina_4_payload      ), //i
    .io_inb_valid      (io_inb_4_valid        ), //i
    .io_inb_ready      (mac_4_io_inb_ready    ), //o
    .io_inb_payload    (io_inb_4_payload      ), //i
    .io_out_valid      (mac_4_io_out_valid    ), //o
    .io_out_ready      (io_out_4_ready        ), //i
    .io_out_payload    (mac_4_io_out_payload  ), //o
    .io_acc_enable     (io_acc_enable         ), //i
    .io_par_acc_cnt    (io_par_acc_cnt        ), //i
    .clk               (clk                   ), //i
    .reset             (reset                 )  //i
  );
  mac_acc_unit_5 mac_5 (
    .io_ina_valid      (io_ina_5_valid        ), //i
    .io_ina_ready      (mac_5_io_ina_ready    ), //o
    .io_ina_payload    (io_ina_5_payload      ), //i
    .io_inb_valid      (io_inb_5_valid        ), //i
    .io_inb_ready      (mac_5_io_inb_ready    ), //o
    .io_inb_payload    (io_inb_5_payload      ), //i
    .io_out_valid      (mac_5_io_out_valid    ), //o
    .io_out_ready      (io_out_5_ready        ), //i
    .io_out_payload    (mac_5_io_out_payload  ), //o
    .io_acc_enable     (io_acc_enable         ), //i
    .io_par_acc_cnt    (io_par_acc_cnt        ), //i
    .clk               (clk                   ), //i
    .reset             (reset                 )  //i
  );
  mac_acc_unit_6 mac_6 (
    .io_ina_valid      (io_ina_6_valid        ), //i
    .io_ina_ready      (mac_6_io_ina_ready    ), //o
    .io_ina_payload    (io_ina_6_payload      ), //i
    .io_inb_valid      (io_inb_6_valid        ), //i
    .io_inb_ready      (mac_6_io_inb_ready    ), //o
    .io_inb_payload    (io_inb_6_payload      ), //i
    .io_out_valid      (mac_6_io_out_valid    ), //o
    .io_out_ready      (io_out_6_ready        ), //i
    .io_out_payload    (mac_6_io_out_payload  ), //o
    .io_acc_enable     (io_acc_enable         ), //i
    .io_par_acc_cnt    (io_par_acc_cnt        ), //i
    .clk               (clk                   ), //i
    .reset             (reset                 )  //i
  );
  mac_acc_unit_7 mac_7 (
    .io_ina_valid      (io_ina_7_valid        ), //i
    .io_ina_ready      (mac_7_io_ina_ready    ), //o
    .io_ina_payload    (io_ina_7_payload      ), //i
    .io_inb_valid      (io_inb_7_valid        ), //i
    .io_inb_ready      (mac_7_io_inb_ready    ), //o
    .io_inb_payload    (io_inb_7_payload      ), //i
    .io_out_valid      (mac_7_io_out_valid    ), //o
    .io_out_ready      (io_out_7_ready        ), //i
    .io_out_payload    (mac_7_io_out_payload  ), //o
    .io_acc_enable     (io_acc_enable         ), //i
    .io_par_acc_cnt    (io_par_acc_cnt        ), //i
    .clk               (clk                   ), //i
    .reset             (reset                 )  //i
  );
  assign io_ina_0_ready = mac_0_io_ina_ready;
  assign io_inb_0_ready = mac_0_io_inb_ready;
  assign io_out_0_valid = mac_0_io_out_valid;
  assign io_out_0_payload = mac_0_io_out_payload;
  assign io_ina_1_ready = mac_1_io_ina_ready;
  assign io_inb_1_ready = mac_1_io_inb_ready;
  assign io_out_1_valid = mac_1_io_out_valid;
  assign io_out_1_payload = mac_1_io_out_payload;
  assign io_ina_2_ready = mac_2_io_ina_ready;
  assign io_inb_2_ready = mac_2_io_inb_ready;
  assign io_out_2_valid = mac_2_io_out_valid;
  assign io_out_2_payload = mac_2_io_out_payload;
  assign io_ina_3_ready = mac_3_io_ina_ready;
  assign io_inb_3_ready = mac_3_io_inb_ready;
  assign io_out_3_valid = mac_3_io_out_valid;
  assign io_out_3_payload = mac_3_io_out_payload;
  assign io_ina_4_ready = mac_4_io_ina_ready;
  assign io_inb_4_ready = mac_4_io_inb_ready;
  assign io_out_4_valid = mac_4_io_out_valid;
  assign io_out_4_payload = mac_4_io_out_payload;
  assign io_ina_5_ready = mac_5_io_ina_ready;
  assign io_inb_5_ready = mac_5_io_inb_ready;
  assign io_out_5_valid = mac_5_io_out_valid;
  assign io_out_5_payload = mac_5_io_out_payload;
  assign io_ina_6_ready = mac_6_io_ina_ready;
  assign io_inb_6_ready = mac_6_io_inb_ready;
  assign io_out_6_valid = mac_6_io_out_valid;
  assign io_out_6_payload = mac_6_io_out_payload;
  assign io_ina_7_ready = mac_7_io_ina_ready;
  assign io_inb_7_ready = mac_7_io_inb_ready;
  assign io_out_7_valid = mac_7_io_out_valid;
  assign io_out_7_payload = mac_7_io_out_payload;

endmodule

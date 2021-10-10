// Generator : SpinalHDL v1.5.0    git head : 83a031922866b078c411ec5529e00f1b6e79f8e7
// Component : mac_acc_unit_53
// Git hash  : 468260b61ffaaed727a3b82deccca770fc0579f1


module mac_acc_unit_53 (
  input               io_ina_valid,
  output              io_ina_ready,
  input      [31:0]   io_ina_payload,
  input               io_inb_valid,
  output              io_inb_ready,
  input      [31:0]   io_inb_payload,
  output              io_out_valid,
  input               io_out_ready,
  output     [31:0]   io_out_payload,
  input               io_acc_enable,
  input      [15:0]   io_par_acc_cnt,
  input               clk,
  input               reset
);
  wire                multi_ina_ready;
  wire                multi_inb_ready;
  wire                multi_out_valid;
  wire       [31:0]   multi_out_payload;
  wire                acc_ina_ready;
  wire                acc_out_valid;
  wire       [31:0]   acc_out_payload;

  fp_multiply multi (
    .ina_valid      (io_ina_valid       ), //i
    .ina_ready      (multi_ina_ready    ), //o
    .ina_payload    (io_ina_payload     ), //i
    .inb_valid      (io_inb_valid       ), //i
    .inb_ready      (multi_inb_ready    ), //o
    .inb_payload    (io_inb_payload     ), //i
    .out_valid      (multi_out_valid    ), //o
    .out_ready      (acc_ina_ready      ), //i
    .out_payload    (multi_out_payload  ), //o
    .clk            (clk                )  //i
  );
  fp_acc_53 acc (
    .ina_valid      (multi_out_valid    ), //i
    .ina_ready      (acc_ina_ready      ), //o
    .ina_payload    (multi_out_payload  ), //i
    .out_valid      (acc_out_valid      ), //o
    .out_ready      (io_out_ready       ), //i
    .out_payload    (acc_out_payload    ), //o
    .par_acc_cnt    (io_par_acc_cnt     ), //i
    .acc_enable     (io_acc_enable      ), //i
    .clk            (clk                ), //i
    .reset          (reset              )  //i
  );
  assign io_ina_ready = multi_ina_ready;
  assign io_inb_ready = multi_inb_ready;
  assign io_out_valid = acc_out_valid;
  assign io_out_payload = acc_out_payload;

endmodule

// Generator : SpinalHDL v1.5.0    git head : 83a031922866b078c411ec5529e00f1b6e79f8e7
// Component : dataType_cvt_in
// Git hash  : b6ddb790d4fa4d692ba34f1fe5ea48377d442245



module dataType_cvt_in (
  input               io_i_ft_valid,
  output              io_i_ft_ready,
  input      [255:0]  io_i_ft_payload,
  input               io_i_wt_0_valid,
  output              io_i_wt_0_ready,
  input      [255:0]  io_i_wt_0_payload,
  input               io_i_wt_1_valid,
  output              io_i_wt_1_ready,
  input      [255:0]  io_i_wt_1_payload,
  input               io_i_wt_2_valid,
  output              io_i_wt_2_ready,
  input      [255:0]  io_i_wt_2_payload,
  input               io_i_wt_3_valid,
  output              io_i_wt_3_ready,
  input      [255:0]  io_i_wt_3_payload,
  input               io_i_wt_4_valid,
  output              io_i_wt_4_ready,
  input      [255:0]  io_i_wt_4_payload,
  input               io_i_wt_5_valid,
  output              io_i_wt_5_ready,
  input      [255:0]  io_i_wt_5_payload,
  input               io_i_wt_6_valid,
  output              io_i_wt_6_ready,
  input      [255:0]  io_i_wt_6_payload,
  input               io_i_wt_7_valid,
  output              io_i_wt_7_ready,
  input      [255:0]  io_i_wt_7_payload,
  output              io_o_ft_0_valid,
  input               io_o_ft_0_ready,
  output     [31:0]   io_o_ft_0_payload,
  output              io_o_ft_1_valid,
  input               io_o_ft_1_ready,
  output     [31:0]   io_o_ft_1_payload,
  output              io_o_ft_2_valid,
  input               io_o_ft_2_ready,
  output     [31:0]   io_o_ft_2_payload,
  output              io_o_ft_3_valid,
  input               io_o_ft_3_ready,
  output     [31:0]   io_o_ft_3_payload,
  output              io_o_ft_4_valid,
  input               io_o_ft_4_ready,
  output     [31:0]   io_o_ft_4_payload,
  output              io_o_ft_5_valid,
  input               io_o_ft_5_ready,
  output     [31:0]   io_o_ft_5_payload,
  output              io_o_ft_6_valid,
  input               io_o_ft_6_ready,
  output     [31:0]   io_o_ft_6_payload,
  output              io_o_ft_7_valid,
  input               io_o_ft_7_ready,
  output     [31:0]   io_o_ft_7_payload,
  output              io_o_wt_0_0_valid,
  input               io_o_wt_0_0_ready,
  output     [31:0]   io_o_wt_0_0_payload,
  output              io_o_wt_0_1_valid,
  input               io_o_wt_0_1_ready,
  output     [31:0]   io_o_wt_0_1_payload,
  output              io_o_wt_0_2_valid,
  input               io_o_wt_0_2_ready,
  output     [31:0]   io_o_wt_0_2_payload,
  output              io_o_wt_0_3_valid,
  input               io_o_wt_0_3_ready,
  output     [31:0]   io_o_wt_0_3_payload,
  output              io_o_wt_0_4_valid,
  input               io_o_wt_0_4_ready,
  output     [31:0]   io_o_wt_0_4_payload,
  output              io_o_wt_0_5_valid,
  input               io_o_wt_0_5_ready,
  output     [31:0]   io_o_wt_0_5_payload,
  output              io_o_wt_0_6_valid,
  input               io_o_wt_0_6_ready,
  output     [31:0]   io_o_wt_0_6_payload,
  output              io_o_wt_0_7_valid,
  input               io_o_wt_0_7_ready,
  output     [31:0]   io_o_wt_0_7_payload,
  output              io_o_wt_1_0_valid,
  input               io_o_wt_1_0_ready,
  output     [31:0]   io_o_wt_1_0_payload,
  output              io_o_wt_1_1_valid,
  input               io_o_wt_1_1_ready,
  output     [31:0]   io_o_wt_1_1_payload,
  output              io_o_wt_1_2_valid,
  input               io_o_wt_1_2_ready,
  output     [31:0]   io_o_wt_1_2_payload,
  output              io_o_wt_1_3_valid,
  input               io_o_wt_1_3_ready,
  output     [31:0]   io_o_wt_1_3_payload,
  output              io_o_wt_1_4_valid,
  input               io_o_wt_1_4_ready,
  output     [31:0]   io_o_wt_1_4_payload,
  output              io_o_wt_1_5_valid,
  input               io_o_wt_1_5_ready,
  output     [31:0]   io_o_wt_1_5_payload,
  output              io_o_wt_1_6_valid,
  input               io_o_wt_1_6_ready,
  output     [31:0]   io_o_wt_1_6_payload,
  output              io_o_wt_1_7_valid,
  input               io_o_wt_1_7_ready,
  output     [31:0]   io_o_wt_1_7_payload,
  output              io_o_wt_2_0_valid,
  input               io_o_wt_2_0_ready,
  output     [31:0]   io_o_wt_2_0_payload,
  output              io_o_wt_2_1_valid,
  input               io_o_wt_2_1_ready,
  output     [31:0]   io_o_wt_2_1_payload,
  output              io_o_wt_2_2_valid,
  input               io_o_wt_2_2_ready,
  output     [31:0]   io_o_wt_2_2_payload,
  output              io_o_wt_2_3_valid,
  input               io_o_wt_2_3_ready,
  output     [31:0]   io_o_wt_2_3_payload,
  output              io_o_wt_2_4_valid,
  input               io_o_wt_2_4_ready,
  output     [31:0]   io_o_wt_2_4_payload,
  output              io_o_wt_2_5_valid,
  input               io_o_wt_2_5_ready,
  output     [31:0]   io_o_wt_2_5_payload,
  output              io_o_wt_2_6_valid,
  input               io_o_wt_2_6_ready,
  output     [31:0]   io_o_wt_2_6_payload,
  output              io_o_wt_2_7_valid,
  input               io_o_wt_2_7_ready,
  output     [31:0]   io_o_wt_2_7_payload,
  output              io_o_wt_3_0_valid,
  input               io_o_wt_3_0_ready,
  output     [31:0]   io_o_wt_3_0_payload,
  output              io_o_wt_3_1_valid,
  input               io_o_wt_3_1_ready,
  output     [31:0]   io_o_wt_3_1_payload,
  output              io_o_wt_3_2_valid,
  input               io_o_wt_3_2_ready,
  output     [31:0]   io_o_wt_3_2_payload,
  output              io_o_wt_3_3_valid,
  input               io_o_wt_3_3_ready,
  output     [31:0]   io_o_wt_3_3_payload,
  output              io_o_wt_3_4_valid,
  input               io_o_wt_3_4_ready,
  output     [31:0]   io_o_wt_3_4_payload,
  output              io_o_wt_3_5_valid,
  input               io_o_wt_3_5_ready,
  output     [31:0]   io_o_wt_3_5_payload,
  output              io_o_wt_3_6_valid,
  input               io_o_wt_3_6_ready,
  output     [31:0]   io_o_wt_3_6_payload,
  output              io_o_wt_3_7_valid,
  input               io_o_wt_3_7_ready,
  output     [31:0]   io_o_wt_3_7_payload,
  output              io_o_wt_4_0_valid,
  input               io_o_wt_4_0_ready,
  output     [31:0]   io_o_wt_4_0_payload,
  output              io_o_wt_4_1_valid,
  input               io_o_wt_4_1_ready,
  output     [31:0]   io_o_wt_4_1_payload,
  output              io_o_wt_4_2_valid,
  input               io_o_wt_4_2_ready,
  output     [31:0]   io_o_wt_4_2_payload,
  output              io_o_wt_4_3_valid,
  input               io_o_wt_4_3_ready,
  output     [31:0]   io_o_wt_4_3_payload,
  output              io_o_wt_4_4_valid,
  input               io_o_wt_4_4_ready,
  output     [31:0]   io_o_wt_4_4_payload,
  output              io_o_wt_4_5_valid,
  input               io_o_wt_4_5_ready,
  output     [31:0]   io_o_wt_4_5_payload,
  output              io_o_wt_4_6_valid,
  input               io_o_wt_4_6_ready,
  output     [31:0]   io_o_wt_4_6_payload,
  output              io_o_wt_4_7_valid,
  input               io_o_wt_4_7_ready,
  output     [31:0]   io_o_wt_4_7_payload,
  output              io_o_wt_5_0_valid,
  input               io_o_wt_5_0_ready,
  output     [31:0]   io_o_wt_5_0_payload,
  output              io_o_wt_5_1_valid,
  input               io_o_wt_5_1_ready,
  output     [31:0]   io_o_wt_5_1_payload,
  output              io_o_wt_5_2_valid,
  input               io_o_wt_5_2_ready,
  output     [31:0]   io_o_wt_5_2_payload,
  output              io_o_wt_5_3_valid,
  input               io_o_wt_5_3_ready,
  output     [31:0]   io_o_wt_5_3_payload,
  output              io_o_wt_5_4_valid,
  input               io_o_wt_5_4_ready,
  output     [31:0]   io_o_wt_5_4_payload,
  output              io_o_wt_5_5_valid,
  input               io_o_wt_5_5_ready,
  output     [31:0]   io_o_wt_5_5_payload,
  output              io_o_wt_5_6_valid,
  input               io_o_wt_5_6_ready,
  output     [31:0]   io_o_wt_5_6_payload,
  output              io_o_wt_5_7_valid,
  input               io_o_wt_5_7_ready,
  output     [31:0]   io_o_wt_5_7_payload,
  output              io_o_wt_6_0_valid,
  input               io_o_wt_6_0_ready,
  output     [31:0]   io_o_wt_6_0_payload,
  output              io_o_wt_6_1_valid,
  input               io_o_wt_6_1_ready,
  output     [31:0]   io_o_wt_6_1_payload,
  output              io_o_wt_6_2_valid,
  input               io_o_wt_6_2_ready,
  output     [31:0]   io_o_wt_6_2_payload,
  output              io_o_wt_6_3_valid,
  input               io_o_wt_6_3_ready,
  output     [31:0]   io_o_wt_6_3_payload,
  output              io_o_wt_6_4_valid,
  input               io_o_wt_6_4_ready,
  output     [31:0]   io_o_wt_6_4_payload,
  output              io_o_wt_6_5_valid,
  input               io_o_wt_6_5_ready,
  output     [31:0]   io_o_wt_6_5_payload,
  output              io_o_wt_6_6_valid,
  input               io_o_wt_6_6_ready,
  output     [31:0]   io_o_wt_6_6_payload,
  output              io_o_wt_6_7_valid,
  input               io_o_wt_6_7_ready,
  output     [31:0]   io_o_wt_6_7_payload,
  output              io_o_wt_7_0_valid,
  input               io_o_wt_7_0_ready,
  output     [31:0]   io_o_wt_7_0_payload,
  output              io_o_wt_7_1_valid,
  input               io_o_wt_7_1_ready,
  output     [31:0]   io_o_wt_7_1_payload,
  output              io_o_wt_7_2_valid,
  input               io_o_wt_7_2_ready,
  output     [31:0]   io_o_wt_7_2_payload,
  output              io_o_wt_7_3_valid,
  input               io_o_wt_7_3_ready,
  output     [31:0]   io_o_wt_7_3_payload,
  output              io_o_wt_7_4_valid,
  input               io_o_wt_7_4_ready,
  output     [31:0]   io_o_wt_7_4_payload,
  output              io_o_wt_7_5_valid,
  input               io_o_wt_7_5_ready,
  output     [31:0]   io_o_wt_7_5_payload,
  output              io_o_wt_7_6_valid,
  input               io_o_wt_7_6_ready,
  output     [31:0]   io_o_wt_7_6_payload,
  output              io_o_wt_7_7_valid,
  input               io_o_wt_7_7_ready,
  output     [31:0]   io_o_wt_7_7_payload
);
  wire                temp_ft_0_valid;
  wire                temp_ft_0_ready;
  wire       [31:0]   temp_ft_0_payload;
  wire                temp_ft_1_valid;
  wire                temp_ft_1_ready;
  wire       [31:0]   temp_ft_1_payload;
  wire                temp_ft_2_valid;
  wire                temp_ft_2_ready;
  wire       [31:0]   temp_ft_2_payload;
  wire                temp_ft_3_valid;
  wire                temp_ft_3_ready;
  wire       [31:0]   temp_ft_3_payload;
  wire                temp_ft_4_valid;
  wire                temp_ft_4_ready;
  wire       [31:0]   temp_ft_4_payload;
  wire                temp_ft_5_valid;
  wire                temp_ft_5_ready;
  wire       [31:0]   temp_ft_5_payload;
  wire                temp_ft_6_valid;
  wire                temp_ft_6_ready;
  wire       [31:0]   temp_ft_6_payload;
  wire                temp_ft_7_valid;
  wire                temp_ft_7_ready;
  wire       [31:0]   temp_ft_7_payload;
  wire                temp_wt_0_0_valid;
  wire                temp_wt_0_0_ready;
  wire       [31:0]   temp_wt_0_0_payload;
  wire                temp_wt_0_1_valid;
  wire                temp_wt_0_1_ready;
  wire       [31:0]   temp_wt_0_1_payload;
  wire                temp_wt_0_2_valid;
  wire                temp_wt_0_2_ready;
  wire       [31:0]   temp_wt_0_2_payload;
  wire                temp_wt_0_3_valid;
  wire                temp_wt_0_3_ready;
  wire       [31:0]   temp_wt_0_3_payload;
  wire                temp_wt_0_4_valid;
  wire                temp_wt_0_4_ready;
  wire       [31:0]   temp_wt_0_4_payload;
  wire                temp_wt_0_5_valid;
  wire                temp_wt_0_5_ready;
  wire       [31:0]   temp_wt_0_5_payload;
  wire                temp_wt_0_6_valid;
  wire                temp_wt_0_6_ready;
  wire       [31:0]   temp_wt_0_6_payload;
  wire                temp_wt_0_7_valid;
  wire                temp_wt_0_7_ready;
  wire       [31:0]   temp_wt_0_7_payload;
  wire                temp_wt_1_0_valid;
  wire                temp_wt_1_0_ready;
  wire       [31:0]   temp_wt_1_0_payload;
  wire                temp_wt_1_1_valid;
  wire                temp_wt_1_1_ready;
  wire       [31:0]   temp_wt_1_1_payload;
  wire                temp_wt_1_2_valid;
  wire                temp_wt_1_2_ready;
  wire       [31:0]   temp_wt_1_2_payload;
  wire                temp_wt_1_3_valid;
  wire                temp_wt_1_3_ready;
  wire       [31:0]   temp_wt_1_3_payload;
  wire                temp_wt_1_4_valid;
  wire                temp_wt_1_4_ready;
  wire       [31:0]   temp_wt_1_4_payload;
  wire                temp_wt_1_5_valid;
  wire                temp_wt_1_5_ready;
  wire       [31:0]   temp_wt_1_5_payload;
  wire                temp_wt_1_6_valid;
  wire                temp_wt_1_6_ready;
  wire       [31:0]   temp_wt_1_6_payload;
  wire                temp_wt_1_7_valid;
  wire                temp_wt_1_7_ready;
  wire       [31:0]   temp_wt_1_7_payload;
  wire                temp_wt_2_0_valid;
  wire                temp_wt_2_0_ready;
  wire       [31:0]   temp_wt_2_0_payload;
  wire                temp_wt_2_1_valid;
  wire                temp_wt_2_1_ready;
  wire       [31:0]   temp_wt_2_1_payload;
  wire                temp_wt_2_2_valid;
  wire                temp_wt_2_2_ready;
  wire       [31:0]   temp_wt_2_2_payload;
  wire                temp_wt_2_3_valid;
  wire                temp_wt_2_3_ready;
  wire       [31:0]   temp_wt_2_3_payload;
  wire                temp_wt_2_4_valid;
  wire                temp_wt_2_4_ready;
  wire       [31:0]   temp_wt_2_4_payload;
  wire                temp_wt_2_5_valid;
  wire                temp_wt_2_5_ready;
  wire       [31:0]   temp_wt_2_5_payload;
  wire                temp_wt_2_6_valid;
  wire                temp_wt_2_6_ready;
  wire       [31:0]   temp_wt_2_6_payload;
  wire                temp_wt_2_7_valid;
  wire                temp_wt_2_7_ready;
  wire       [31:0]   temp_wt_2_7_payload;
  wire                temp_wt_3_0_valid;
  wire                temp_wt_3_0_ready;
  wire       [31:0]   temp_wt_3_0_payload;
  wire                temp_wt_3_1_valid;
  wire                temp_wt_3_1_ready;
  wire       [31:0]   temp_wt_3_1_payload;
  wire                temp_wt_3_2_valid;
  wire                temp_wt_3_2_ready;
  wire       [31:0]   temp_wt_3_2_payload;
  wire                temp_wt_3_3_valid;
  wire                temp_wt_3_3_ready;
  wire       [31:0]   temp_wt_3_3_payload;
  wire                temp_wt_3_4_valid;
  wire                temp_wt_3_4_ready;
  wire       [31:0]   temp_wt_3_4_payload;
  wire                temp_wt_3_5_valid;
  wire                temp_wt_3_5_ready;
  wire       [31:0]   temp_wt_3_5_payload;
  wire                temp_wt_3_6_valid;
  wire                temp_wt_3_6_ready;
  wire       [31:0]   temp_wt_3_6_payload;
  wire                temp_wt_3_7_valid;
  wire                temp_wt_3_7_ready;
  wire       [31:0]   temp_wt_3_7_payload;
  wire                temp_wt_4_0_valid;
  wire                temp_wt_4_0_ready;
  wire       [31:0]   temp_wt_4_0_payload;
  wire                temp_wt_4_1_valid;
  wire                temp_wt_4_1_ready;
  wire       [31:0]   temp_wt_4_1_payload;
  wire                temp_wt_4_2_valid;
  wire                temp_wt_4_2_ready;
  wire       [31:0]   temp_wt_4_2_payload;
  wire                temp_wt_4_3_valid;
  wire                temp_wt_4_3_ready;
  wire       [31:0]   temp_wt_4_3_payload;
  wire                temp_wt_4_4_valid;
  wire                temp_wt_4_4_ready;
  wire       [31:0]   temp_wt_4_4_payload;
  wire                temp_wt_4_5_valid;
  wire                temp_wt_4_5_ready;
  wire       [31:0]   temp_wt_4_5_payload;
  wire                temp_wt_4_6_valid;
  wire                temp_wt_4_6_ready;
  wire       [31:0]   temp_wt_4_6_payload;
  wire                temp_wt_4_7_valid;
  wire                temp_wt_4_7_ready;
  wire       [31:0]   temp_wt_4_7_payload;
  wire                temp_wt_5_0_valid;
  wire                temp_wt_5_0_ready;
  wire       [31:0]   temp_wt_5_0_payload;
  wire                temp_wt_5_1_valid;
  wire                temp_wt_5_1_ready;
  wire       [31:0]   temp_wt_5_1_payload;
  wire                temp_wt_5_2_valid;
  wire                temp_wt_5_2_ready;
  wire       [31:0]   temp_wt_5_2_payload;
  wire                temp_wt_5_3_valid;
  wire                temp_wt_5_3_ready;
  wire       [31:0]   temp_wt_5_3_payload;
  wire                temp_wt_5_4_valid;
  wire                temp_wt_5_4_ready;
  wire       [31:0]   temp_wt_5_4_payload;
  wire                temp_wt_5_5_valid;
  wire                temp_wt_5_5_ready;
  wire       [31:0]   temp_wt_5_5_payload;
  wire                temp_wt_5_6_valid;
  wire                temp_wt_5_6_ready;
  wire       [31:0]   temp_wt_5_6_payload;
  wire                temp_wt_5_7_valid;
  wire                temp_wt_5_7_ready;
  wire       [31:0]   temp_wt_5_7_payload;
  wire                temp_wt_6_0_valid;
  wire                temp_wt_6_0_ready;
  wire       [31:0]   temp_wt_6_0_payload;
  wire                temp_wt_6_1_valid;
  wire                temp_wt_6_1_ready;
  wire       [31:0]   temp_wt_6_1_payload;
  wire                temp_wt_6_2_valid;
  wire                temp_wt_6_2_ready;
  wire       [31:0]   temp_wt_6_2_payload;
  wire                temp_wt_6_3_valid;
  wire                temp_wt_6_3_ready;
  wire       [31:0]   temp_wt_6_3_payload;
  wire                temp_wt_6_4_valid;
  wire                temp_wt_6_4_ready;
  wire       [31:0]   temp_wt_6_4_payload;
  wire                temp_wt_6_5_valid;
  wire                temp_wt_6_5_ready;
  wire       [31:0]   temp_wt_6_5_payload;
  wire                temp_wt_6_6_valid;
  wire                temp_wt_6_6_ready;
  wire       [31:0]   temp_wt_6_6_payload;
  wire                temp_wt_6_7_valid;
  wire                temp_wt_6_7_ready;
  wire       [31:0]   temp_wt_6_7_payload;
  wire                temp_wt_7_0_valid;
  wire                temp_wt_7_0_ready;
  wire       [31:0]   temp_wt_7_0_payload;
  wire                temp_wt_7_1_valid;
  wire                temp_wt_7_1_ready;
  wire       [31:0]   temp_wt_7_1_payload;
  wire                temp_wt_7_2_valid;
  wire                temp_wt_7_2_ready;
  wire       [31:0]   temp_wt_7_2_payload;
  wire                temp_wt_7_3_valid;
  wire                temp_wt_7_3_ready;
  wire       [31:0]   temp_wt_7_3_payload;
  wire                temp_wt_7_4_valid;
  wire                temp_wt_7_4_ready;
  wire       [31:0]   temp_wt_7_4_payload;
  wire                temp_wt_7_5_valid;
  wire                temp_wt_7_5_ready;
  wire       [31:0]   temp_wt_7_5_payload;
  wire                temp_wt_7_6_valid;
  wire                temp_wt_7_6_ready;
  wire       [31:0]   temp_wt_7_6_payload;
  wire                temp_wt_7_7_valid;
  wire                temp_wt_7_7_ready;
  wire       [31:0]   temp_wt_7_7_payload;

  assign io_o_ft_0_valid = temp_ft_0_valid;
  assign temp_ft_0_ready = io_o_ft_0_ready;
  assign io_o_ft_0_payload = temp_ft_0_payload;
  assign io_o_ft_1_valid = temp_ft_1_valid;
  assign temp_ft_1_ready = io_o_ft_1_ready;
  assign io_o_ft_1_payload = temp_ft_1_payload;
  assign io_o_ft_2_valid = temp_ft_2_valid;
  assign temp_ft_2_ready = io_o_ft_2_ready;
  assign io_o_ft_2_payload = temp_ft_2_payload;
  assign io_o_ft_3_valid = temp_ft_3_valid;
  assign temp_ft_3_ready = io_o_ft_3_ready;
  assign io_o_ft_3_payload = temp_ft_3_payload;
  assign io_o_ft_4_valid = temp_ft_4_valid;
  assign temp_ft_4_ready = io_o_ft_4_ready;
  assign io_o_ft_4_payload = temp_ft_4_payload;
  assign io_o_ft_5_valid = temp_ft_5_valid;
  assign temp_ft_5_ready = io_o_ft_5_ready;
  assign io_o_ft_5_payload = temp_ft_5_payload;
  assign io_o_ft_6_valid = temp_ft_6_valid;
  assign temp_ft_6_ready = io_o_ft_6_ready;
  assign io_o_ft_6_payload = temp_ft_6_payload;
  assign io_o_ft_7_valid = temp_ft_7_valid;
  assign temp_ft_7_ready = io_o_ft_7_ready;
  assign io_o_ft_7_payload = temp_ft_7_payload;
  assign io_o_wt_0_0_valid = temp_wt_0_0_valid;
  assign temp_wt_0_0_ready = io_o_wt_0_0_ready;
  assign io_o_wt_0_0_payload = temp_wt_0_0_payload;
  assign io_o_wt_0_1_valid = temp_wt_0_1_valid;
  assign temp_wt_0_1_ready = io_o_wt_0_1_ready;
  assign io_o_wt_0_1_payload = temp_wt_0_1_payload;
  assign io_o_wt_0_2_valid = temp_wt_0_2_valid;
  assign temp_wt_0_2_ready = io_o_wt_0_2_ready;
  assign io_o_wt_0_2_payload = temp_wt_0_2_payload;
  assign io_o_wt_0_3_valid = temp_wt_0_3_valid;
  assign temp_wt_0_3_ready = io_o_wt_0_3_ready;
  assign io_o_wt_0_3_payload = temp_wt_0_3_payload;
  assign io_o_wt_0_4_valid = temp_wt_0_4_valid;
  assign temp_wt_0_4_ready = io_o_wt_0_4_ready;
  assign io_o_wt_0_4_payload = temp_wt_0_4_payload;
  assign io_o_wt_0_5_valid = temp_wt_0_5_valid;
  assign temp_wt_0_5_ready = io_o_wt_0_5_ready;
  assign io_o_wt_0_5_payload = temp_wt_0_5_payload;
  assign io_o_wt_0_6_valid = temp_wt_0_6_valid;
  assign temp_wt_0_6_ready = io_o_wt_0_6_ready;
  assign io_o_wt_0_6_payload = temp_wt_0_6_payload;
  assign io_o_wt_0_7_valid = temp_wt_0_7_valid;
  assign temp_wt_0_7_ready = io_o_wt_0_7_ready;
  assign io_o_wt_0_7_payload = temp_wt_0_7_payload;
  assign io_o_wt_1_0_valid = temp_wt_1_0_valid;
  assign temp_wt_1_0_ready = io_o_wt_1_0_ready;
  assign io_o_wt_1_0_payload = temp_wt_1_0_payload;
  assign io_o_wt_1_1_valid = temp_wt_1_1_valid;
  assign temp_wt_1_1_ready = io_o_wt_1_1_ready;
  assign io_o_wt_1_1_payload = temp_wt_1_1_payload;
  assign io_o_wt_1_2_valid = temp_wt_1_2_valid;
  assign temp_wt_1_2_ready = io_o_wt_1_2_ready;
  assign io_o_wt_1_2_payload = temp_wt_1_2_payload;
  assign io_o_wt_1_3_valid = temp_wt_1_3_valid;
  assign temp_wt_1_3_ready = io_o_wt_1_3_ready;
  assign io_o_wt_1_3_payload = temp_wt_1_3_payload;
  assign io_o_wt_1_4_valid = temp_wt_1_4_valid;
  assign temp_wt_1_4_ready = io_o_wt_1_4_ready;
  assign io_o_wt_1_4_payload = temp_wt_1_4_payload;
  assign io_o_wt_1_5_valid = temp_wt_1_5_valid;
  assign temp_wt_1_5_ready = io_o_wt_1_5_ready;
  assign io_o_wt_1_5_payload = temp_wt_1_5_payload;
  assign io_o_wt_1_6_valid = temp_wt_1_6_valid;
  assign temp_wt_1_6_ready = io_o_wt_1_6_ready;
  assign io_o_wt_1_6_payload = temp_wt_1_6_payload;
  assign io_o_wt_1_7_valid = temp_wt_1_7_valid;
  assign temp_wt_1_7_ready = io_o_wt_1_7_ready;
  assign io_o_wt_1_7_payload = temp_wt_1_7_payload;
  assign io_o_wt_2_0_valid = temp_wt_2_0_valid;
  assign temp_wt_2_0_ready = io_o_wt_2_0_ready;
  assign io_o_wt_2_0_payload = temp_wt_2_0_payload;
  assign io_o_wt_2_1_valid = temp_wt_2_1_valid;
  assign temp_wt_2_1_ready = io_o_wt_2_1_ready;
  assign io_o_wt_2_1_payload = temp_wt_2_1_payload;
  assign io_o_wt_2_2_valid = temp_wt_2_2_valid;
  assign temp_wt_2_2_ready = io_o_wt_2_2_ready;
  assign io_o_wt_2_2_payload = temp_wt_2_2_payload;
  assign io_o_wt_2_3_valid = temp_wt_2_3_valid;
  assign temp_wt_2_3_ready = io_o_wt_2_3_ready;
  assign io_o_wt_2_3_payload = temp_wt_2_3_payload;
  assign io_o_wt_2_4_valid = temp_wt_2_4_valid;
  assign temp_wt_2_4_ready = io_o_wt_2_4_ready;
  assign io_o_wt_2_4_payload = temp_wt_2_4_payload;
  assign io_o_wt_2_5_valid = temp_wt_2_5_valid;
  assign temp_wt_2_5_ready = io_o_wt_2_5_ready;
  assign io_o_wt_2_5_payload = temp_wt_2_5_payload;
  assign io_o_wt_2_6_valid = temp_wt_2_6_valid;
  assign temp_wt_2_6_ready = io_o_wt_2_6_ready;
  assign io_o_wt_2_6_payload = temp_wt_2_6_payload;
  assign io_o_wt_2_7_valid = temp_wt_2_7_valid;
  assign temp_wt_2_7_ready = io_o_wt_2_7_ready;
  assign io_o_wt_2_7_payload = temp_wt_2_7_payload;
  assign io_o_wt_3_0_valid = temp_wt_3_0_valid;
  assign temp_wt_3_0_ready = io_o_wt_3_0_ready;
  assign io_o_wt_3_0_payload = temp_wt_3_0_payload;
  assign io_o_wt_3_1_valid = temp_wt_3_1_valid;
  assign temp_wt_3_1_ready = io_o_wt_3_1_ready;
  assign io_o_wt_3_1_payload = temp_wt_3_1_payload;
  assign io_o_wt_3_2_valid = temp_wt_3_2_valid;
  assign temp_wt_3_2_ready = io_o_wt_3_2_ready;
  assign io_o_wt_3_2_payload = temp_wt_3_2_payload;
  assign io_o_wt_3_3_valid = temp_wt_3_3_valid;
  assign temp_wt_3_3_ready = io_o_wt_3_3_ready;
  assign io_o_wt_3_3_payload = temp_wt_3_3_payload;
  assign io_o_wt_3_4_valid = temp_wt_3_4_valid;
  assign temp_wt_3_4_ready = io_o_wt_3_4_ready;
  assign io_o_wt_3_4_payload = temp_wt_3_4_payload;
  assign io_o_wt_3_5_valid = temp_wt_3_5_valid;
  assign temp_wt_3_5_ready = io_o_wt_3_5_ready;
  assign io_o_wt_3_5_payload = temp_wt_3_5_payload;
  assign io_o_wt_3_6_valid = temp_wt_3_6_valid;
  assign temp_wt_3_6_ready = io_o_wt_3_6_ready;
  assign io_o_wt_3_6_payload = temp_wt_3_6_payload;
  assign io_o_wt_3_7_valid = temp_wt_3_7_valid;
  assign temp_wt_3_7_ready = io_o_wt_3_7_ready;
  assign io_o_wt_3_7_payload = temp_wt_3_7_payload;
  assign io_o_wt_4_0_valid = temp_wt_4_0_valid;
  assign temp_wt_4_0_ready = io_o_wt_4_0_ready;
  assign io_o_wt_4_0_payload = temp_wt_4_0_payload;
  assign io_o_wt_4_1_valid = temp_wt_4_1_valid;
  assign temp_wt_4_1_ready = io_o_wt_4_1_ready;
  assign io_o_wt_4_1_payload = temp_wt_4_1_payload;
  assign io_o_wt_4_2_valid = temp_wt_4_2_valid;
  assign temp_wt_4_2_ready = io_o_wt_4_2_ready;
  assign io_o_wt_4_2_payload = temp_wt_4_2_payload;
  assign io_o_wt_4_3_valid = temp_wt_4_3_valid;
  assign temp_wt_4_3_ready = io_o_wt_4_3_ready;
  assign io_o_wt_4_3_payload = temp_wt_4_3_payload;
  assign io_o_wt_4_4_valid = temp_wt_4_4_valid;
  assign temp_wt_4_4_ready = io_o_wt_4_4_ready;
  assign io_o_wt_4_4_payload = temp_wt_4_4_payload;
  assign io_o_wt_4_5_valid = temp_wt_4_5_valid;
  assign temp_wt_4_5_ready = io_o_wt_4_5_ready;
  assign io_o_wt_4_5_payload = temp_wt_4_5_payload;
  assign io_o_wt_4_6_valid = temp_wt_4_6_valid;
  assign temp_wt_4_6_ready = io_o_wt_4_6_ready;
  assign io_o_wt_4_6_payload = temp_wt_4_6_payload;
  assign io_o_wt_4_7_valid = temp_wt_4_7_valid;
  assign temp_wt_4_7_ready = io_o_wt_4_7_ready;
  assign io_o_wt_4_7_payload = temp_wt_4_7_payload;
  assign io_o_wt_5_0_valid = temp_wt_5_0_valid;
  assign temp_wt_5_0_ready = io_o_wt_5_0_ready;
  assign io_o_wt_5_0_payload = temp_wt_5_0_payload;
  assign io_o_wt_5_1_valid = temp_wt_5_1_valid;
  assign temp_wt_5_1_ready = io_o_wt_5_1_ready;
  assign io_o_wt_5_1_payload = temp_wt_5_1_payload;
  assign io_o_wt_5_2_valid = temp_wt_5_2_valid;
  assign temp_wt_5_2_ready = io_o_wt_5_2_ready;
  assign io_o_wt_5_2_payload = temp_wt_5_2_payload;
  assign io_o_wt_5_3_valid = temp_wt_5_3_valid;
  assign temp_wt_5_3_ready = io_o_wt_5_3_ready;
  assign io_o_wt_5_3_payload = temp_wt_5_3_payload;
  assign io_o_wt_5_4_valid = temp_wt_5_4_valid;
  assign temp_wt_5_4_ready = io_o_wt_5_4_ready;
  assign io_o_wt_5_4_payload = temp_wt_5_4_payload;
  assign io_o_wt_5_5_valid = temp_wt_5_5_valid;
  assign temp_wt_5_5_ready = io_o_wt_5_5_ready;
  assign io_o_wt_5_5_payload = temp_wt_5_5_payload;
  assign io_o_wt_5_6_valid = temp_wt_5_6_valid;
  assign temp_wt_5_6_ready = io_o_wt_5_6_ready;
  assign io_o_wt_5_6_payload = temp_wt_5_6_payload;
  assign io_o_wt_5_7_valid = temp_wt_5_7_valid;
  assign temp_wt_5_7_ready = io_o_wt_5_7_ready;
  assign io_o_wt_5_7_payload = temp_wt_5_7_payload;
  assign io_o_wt_6_0_valid = temp_wt_6_0_valid;
  assign temp_wt_6_0_ready = io_o_wt_6_0_ready;
  assign io_o_wt_6_0_payload = temp_wt_6_0_payload;
  assign io_o_wt_6_1_valid = temp_wt_6_1_valid;
  assign temp_wt_6_1_ready = io_o_wt_6_1_ready;
  assign io_o_wt_6_1_payload = temp_wt_6_1_payload;
  assign io_o_wt_6_2_valid = temp_wt_6_2_valid;
  assign temp_wt_6_2_ready = io_o_wt_6_2_ready;
  assign io_o_wt_6_2_payload = temp_wt_6_2_payload;
  assign io_o_wt_6_3_valid = temp_wt_6_3_valid;
  assign temp_wt_6_3_ready = io_o_wt_6_3_ready;
  assign io_o_wt_6_3_payload = temp_wt_6_3_payload;
  assign io_o_wt_6_4_valid = temp_wt_6_4_valid;
  assign temp_wt_6_4_ready = io_o_wt_6_4_ready;
  assign io_o_wt_6_4_payload = temp_wt_6_4_payload;
  assign io_o_wt_6_5_valid = temp_wt_6_5_valid;
  assign temp_wt_6_5_ready = io_o_wt_6_5_ready;
  assign io_o_wt_6_5_payload = temp_wt_6_5_payload;
  assign io_o_wt_6_6_valid = temp_wt_6_6_valid;
  assign temp_wt_6_6_ready = io_o_wt_6_6_ready;
  assign io_o_wt_6_6_payload = temp_wt_6_6_payload;
  assign io_o_wt_6_7_valid = temp_wt_6_7_valid;
  assign temp_wt_6_7_ready = io_o_wt_6_7_ready;
  assign io_o_wt_6_7_payload = temp_wt_6_7_payload;
  assign io_o_wt_7_0_valid = temp_wt_7_0_valid;
  assign temp_wt_7_0_ready = io_o_wt_7_0_ready;
  assign io_o_wt_7_0_payload = temp_wt_7_0_payload;
  assign io_o_wt_7_1_valid = temp_wt_7_1_valid;
  assign temp_wt_7_1_ready = io_o_wt_7_1_ready;
  assign io_o_wt_7_1_payload = temp_wt_7_1_payload;
  assign io_o_wt_7_2_valid = temp_wt_7_2_valid;
  assign temp_wt_7_2_ready = io_o_wt_7_2_ready;
  assign io_o_wt_7_2_payload = temp_wt_7_2_payload;
  assign io_o_wt_7_3_valid = temp_wt_7_3_valid;
  assign temp_wt_7_3_ready = io_o_wt_7_3_ready;
  assign io_o_wt_7_3_payload = temp_wt_7_3_payload;
  assign io_o_wt_7_4_valid = temp_wt_7_4_valid;
  assign temp_wt_7_4_ready = io_o_wt_7_4_ready;
  assign io_o_wt_7_4_payload = temp_wt_7_4_payload;
  assign io_o_wt_7_5_valid = temp_wt_7_5_valid;
  assign temp_wt_7_5_ready = io_o_wt_7_5_ready;
  assign io_o_wt_7_5_payload = temp_wt_7_5_payload;
  assign io_o_wt_7_6_valid = temp_wt_7_6_valid;
  assign temp_wt_7_6_ready = io_o_wt_7_6_ready;
  assign io_o_wt_7_6_payload = temp_wt_7_6_payload;
  assign io_o_wt_7_7_valid = temp_wt_7_7_valid;
  assign temp_wt_7_7_ready = io_o_wt_7_7_ready;
  assign io_o_wt_7_7_payload = temp_wt_7_7_payload;
  assign io_i_ft_ready = (((((((temp_ft_0_ready && temp_ft_1_ready) && temp_ft_2_ready) && temp_ft_3_ready) && temp_ft_4_ready) && temp_ft_5_ready) && temp_ft_6_ready) && temp_ft_7_ready);
  assign temp_ft_0_valid = io_i_ft_valid;
  assign temp_ft_0_payload = io_i_ft_payload[31 : 0];
  assign temp_ft_1_valid = io_i_ft_valid;
  assign temp_ft_1_payload = io_i_ft_payload[63 : 32];
  assign temp_ft_2_valid = io_i_ft_valid;
  assign temp_ft_2_payload = io_i_ft_payload[95 : 64];
  assign temp_ft_3_valid = io_i_ft_valid;
  assign temp_ft_3_payload = io_i_ft_payload[127 : 96];
  assign temp_ft_4_valid = io_i_ft_valid;
  assign temp_ft_4_payload = io_i_ft_payload[159 : 128];
  assign temp_ft_5_valid = io_i_ft_valid;
  assign temp_ft_5_payload = io_i_ft_payload[191 : 160];
  assign temp_ft_6_valid = io_i_ft_valid;
  assign temp_ft_6_payload = io_i_ft_payload[223 : 192];
  assign temp_ft_7_valid = io_i_ft_valid;
  assign temp_ft_7_payload = io_i_ft_payload[255 : 224];
  assign temp_wt_0_0_payload = io_i_wt_0_payload[31 : 0];
  assign temp_wt_0_0_valid = io_i_wt_0_valid;
  assign temp_wt_0_1_payload = io_i_wt_0_payload[63 : 32];
  assign temp_wt_0_1_valid = io_i_wt_0_valid;
  assign temp_wt_0_2_payload = io_i_wt_0_payload[95 : 64];
  assign temp_wt_0_2_valid = io_i_wt_0_valid;
  assign temp_wt_0_3_payload = io_i_wt_0_payload[127 : 96];
  assign temp_wt_0_3_valid = io_i_wt_0_valid;
  assign temp_wt_0_4_payload = io_i_wt_0_payload[159 : 128];
  assign temp_wt_0_4_valid = io_i_wt_0_valid;
  assign temp_wt_0_5_payload = io_i_wt_0_payload[191 : 160];
  assign temp_wt_0_5_valid = io_i_wt_0_valid;
  assign temp_wt_0_6_payload = io_i_wt_0_payload[223 : 192];
  assign temp_wt_0_6_valid = io_i_wt_0_valid;
  assign temp_wt_0_7_payload = io_i_wt_0_payload[255 : 224];
  assign temp_wt_0_7_valid = io_i_wt_0_valid;
  assign io_i_wt_0_ready = (((((((temp_wt_0_0_ready && temp_wt_0_1_ready) && temp_wt_0_2_ready) && temp_wt_0_3_ready) && temp_wt_0_4_ready) && temp_wt_0_5_ready) && temp_wt_0_6_ready) && temp_wt_0_7_ready);
  assign temp_wt_1_0_payload = io_i_wt_1_payload[31 : 0];
  assign temp_wt_1_0_valid = io_i_wt_1_valid;
  assign temp_wt_1_1_payload = io_i_wt_1_payload[63 : 32];
  assign temp_wt_1_1_valid = io_i_wt_1_valid;
  assign temp_wt_1_2_payload = io_i_wt_1_payload[95 : 64];
  assign temp_wt_1_2_valid = io_i_wt_1_valid;
  assign temp_wt_1_3_payload = io_i_wt_1_payload[127 : 96];
  assign temp_wt_1_3_valid = io_i_wt_1_valid;
  assign temp_wt_1_4_payload = io_i_wt_1_payload[159 : 128];
  assign temp_wt_1_4_valid = io_i_wt_1_valid;
  assign temp_wt_1_5_payload = io_i_wt_1_payload[191 : 160];
  assign temp_wt_1_5_valid = io_i_wt_1_valid;
  assign temp_wt_1_6_payload = io_i_wt_1_payload[223 : 192];
  assign temp_wt_1_6_valid = io_i_wt_1_valid;
  assign temp_wt_1_7_payload = io_i_wt_1_payload[255 : 224];
  assign temp_wt_1_7_valid = io_i_wt_1_valid;
  assign io_i_wt_1_ready = (((((((temp_wt_1_0_ready && temp_wt_1_1_ready) && temp_wt_1_2_ready) && temp_wt_1_3_ready) && temp_wt_1_4_ready) && temp_wt_1_5_ready) && temp_wt_1_6_ready) && temp_wt_1_7_ready);
  assign temp_wt_2_0_payload = io_i_wt_2_payload[31 : 0];
  assign temp_wt_2_0_valid = io_i_wt_2_valid;
  assign temp_wt_2_1_payload = io_i_wt_2_payload[63 : 32];
  assign temp_wt_2_1_valid = io_i_wt_2_valid;
  assign temp_wt_2_2_payload = io_i_wt_2_payload[95 : 64];
  assign temp_wt_2_2_valid = io_i_wt_2_valid;
  assign temp_wt_2_3_payload = io_i_wt_2_payload[127 : 96];
  assign temp_wt_2_3_valid = io_i_wt_2_valid;
  assign temp_wt_2_4_payload = io_i_wt_2_payload[159 : 128];
  assign temp_wt_2_4_valid = io_i_wt_2_valid;
  assign temp_wt_2_5_payload = io_i_wt_2_payload[191 : 160];
  assign temp_wt_2_5_valid = io_i_wt_2_valid;
  assign temp_wt_2_6_payload = io_i_wt_2_payload[223 : 192];
  assign temp_wt_2_6_valid = io_i_wt_2_valid;
  assign temp_wt_2_7_payload = io_i_wt_2_payload[255 : 224];
  assign temp_wt_2_7_valid = io_i_wt_2_valid;
  assign io_i_wt_2_ready = (((((((temp_wt_2_0_ready && temp_wt_2_1_ready) && temp_wt_2_2_ready) && temp_wt_2_3_ready) && temp_wt_2_4_ready) && temp_wt_2_5_ready) && temp_wt_2_6_ready) && temp_wt_2_7_ready);
  assign temp_wt_3_0_payload = io_i_wt_3_payload[31 : 0];
  assign temp_wt_3_0_valid = io_i_wt_3_valid;
  assign temp_wt_3_1_payload = io_i_wt_3_payload[63 : 32];
  assign temp_wt_3_1_valid = io_i_wt_3_valid;
  assign temp_wt_3_2_payload = io_i_wt_3_payload[95 : 64];
  assign temp_wt_3_2_valid = io_i_wt_3_valid;
  assign temp_wt_3_3_payload = io_i_wt_3_payload[127 : 96];
  assign temp_wt_3_3_valid = io_i_wt_3_valid;
  assign temp_wt_3_4_payload = io_i_wt_3_payload[159 : 128];
  assign temp_wt_3_4_valid = io_i_wt_3_valid;
  assign temp_wt_3_5_payload = io_i_wt_3_payload[191 : 160];
  assign temp_wt_3_5_valid = io_i_wt_3_valid;
  assign temp_wt_3_6_payload = io_i_wt_3_payload[223 : 192];
  assign temp_wt_3_6_valid = io_i_wt_3_valid;
  assign temp_wt_3_7_payload = io_i_wt_3_payload[255 : 224];
  assign temp_wt_3_7_valid = io_i_wt_3_valid;
  assign io_i_wt_3_ready = (((((((temp_wt_3_0_ready && temp_wt_3_1_ready) && temp_wt_3_2_ready) && temp_wt_3_3_ready) && temp_wt_3_4_ready) && temp_wt_3_5_ready) && temp_wt_3_6_ready) && temp_wt_3_7_ready);
  assign temp_wt_4_0_payload = io_i_wt_4_payload[31 : 0];
  assign temp_wt_4_0_valid = io_i_wt_4_valid;
  assign temp_wt_4_1_payload = io_i_wt_4_payload[63 : 32];
  assign temp_wt_4_1_valid = io_i_wt_4_valid;
  assign temp_wt_4_2_payload = io_i_wt_4_payload[95 : 64];
  assign temp_wt_4_2_valid = io_i_wt_4_valid;
  assign temp_wt_4_3_payload = io_i_wt_4_payload[127 : 96];
  assign temp_wt_4_3_valid = io_i_wt_4_valid;
  assign temp_wt_4_4_payload = io_i_wt_4_payload[159 : 128];
  assign temp_wt_4_4_valid = io_i_wt_4_valid;
  assign temp_wt_4_5_payload = io_i_wt_4_payload[191 : 160];
  assign temp_wt_4_5_valid = io_i_wt_4_valid;
  assign temp_wt_4_6_payload = io_i_wt_4_payload[223 : 192];
  assign temp_wt_4_6_valid = io_i_wt_4_valid;
  assign temp_wt_4_7_payload = io_i_wt_4_payload[255 : 224];
  assign temp_wt_4_7_valid = io_i_wt_4_valid;
  assign io_i_wt_4_ready = (((((((temp_wt_4_0_ready && temp_wt_4_1_ready) && temp_wt_4_2_ready) && temp_wt_4_3_ready) && temp_wt_4_4_ready) && temp_wt_4_5_ready) && temp_wt_4_6_ready) && temp_wt_4_7_ready);
  assign temp_wt_5_0_payload = io_i_wt_5_payload[31 : 0];
  assign temp_wt_5_0_valid = io_i_wt_5_valid;
  assign temp_wt_5_1_payload = io_i_wt_5_payload[63 : 32];
  assign temp_wt_5_1_valid = io_i_wt_5_valid;
  assign temp_wt_5_2_payload = io_i_wt_5_payload[95 : 64];
  assign temp_wt_5_2_valid = io_i_wt_5_valid;
  assign temp_wt_5_3_payload = io_i_wt_5_payload[127 : 96];
  assign temp_wt_5_3_valid = io_i_wt_5_valid;
  assign temp_wt_5_4_payload = io_i_wt_5_payload[159 : 128];
  assign temp_wt_5_4_valid = io_i_wt_5_valid;
  assign temp_wt_5_5_payload = io_i_wt_5_payload[191 : 160];
  assign temp_wt_5_5_valid = io_i_wt_5_valid;
  assign temp_wt_5_6_payload = io_i_wt_5_payload[223 : 192];
  assign temp_wt_5_6_valid = io_i_wt_5_valid;
  assign temp_wt_5_7_payload = io_i_wt_5_payload[255 : 224];
  assign temp_wt_5_7_valid = io_i_wt_5_valid;
  assign io_i_wt_5_ready = (((((((temp_wt_5_0_ready && temp_wt_5_1_ready) && temp_wt_5_2_ready) && temp_wt_5_3_ready) && temp_wt_5_4_ready) && temp_wt_5_5_ready) && temp_wt_5_6_ready) && temp_wt_5_7_ready);
  assign temp_wt_6_0_payload = io_i_wt_6_payload[31 : 0];
  assign temp_wt_6_0_valid = io_i_wt_6_valid;
  assign temp_wt_6_1_payload = io_i_wt_6_payload[63 : 32];
  assign temp_wt_6_1_valid = io_i_wt_6_valid;
  assign temp_wt_6_2_payload = io_i_wt_6_payload[95 : 64];
  assign temp_wt_6_2_valid = io_i_wt_6_valid;
  assign temp_wt_6_3_payload = io_i_wt_6_payload[127 : 96];
  assign temp_wt_6_3_valid = io_i_wt_6_valid;
  assign temp_wt_6_4_payload = io_i_wt_6_payload[159 : 128];
  assign temp_wt_6_4_valid = io_i_wt_6_valid;
  assign temp_wt_6_5_payload = io_i_wt_6_payload[191 : 160];
  assign temp_wt_6_5_valid = io_i_wt_6_valid;
  assign temp_wt_6_6_payload = io_i_wt_6_payload[223 : 192];
  assign temp_wt_6_6_valid = io_i_wt_6_valid;
  assign temp_wt_6_7_payload = io_i_wt_6_payload[255 : 224];
  assign temp_wt_6_7_valid = io_i_wt_6_valid;
  assign io_i_wt_6_ready = (((((((temp_wt_6_0_ready && temp_wt_6_1_ready) && temp_wt_6_2_ready) && temp_wt_6_3_ready) && temp_wt_6_4_ready) && temp_wt_6_5_ready) && temp_wt_6_6_ready) && temp_wt_6_7_ready);
  assign temp_wt_7_0_payload = io_i_wt_7_payload[31 : 0];
  assign temp_wt_7_0_valid = io_i_wt_7_valid;
  assign temp_wt_7_1_payload = io_i_wt_7_payload[63 : 32];
  assign temp_wt_7_1_valid = io_i_wt_7_valid;
  assign temp_wt_7_2_payload = io_i_wt_7_payload[95 : 64];
  assign temp_wt_7_2_valid = io_i_wt_7_valid;
  assign temp_wt_7_3_payload = io_i_wt_7_payload[127 : 96];
  assign temp_wt_7_3_valid = io_i_wt_7_valid;
  assign temp_wt_7_4_payload = io_i_wt_7_payload[159 : 128];
  assign temp_wt_7_4_valid = io_i_wt_7_valid;
  assign temp_wt_7_5_payload = io_i_wt_7_payload[191 : 160];
  assign temp_wt_7_5_valid = io_i_wt_7_valid;
  assign temp_wt_7_6_payload = io_i_wt_7_payload[223 : 192];
  assign temp_wt_7_6_valid = io_i_wt_7_valid;
  assign temp_wt_7_7_payload = io_i_wt_7_payload[255 : 224];
  assign temp_wt_7_7_valid = io_i_wt_7_valid;
  assign io_i_wt_7_ready = (((((((temp_wt_7_0_ready && temp_wt_7_1_ready) && temp_wt_7_2_ready) && temp_wt_7_3_ready) && temp_wt_7_4_ready) && temp_wt_7_5_ready) && temp_wt_7_6_ready) && temp_wt_7_7_ready);

endmodule

// Generator : SpinalHDL v1.5.0    git head : 83a031922866b078c411ec5529e00f1b6e79f8e7
// Component : conv_mux
// Git hash  : 7cf456a7275333e0b68be75507643533760d2cf3


`define mux_fsm_enumDefinition_binary_sequential_type [1:0]
`define mux_fsm_enumDefinition_binary_sequential_mux_fsm_BOOT 2'b00
`define mux_fsm_enumDefinition_binary_sequential_mux_fsm_RCV 2'b01
`define mux_fsm_enumDefinition_binary_sequential_mux_fsm_ODELTA 2'b10
`define mux_fsm_enumDefinition_binary_sequential_mux_fsm_OSIGMA 2'b11


module conv_mux (
  input               io_is_delta_wt,
  input               io_indata_0_0_valid,
  output              io_indata_0_0_ready,
  input      [31:0]   io_indata_0_0_payload,
  input               io_indata_0_1_valid,
  output              io_indata_0_1_ready,
  input      [31:0]   io_indata_0_1_payload,
  input               io_indata_0_2_valid,
  output              io_indata_0_2_ready,
  input      [31:0]   io_indata_0_2_payload,
  input               io_indata_0_3_valid,
  output              io_indata_0_3_ready,
  input      [31:0]   io_indata_0_3_payload,
  input               io_indata_0_4_valid,
  output              io_indata_0_4_ready,
  input      [31:0]   io_indata_0_4_payload,
  input               io_indata_0_5_valid,
  output              io_indata_0_5_ready,
  input      [31:0]   io_indata_0_5_payload,
  input               io_indata_0_6_valid,
  output              io_indata_0_6_ready,
  input      [31:0]   io_indata_0_6_payload,
  input               io_indata_0_7_valid,
  output              io_indata_0_7_ready,
  input      [31:0]   io_indata_0_7_payload,
  input               io_indata_1_0_valid,
  output              io_indata_1_0_ready,
  input      [31:0]   io_indata_1_0_payload,
  input               io_indata_1_1_valid,
  output              io_indata_1_1_ready,
  input      [31:0]   io_indata_1_1_payload,
  input               io_indata_1_2_valid,
  output              io_indata_1_2_ready,
  input      [31:0]   io_indata_1_2_payload,
  input               io_indata_1_3_valid,
  output              io_indata_1_3_ready,
  input      [31:0]   io_indata_1_3_payload,
  input               io_indata_1_4_valid,
  output              io_indata_1_4_ready,
  input      [31:0]   io_indata_1_4_payload,
  input               io_indata_1_5_valid,
  output              io_indata_1_5_ready,
  input      [31:0]   io_indata_1_5_payload,
  input               io_indata_1_6_valid,
  output              io_indata_1_6_ready,
  input      [31:0]   io_indata_1_6_payload,
  input               io_indata_1_7_valid,
  output              io_indata_1_7_ready,
  input      [31:0]   io_indata_1_7_payload,
  input               io_indata_2_0_valid,
  output              io_indata_2_0_ready,
  input      [31:0]   io_indata_2_0_payload,
  input               io_indata_2_1_valid,
  output              io_indata_2_1_ready,
  input      [31:0]   io_indata_2_1_payload,
  input               io_indata_2_2_valid,
  output              io_indata_2_2_ready,
  input      [31:0]   io_indata_2_2_payload,
  input               io_indata_2_3_valid,
  output              io_indata_2_3_ready,
  input      [31:0]   io_indata_2_3_payload,
  input               io_indata_2_4_valid,
  output              io_indata_2_4_ready,
  input      [31:0]   io_indata_2_4_payload,
  input               io_indata_2_5_valid,
  output              io_indata_2_5_ready,
  input      [31:0]   io_indata_2_5_payload,
  input               io_indata_2_6_valid,
  output              io_indata_2_6_ready,
  input      [31:0]   io_indata_2_6_payload,
  input               io_indata_2_7_valid,
  output              io_indata_2_7_ready,
  input      [31:0]   io_indata_2_7_payload,
  input               io_indata_3_0_valid,
  output              io_indata_3_0_ready,
  input      [31:0]   io_indata_3_0_payload,
  input               io_indata_3_1_valid,
  output              io_indata_3_1_ready,
  input      [31:0]   io_indata_3_1_payload,
  input               io_indata_3_2_valid,
  output              io_indata_3_2_ready,
  input      [31:0]   io_indata_3_2_payload,
  input               io_indata_3_3_valid,
  output              io_indata_3_3_ready,
  input      [31:0]   io_indata_3_3_payload,
  input               io_indata_3_4_valid,
  output              io_indata_3_4_ready,
  input      [31:0]   io_indata_3_4_payload,
  input               io_indata_3_5_valid,
  output              io_indata_3_5_ready,
  input      [31:0]   io_indata_3_5_payload,
  input               io_indata_3_6_valid,
  output              io_indata_3_6_ready,
  input      [31:0]   io_indata_3_6_payload,
  input               io_indata_3_7_valid,
  output              io_indata_3_7_ready,
  input      [31:0]   io_indata_3_7_payload,
  input               io_indata_4_0_valid,
  output              io_indata_4_0_ready,
  input      [31:0]   io_indata_4_0_payload,
  input               io_indata_4_1_valid,
  output              io_indata_4_1_ready,
  input      [31:0]   io_indata_4_1_payload,
  input               io_indata_4_2_valid,
  output              io_indata_4_2_ready,
  input      [31:0]   io_indata_4_2_payload,
  input               io_indata_4_3_valid,
  output              io_indata_4_3_ready,
  input      [31:0]   io_indata_4_3_payload,
  input               io_indata_4_4_valid,
  output              io_indata_4_4_ready,
  input      [31:0]   io_indata_4_4_payload,
  input               io_indata_4_5_valid,
  output              io_indata_4_5_ready,
  input      [31:0]   io_indata_4_5_payload,
  input               io_indata_4_6_valid,
  output              io_indata_4_6_ready,
  input      [31:0]   io_indata_4_6_payload,
  input               io_indata_4_7_valid,
  output              io_indata_4_7_ready,
  input      [31:0]   io_indata_4_7_payload,
  input               io_indata_5_0_valid,
  output              io_indata_5_0_ready,
  input      [31:0]   io_indata_5_0_payload,
  input               io_indata_5_1_valid,
  output              io_indata_5_1_ready,
  input      [31:0]   io_indata_5_1_payload,
  input               io_indata_5_2_valid,
  output              io_indata_5_2_ready,
  input      [31:0]   io_indata_5_2_payload,
  input               io_indata_5_3_valid,
  output              io_indata_5_3_ready,
  input      [31:0]   io_indata_5_3_payload,
  input               io_indata_5_4_valid,
  output              io_indata_5_4_ready,
  input      [31:0]   io_indata_5_4_payload,
  input               io_indata_5_5_valid,
  output              io_indata_5_5_ready,
  input      [31:0]   io_indata_5_5_payload,
  input               io_indata_5_6_valid,
  output              io_indata_5_6_ready,
  input      [31:0]   io_indata_5_6_payload,
  input               io_indata_5_7_valid,
  output              io_indata_5_7_ready,
  input      [31:0]   io_indata_5_7_payload,
  input               io_indata_6_0_valid,
  output              io_indata_6_0_ready,
  input      [31:0]   io_indata_6_0_payload,
  input               io_indata_6_1_valid,
  output              io_indata_6_1_ready,
  input      [31:0]   io_indata_6_1_payload,
  input               io_indata_6_2_valid,
  output              io_indata_6_2_ready,
  input      [31:0]   io_indata_6_2_payload,
  input               io_indata_6_3_valid,
  output              io_indata_6_3_ready,
  input      [31:0]   io_indata_6_3_payload,
  input               io_indata_6_4_valid,
  output              io_indata_6_4_ready,
  input      [31:0]   io_indata_6_4_payload,
  input               io_indata_6_5_valid,
  output              io_indata_6_5_ready,
  input      [31:0]   io_indata_6_5_payload,
  input               io_indata_6_6_valid,
  output              io_indata_6_6_ready,
  input      [31:0]   io_indata_6_6_payload,
  input               io_indata_6_7_valid,
  output              io_indata_6_7_ready,
  input      [31:0]   io_indata_6_7_payload,
  input               io_indata_7_0_valid,
  output              io_indata_7_0_ready,
  input      [31:0]   io_indata_7_0_payload,
  input               io_indata_7_1_valid,
  output              io_indata_7_1_ready,
  input      [31:0]   io_indata_7_1_payload,
  input               io_indata_7_2_valid,
  output              io_indata_7_2_ready,
  input      [31:0]   io_indata_7_2_payload,
  input               io_indata_7_3_valid,
  output              io_indata_7_3_ready,
  input      [31:0]   io_indata_7_3_payload,
  input               io_indata_7_4_valid,
  output              io_indata_7_4_ready,
  input      [31:0]   io_indata_7_4_payload,
  input               io_indata_7_5_valid,
  output              io_indata_7_5_ready,
  input      [31:0]   io_indata_7_5_payload,
  input               io_indata_7_6_valid,
  output              io_indata_7_6_ready,
  input      [31:0]   io_indata_7_6_payload,
  input               io_indata_7_7_valid,
  output              io_indata_7_7_ready,
  input      [31:0]   io_indata_7_7_payload,
  output              io_o_delta_wt_0_0_valid,
  input               io_o_delta_wt_0_0_ready,
  output     [31:0]   io_o_delta_wt_0_0_payload,
  output              io_o_delta_wt_0_1_valid,
  input               io_o_delta_wt_0_1_ready,
  output     [31:0]   io_o_delta_wt_0_1_payload,
  output              io_o_delta_wt_0_2_valid,
  input               io_o_delta_wt_0_2_ready,
  output     [31:0]   io_o_delta_wt_0_2_payload,
  output              io_o_delta_wt_0_3_valid,
  input               io_o_delta_wt_0_3_ready,
  output     [31:0]   io_o_delta_wt_0_3_payload,
  output              io_o_delta_wt_0_4_valid,
  input               io_o_delta_wt_0_4_ready,
  output     [31:0]   io_o_delta_wt_0_4_payload,
  output              io_o_delta_wt_0_5_valid,
  input               io_o_delta_wt_0_5_ready,
  output     [31:0]   io_o_delta_wt_0_5_payload,
  output              io_o_delta_wt_0_6_valid,
  input               io_o_delta_wt_0_6_ready,
  output     [31:0]   io_o_delta_wt_0_6_payload,
  output              io_o_delta_wt_0_7_valid,
  input               io_o_delta_wt_0_7_ready,
  output     [31:0]   io_o_delta_wt_0_7_payload,
  output              io_o_delta_wt_1_0_valid,
  input               io_o_delta_wt_1_0_ready,
  output     [31:0]   io_o_delta_wt_1_0_payload,
  output              io_o_delta_wt_1_1_valid,
  input               io_o_delta_wt_1_1_ready,
  output     [31:0]   io_o_delta_wt_1_1_payload,
  output              io_o_delta_wt_1_2_valid,
  input               io_o_delta_wt_1_2_ready,
  output     [31:0]   io_o_delta_wt_1_2_payload,
  output              io_o_delta_wt_1_3_valid,
  input               io_o_delta_wt_1_3_ready,
  output     [31:0]   io_o_delta_wt_1_3_payload,
  output              io_o_delta_wt_1_4_valid,
  input               io_o_delta_wt_1_4_ready,
  output     [31:0]   io_o_delta_wt_1_4_payload,
  output              io_o_delta_wt_1_5_valid,
  input               io_o_delta_wt_1_5_ready,
  output     [31:0]   io_o_delta_wt_1_5_payload,
  output              io_o_delta_wt_1_6_valid,
  input               io_o_delta_wt_1_6_ready,
  output     [31:0]   io_o_delta_wt_1_6_payload,
  output              io_o_delta_wt_1_7_valid,
  input               io_o_delta_wt_1_7_ready,
  output     [31:0]   io_o_delta_wt_1_7_payload,
  output              io_o_delta_wt_2_0_valid,
  input               io_o_delta_wt_2_0_ready,
  output     [31:0]   io_o_delta_wt_2_0_payload,
  output              io_o_delta_wt_2_1_valid,
  input               io_o_delta_wt_2_1_ready,
  output     [31:0]   io_o_delta_wt_2_1_payload,
  output              io_o_delta_wt_2_2_valid,
  input               io_o_delta_wt_2_2_ready,
  output     [31:0]   io_o_delta_wt_2_2_payload,
  output              io_o_delta_wt_2_3_valid,
  input               io_o_delta_wt_2_3_ready,
  output     [31:0]   io_o_delta_wt_2_3_payload,
  output              io_o_delta_wt_2_4_valid,
  input               io_o_delta_wt_2_4_ready,
  output     [31:0]   io_o_delta_wt_2_4_payload,
  output              io_o_delta_wt_2_5_valid,
  input               io_o_delta_wt_2_5_ready,
  output     [31:0]   io_o_delta_wt_2_5_payload,
  output              io_o_delta_wt_2_6_valid,
  input               io_o_delta_wt_2_6_ready,
  output     [31:0]   io_o_delta_wt_2_6_payload,
  output              io_o_delta_wt_2_7_valid,
  input               io_o_delta_wt_2_7_ready,
  output     [31:0]   io_o_delta_wt_2_7_payload,
  output              io_o_delta_wt_3_0_valid,
  input               io_o_delta_wt_3_0_ready,
  output     [31:0]   io_o_delta_wt_3_0_payload,
  output              io_o_delta_wt_3_1_valid,
  input               io_o_delta_wt_3_1_ready,
  output     [31:0]   io_o_delta_wt_3_1_payload,
  output              io_o_delta_wt_3_2_valid,
  input               io_o_delta_wt_3_2_ready,
  output     [31:0]   io_o_delta_wt_3_2_payload,
  output              io_o_delta_wt_3_3_valid,
  input               io_o_delta_wt_3_3_ready,
  output     [31:0]   io_o_delta_wt_3_3_payload,
  output              io_o_delta_wt_3_4_valid,
  input               io_o_delta_wt_3_4_ready,
  output     [31:0]   io_o_delta_wt_3_4_payload,
  output              io_o_delta_wt_3_5_valid,
  input               io_o_delta_wt_3_5_ready,
  output     [31:0]   io_o_delta_wt_3_5_payload,
  output              io_o_delta_wt_3_6_valid,
  input               io_o_delta_wt_3_6_ready,
  output     [31:0]   io_o_delta_wt_3_6_payload,
  output              io_o_delta_wt_3_7_valid,
  input               io_o_delta_wt_3_7_ready,
  output     [31:0]   io_o_delta_wt_3_7_payload,
  output              io_o_delta_wt_4_0_valid,
  input               io_o_delta_wt_4_0_ready,
  output     [31:0]   io_o_delta_wt_4_0_payload,
  output              io_o_delta_wt_4_1_valid,
  input               io_o_delta_wt_4_1_ready,
  output     [31:0]   io_o_delta_wt_4_1_payload,
  output              io_o_delta_wt_4_2_valid,
  input               io_o_delta_wt_4_2_ready,
  output     [31:0]   io_o_delta_wt_4_2_payload,
  output              io_o_delta_wt_4_3_valid,
  input               io_o_delta_wt_4_3_ready,
  output     [31:0]   io_o_delta_wt_4_3_payload,
  output              io_o_delta_wt_4_4_valid,
  input               io_o_delta_wt_4_4_ready,
  output     [31:0]   io_o_delta_wt_4_4_payload,
  output              io_o_delta_wt_4_5_valid,
  input               io_o_delta_wt_4_5_ready,
  output     [31:0]   io_o_delta_wt_4_5_payload,
  output              io_o_delta_wt_4_6_valid,
  input               io_o_delta_wt_4_6_ready,
  output     [31:0]   io_o_delta_wt_4_6_payload,
  output              io_o_delta_wt_4_7_valid,
  input               io_o_delta_wt_4_7_ready,
  output     [31:0]   io_o_delta_wt_4_7_payload,
  output              io_o_delta_wt_5_0_valid,
  input               io_o_delta_wt_5_0_ready,
  output     [31:0]   io_o_delta_wt_5_0_payload,
  output              io_o_delta_wt_5_1_valid,
  input               io_o_delta_wt_5_1_ready,
  output     [31:0]   io_o_delta_wt_5_1_payload,
  output              io_o_delta_wt_5_2_valid,
  input               io_o_delta_wt_5_2_ready,
  output     [31:0]   io_o_delta_wt_5_2_payload,
  output              io_o_delta_wt_5_3_valid,
  input               io_o_delta_wt_5_3_ready,
  output     [31:0]   io_o_delta_wt_5_3_payload,
  output              io_o_delta_wt_5_4_valid,
  input               io_o_delta_wt_5_4_ready,
  output     [31:0]   io_o_delta_wt_5_4_payload,
  output              io_o_delta_wt_5_5_valid,
  input               io_o_delta_wt_5_5_ready,
  output     [31:0]   io_o_delta_wt_5_5_payload,
  output              io_o_delta_wt_5_6_valid,
  input               io_o_delta_wt_5_6_ready,
  output     [31:0]   io_o_delta_wt_5_6_payload,
  output              io_o_delta_wt_5_7_valid,
  input               io_o_delta_wt_5_7_ready,
  output     [31:0]   io_o_delta_wt_5_7_payload,
  output              io_o_delta_wt_6_0_valid,
  input               io_o_delta_wt_6_0_ready,
  output     [31:0]   io_o_delta_wt_6_0_payload,
  output              io_o_delta_wt_6_1_valid,
  input               io_o_delta_wt_6_1_ready,
  output     [31:0]   io_o_delta_wt_6_1_payload,
  output              io_o_delta_wt_6_2_valid,
  input               io_o_delta_wt_6_2_ready,
  output     [31:0]   io_o_delta_wt_6_2_payload,
  output              io_o_delta_wt_6_3_valid,
  input               io_o_delta_wt_6_3_ready,
  output     [31:0]   io_o_delta_wt_6_3_payload,
  output              io_o_delta_wt_6_4_valid,
  input               io_o_delta_wt_6_4_ready,
  output     [31:0]   io_o_delta_wt_6_4_payload,
  output              io_o_delta_wt_6_5_valid,
  input               io_o_delta_wt_6_5_ready,
  output     [31:0]   io_o_delta_wt_6_5_payload,
  output              io_o_delta_wt_6_6_valid,
  input               io_o_delta_wt_6_6_ready,
  output     [31:0]   io_o_delta_wt_6_6_payload,
  output              io_o_delta_wt_6_7_valid,
  input               io_o_delta_wt_6_7_ready,
  output     [31:0]   io_o_delta_wt_6_7_payload,
  output              io_o_delta_wt_7_0_valid,
  input               io_o_delta_wt_7_0_ready,
  output     [31:0]   io_o_delta_wt_7_0_payload,
  output              io_o_delta_wt_7_1_valid,
  input               io_o_delta_wt_7_1_ready,
  output     [31:0]   io_o_delta_wt_7_1_payload,
  output              io_o_delta_wt_7_2_valid,
  input               io_o_delta_wt_7_2_ready,
  output     [31:0]   io_o_delta_wt_7_2_payload,
  output              io_o_delta_wt_7_3_valid,
  input               io_o_delta_wt_7_3_ready,
  output     [31:0]   io_o_delta_wt_7_3_payload,
  output              io_o_delta_wt_7_4_valid,
  input               io_o_delta_wt_7_4_ready,
  output     [31:0]   io_o_delta_wt_7_4_payload,
  output              io_o_delta_wt_7_5_valid,
  input               io_o_delta_wt_7_5_ready,
  output     [31:0]   io_o_delta_wt_7_5_payload,
  output              io_o_delta_wt_7_6_valid,
  input               io_o_delta_wt_7_6_ready,
  output     [31:0]   io_o_delta_wt_7_6_payload,
  output              io_o_delta_wt_7_7_valid,
  input               io_o_delta_wt_7_7_ready,
  output     [31:0]   io_o_delta_wt_7_7_payload,
  output              io_o_sigma_0_0_valid,
  input               io_o_sigma_0_0_ready,
  output     [31:0]   io_o_sigma_0_0_payload,
  output              io_o_sigma_0_1_valid,
  input               io_o_sigma_0_1_ready,
  output     [31:0]   io_o_sigma_0_1_payload,
  output              io_o_sigma_0_2_valid,
  input               io_o_sigma_0_2_ready,
  output     [31:0]   io_o_sigma_0_2_payload,
  output              io_o_sigma_0_3_valid,
  input               io_o_sigma_0_3_ready,
  output     [31:0]   io_o_sigma_0_3_payload,
  output              io_o_sigma_0_4_valid,
  input               io_o_sigma_0_4_ready,
  output     [31:0]   io_o_sigma_0_4_payload,
  output              io_o_sigma_0_5_valid,
  input               io_o_sigma_0_5_ready,
  output     [31:0]   io_o_sigma_0_5_payload,
  output              io_o_sigma_0_6_valid,
  input               io_o_sigma_0_6_ready,
  output     [31:0]   io_o_sigma_0_6_payload,
  output              io_o_sigma_0_7_valid,
  input               io_o_sigma_0_7_ready,
  output     [31:0]   io_o_sigma_0_7_payload,
  output              io_o_sigma_1_0_valid,
  input               io_o_sigma_1_0_ready,
  output     [31:0]   io_o_sigma_1_0_payload,
  output              io_o_sigma_1_1_valid,
  input               io_o_sigma_1_1_ready,
  output     [31:0]   io_o_sigma_1_1_payload,
  output              io_o_sigma_1_2_valid,
  input               io_o_sigma_1_2_ready,
  output     [31:0]   io_o_sigma_1_2_payload,
  output              io_o_sigma_1_3_valid,
  input               io_o_sigma_1_3_ready,
  output     [31:0]   io_o_sigma_1_3_payload,
  output              io_o_sigma_1_4_valid,
  input               io_o_sigma_1_4_ready,
  output     [31:0]   io_o_sigma_1_4_payload,
  output              io_o_sigma_1_5_valid,
  input               io_o_sigma_1_5_ready,
  output     [31:0]   io_o_sigma_1_5_payload,
  output              io_o_sigma_1_6_valid,
  input               io_o_sigma_1_6_ready,
  output     [31:0]   io_o_sigma_1_6_payload,
  output              io_o_sigma_1_7_valid,
  input               io_o_sigma_1_7_ready,
  output     [31:0]   io_o_sigma_1_7_payload,
  output              io_o_sigma_2_0_valid,
  input               io_o_sigma_2_0_ready,
  output     [31:0]   io_o_sigma_2_0_payload,
  output              io_o_sigma_2_1_valid,
  input               io_o_sigma_2_1_ready,
  output     [31:0]   io_o_sigma_2_1_payload,
  output              io_o_sigma_2_2_valid,
  input               io_o_sigma_2_2_ready,
  output     [31:0]   io_o_sigma_2_2_payload,
  output              io_o_sigma_2_3_valid,
  input               io_o_sigma_2_3_ready,
  output     [31:0]   io_o_sigma_2_3_payload,
  output              io_o_sigma_2_4_valid,
  input               io_o_sigma_2_4_ready,
  output     [31:0]   io_o_sigma_2_4_payload,
  output              io_o_sigma_2_5_valid,
  input               io_o_sigma_2_5_ready,
  output     [31:0]   io_o_sigma_2_5_payload,
  output              io_o_sigma_2_6_valid,
  input               io_o_sigma_2_6_ready,
  output     [31:0]   io_o_sigma_2_6_payload,
  output              io_o_sigma_2_7_valid,
  input               io_o_sigma_2_7_ready,
  output     [31:0]   io_o_sigma_2_7_payload,
  output              io_o_sigma_3_0_valid,
  input               io_o_sigma_3_0_ready,
  output     [31:0]   io_o_sigma_3_0_payload,
  output              io_o_sigma_3_1_valid,
  input               io_o_sigma_3_1_ready,
  output     [31:0]   io_o_sigma_3_1_payload,
  output              io_o_sigma_3_2_valid,
  input               io_o_sigma_3_2_ready,
  output     [31:0]   io_o_sigma_3_2_payload,
  output              io_o_sigma_3_3_valid,
  input               io_o_sigma_3_3_ready,
  output     [31:0]   io_o_sigma_3_3_payload,
  output              io_o_sigma_3_4_valid,
  input               io_o_sigma_3_4_ready,
  output     [31:0]   io_o_sigma_3_4_payload,
  output              io_o_sigma_3_5_valid,
  input               io_o_sigma_3_5_ready,
  output     [31:0]   io_o_sigma_3_5_payload,
  output              io_o_sigma_3_6_valid,
  input               io_o_sigma_3_6_ready,
  output     [31:0]   io_o_sigma_3_6_payload,
  output              io_o_sigma_3_7_valid,
  input               io_o_sigma_3_7_ready,
  output     [31:0]   io_o_sigma_3_7_payload,
  output              io_o_sigma_4_0_valid,
  input               io_o_sigma_4_0_ready,
  output     [31:0]   io_o_sigma_4_0_payload,
  output              io_o_sigma_4_1_valid,
  input               io_o_sigma_4_1_ready,
  output     [31:0]   io_o_sigma_4_1_payload,
  output              io_o_sigma_4_2_valid,
  input               io_o_sigma_4_2_ready,
  output     [31:0]   io_o_sigma_4_2_payload,
  output              io_o_sigma_4_3_valid,
  input               io_o_sigma_4_3_ready,
  output     [31:0]   io_o_sigma_4_3_payload,
  output              io_o_sigma_4_4_valid,
  input               io_o_sigma_4_4_ready,
  output     [31:0]   io_o_sigma_4_4_payload,
  output              io_o_sigma_4_5_valid,
  input               io_o_sigma_4_5_ready,
  output     [31:0]   io_o_sigma_4_5_payload,
  output              io_o_sigma_4_6_valid,
  input               io_o_sigma_4_6_ready,
  output     [31:0]   io_o_sigma_4_6_payload,
  output              io_o_sigma_4_7_valid,
  input               io_o_sigma_4_7_ready,
  output     [31:0]   io_o_sigma_4_7_payload,
  output              io_o_sigma_5_0_valid,
  input               io_o_sigma_5_0_ready,
  output     [31:0]   io_o_sigma_5_0_payload,
  output              io_o_sigma_5_1_valid,
  input               io_o_sigma_5_1_ready,
  output     [31:0]   io_o_sigma_5_1_payload,
  output              io_o_sigma_5_2_valid,
  input               io_o_sigma_5_2_ready,
  output     [31:0]   io_o_sigma_5_2_payload,
  output              io_o_sigma_5_3_valid,
  input               io_o_sigma_5_3_ready,
  output     [31:0]   io_o_sigma_5_3_payload,
  output              io_o_sigma_5_4_valid,
  input               io_o_sigma_5_4_ready,
  output     [31:0]   io_o_sigma_5_4_payload,
  output              io_o_sigma_5_5_valid,
  input               io_o_sigma_5_5_ready,
  output     [31:0]   io_o_sigma_5_5_payload,
  output              io_o_sigma_5_6_valid,
  input               io_o_sigma_5_6_ready,
  output     [31:0]   io_o_sigma_5_6_payload,
  output              io_o_sigma_5_7_valid,
  input               io_o_sigma_5_7_ready,
  output     [31:0]   io_o_sigma_5_7_payload,
  output              io_o_sigma_6_0_valid,
  input               io_o_sigma_6_0_ready,
  output     [31:0]   io_o_sigma_6_0_payload,
  output              io_o_sigma_6_1_valid,
  input               io_o_sigma_6_1_ready,
  output     [31:0]   io_o_sigma_6_1_payload,
  output              io_o_sigma_6_2_valid,
  input               io_o_sigma_6_2_ready,
  output     [31:0]   io_o_sigma_6_2_payload,
  output              io_o_sigma_6_3_valid,
  input               io_o_sigma_6_3_ready,
  output     [31:0]   io_o_sigma_6_3_payload,
  output              io_o_sigma_6_4_valid,
  input               io_o_sigma_6_4_ready,
  output     [31:0]   io_o_sigma_6_4_payload,
  output              io_o_sigma_6_5_valid,
  input               io_o_sigma_6_5_ready,
  output     [31:0]   io_o_sigma_6_5_payload,
  output              io_o_sigma_6_6_valid,
  input               io_o_sigma_6_6_ready,
  output     [31:0]   io_o_sigma_6_6_payload,
  output              io_o_sigma_6_7_valid,
  input               io_o_sigma_6_7_ready,
  output     [31:0]   io_o_sigma_6_7_payload,
  output              io_o_sigma_7_0_valid,
  input               io_o_sigma_7_0_ready,
  output     [31:0]   io_o_sigma_7_0_payload,
  output              io_o_sigma_7_1_valid,
  input               io_o_sigma_7_1_ready,
  output     [31:0]   io_o_sigma_7_1_payload,
  output              io_o_sigma_7_2_valid,
  input               io_o_sigma_7_2_ready,
  output     [31:0]   io_o_sigma_7_2_payload,
  output              io_o_sigma_7_3_valid,
  input               io_o_sigma_7_3_ready,
  output     [31:0]   io_o_sigma_7_3_payload,
  output              io_o_sigma_7_4_valid,
  input               io_o_sigma_7_4_ready,
  output     [31:0]   io_o_sigma_7_4_payload,
  output              io_o_sigma_7_5_valid,
  input               io_o_sigma_7_5_ready,
  output     [31:0]   io_o_sigma_7_5_payload,
  output              io_o_sigma_7_6_valid,
  input               io_o_sigma_7_6_ready,
  output     [31:0]   io_o_sigma_7_6_payload,
  output              io_o_sigma_7_7_valid,
  input               io_o_sigma_7_7_ready,
  output     [31:0]   io_o_sigma_7_7_payload,
  input               clk,
  input               reset
);
  reg        [31:0]   temp_0_0;
  reg        [31:0]   temp_0_1;
  reg        [31:0]   temp_0_2;
  reg        [31:0]   temp_0_3;
  reg        [31:0]   temp_0_4;
  reg        [31:0]   temp_0_5;
  reg        [31:0]   temp_0_6;
  reg        [31:0]   temp_0_7;
  reg        [31:0]   temp_1_0;
  reg        [31:0]   temp_1_1;
  reg        [31:0]   temp_1_2;
  reg        [31:0]   temp_1_3;
  reg        [31:0]   temp_1_4;
  reg        [31:0]   temp_1_5;
  reg        [31:0]   temp_1_6;
  reg        [31:0]   temp_1_7;
  reg        [31:0]   temp_2_0;
  reg        [31:0]   temp_2_1;
  reg        [31:0]   temp_2_2;
  reg        [31:0]   temp_2_3;
  reg        [31:0]   temp_2_4;
  reg        [31:0]   temp_2_5;
  reg        [31:0]   temp_2_6;
  reg        [31:0]   temp_2_7;
  reg        [31:0]   temp_3_0;
  reg        [31:0]   temp_3_1;
  reg        [31:0]   temp_3_2;
  reg        [31:0]   temp_3_3;
  reg        [31:0]   temp_3_4;
  reg        [31:0]   temp_3_5;
  reg        [31:0]   temp_3_6;
  reg        [31:0]   temp_3_7;
  reg        [31:0]   temp_4_0;
  reg        [31:0]   temp_4_1;
  reg        [31:0]   temp_4_2;
  reg        [31:0]   temp_4_3;
  reg        [31:0]   temp_4_4;
  reg        [31:0]   temp_4_5;
  reg        [31:0]   temp_4_6;
  reg        [31:0]   temp_4_7;
  reg        [31:0]   temp_5_0;
  reg        [31:0]   temp_5_1;
  reg        [31:0]   temp_5_2;
  reg        [31:0]   temp_5_3;
  reg        [31:0]   temp_5_4;
  reg        [31:0]   temp_5_5;
  reg        [31:0]   temp_5_6;
  reg        [31:0]   temp_5_7;
  reg        [31:0]   temp_6_0;
  reg        [31:0]   temp_6_1;
  reg        [31:0]   temp_6_2;
  reg        [31:0]   temp_6_3;
  reg        [31:0]   temp_6_4;
  reg        [31:0]   temp_6_5;
  reg        [31:0]   temp_6_6;
  reg        [31:0]   temp_6_7;
  reg        [31:0]   temp_7_0;
  reg        [31:0]   temp_7_1;
  reg        [31:0]   temp_7_2;
  reg        [31:0]   temp_7_3;
  reg        [31:0]   temp_7_4;
  reg        [31:0]   temp_7_5;
  reg        [31:0]   temp_7_6;
  reg        [31:0]   temp_7_7;
  reg                 indata_ready;
  wire                o_delta_wt_ready;
  wire                o_sigma_ready;
  wire                indata_valid;
  reg                 o_delta_wt_valid;
  reg                 o_sigma_valid;
  wire                w_indata_valid_0;
  wire                w_indata_valid_1;
  wire                w_indata_valid_2;
  wire                w_indata_valid_3;
  wire                w_indata_valid_4;
  wire                w_indata_valid_5;
  wire                w_indata_valid_6;
  wire                w_indata_valid_7;
  wire                w_o_delta_wt_ready_0;
  wire                w_o_delta_wt_ready_1;
  wire                w_o_delta_wt_ready_2;
  wire                w_o_delta_wt_ready_3;
  wire                w_o_delta_wt_ready_4;
  wire                w_o_delta_wt_ready_5;
  wire                w_o_delta_wt_ready_6;
  wire                w_o_delta_wt_ready_7;
  wire                w_o_sigma_ready_0;
  wire                w_o_sigma_ready_1;
  wire                w_o_sigma_ready_2;
  wire                w_o_sigma_ready_3;
  wire                w_o_sigma_ready_4;
  wire                w_o_sigma_ready_5;
  wire                w_o_sigma_ready_6;
  wire                w_o_sigma_ready_7;
  wire                mux_fsm_wantExit;
  reg                 mux_fsm_wantStart;
  wire                mux_fsm_wantKill;
  reg        `mux_fsm_enumDefinition_binary_sequential_type mux_fsm_stateReg;
  reg        `mux_fsm_enumDefinition_binary_sequential_type mux_fsm_stateNext;
  wire                when_conv_mux_l82;
  wire                when_conv_mux_l91;
  wire                when_conv_mux_l102;
  wire                when_conv_mux_l109;
  `ifndef SYNTHESIS
  reg [111:0] mux_fsm_stateReg_string;
  reg [111:0] mux_fsm_stateNext_string;
  `endif


  `ifndef SYNTHESIS
  always @(*) begin
    case(mux_fsm_stateReg)
      `mux_fsm_enumDefinition_binary_sequential_mux_fsm_BOOT : mux_fsm_stateReg_string = "mux_fsm_BOOT  ";
      `mux_fsm_enumDefinition_binary_sequential_mux_fsm_RCV : mux_fsm_stateReg_string = "mux_fsm_RCV   ";
      `mux_fsm_enumDefinition_binary_sequential_mux_fsm_ODELTA : mux_fsm_stateReg_string = "mux_fsm_ODELTA";
      `mux_fsm_enumDefinition_binary_sequential_mux_fsm_OSIGMA : mux_fsm_stateReg_string = "mux_fsm_OSIGMA";
      default : mux_fsm_stateReg_string = "??????????????";
    endcase
  end
  always @(*) begin
    case(mux_fsm_stateNext)
      `mux_fsm_enumDefinition_binary_sequential_mux_fsm_BOOT : mux_fsm_stateNext_string = "mux_fsm_BOOT  ";
      `mux_fsm_enumDefinition_binary_sequential_mux_fsm_RCV : mux_fsm_stateNext_string = "mux_fsm_RCV   ";
      `mux_fsm_enumDefinition_binary_sequential_mux_fsm_ODELTA : mux_fsm_stateNext_string = "mux_fsm_ODELTA";
      `mux_fsm_enumDefinition_binary_sequential_mux_fsm_OSIGMA : mux_fsm_stateNext_string = "mux_fsm_OSIGMA";
      default : mux_fsm_stateNext_string = "??????????????";
    endcase
  end
  `endif

  always @(*) begin
    indata_ready = 1'b0;
    case(mux_fsm_stateReg)
      `mux_fsm_enumDefinition_binary_sequential_mux_fsm_RCV : begin
        indata_ready = 1'b1;
      end
      `mux_fsm_enumDefinition_binary_sequential_mux_fsm_ODELTA : begin
      end
      `mux_fsm_enumDefinition_binary_sequential_mux_fsm_OSIGMA : begin
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    o_delta_wt_valid = 1'b0;
    case(mux_fsm_stateReg)
      `mux_fsm_enumDefinition_binary_sequential_mux_fsm_RCV : begin
      end
      `mux_fsm_enumDefinition_binary_sequential_mux_fsm_ODELTA : begin
        o_delta_wt_valid = 1'b1;
      end
      `mux_fsm_enumDefinition_binary_sequential_mux_fsm_OSIGMA : begin
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    o_sigma_valid = 1'b0;
    case(mux_fsm_stateReg)
      `mux_fsm_enumDefinition_binary_sequential_mux_fsm_RCV : begin
      end
      `mux_fsm_enumDefinition_binary_sequential_mux_fsm_ODELTA : begin
      end
      `mux_fsm_enumDefinition_binary_sequential_mux_fsm_OSIGMA : begin
        o_sigma_valid = 1'b1;
      end
      default : begin
      end
    endcase
  end

  assign io_indata_0_0_ready = indata_ready;
  assign io_indata_0_1_ready = indata_ready;
  assign io_indata_0_2_ready = indata_ready;
  assign io_indata_0_3_ready = indata_ready;
  assign io_indata_0_4_ready = indata_ready;
  assign io_indata_0_5_ready = indata_ready;
  assign io_indata_0_6_ready = indata_ready;
  assign io_indata_0_7_ready = indata_ready;
  assign io_indata_1_0_ready = indata_ready;
  assign io_indata_1_1_ready = indata_ready;
  assign io_indata_1_2_ready = indata_ready;
  assign io_indata_1_3_ready = indata_ready;
  assign io_indata_1_4_ready = indata_ready;
  assign io_indata_1_5_ready = indata_ready;
  assign io_indata_1_6_ready = indata_ready;
  assign io_indata_1_7_ready = indata_ready;
  assign io_indata_2_0_ready = indata_ready;
  assign io_indata_2_1_ready = indata_ready;
  assign io_indata_2_2_ready = indata_ready;
  assign io_indata_2_3_ready = indata_ready;
  assign io_indata_2_4_ready = indata_ready;
  assign io_indata_2_5_ready = indata_ready;
  assign io_indata_2_6_ready = indata_ready;
  assign io_indata_2_7_ready = indata_ready;
  assign io_indata_3_0_ready = indata_ready;
  assign io_indata_3_1_ready = indata_ready;
  assign io_indata_3_2_ready = indata_ready;
  assign io_indata_3_3_ready = indata_ready;
  assign io_indata_3_4_ready = indata_ready;
  assign io_indata_3_5_ready = indata_ready;
  assign io_indata_3_6_ready = indata_ready;
  assign io_indata_3_7_ready = indata_ready;
  assign io_indata_4_0_ready = indata_ready;
  assign io_indata_4_1_ready = indata_ready;
  assign io_indata_4_2_ready = indata_ready;
  assign io_indata_4_3_ready = indata_ready;
  assign io_indata_4_4_ready = indata_ready;
  assign io_indata_4_5_ready = indata_ready;
  assign io_indata_4_6_ready = indata_ready;
  assign io_indata_4_7_ready = indata_ready;
  assign io_indata_5_0_ready = indata_ready;
  assign io_indata_5_1_ready = indata_ready;
  assign io_indata_5_2_ready = indata_ready;
  assign io_indata_5_3_ready = indata_ready;
  assign io_indata_5_4_ready = indata_ready;
  assign io_indata_5_5_ready = indata_ready;
  assign io_indata_5_6_ready = indata_ready;
  assign io_indata_5_7_ready = indata_ready;
  assign io_indata_6_0_ready = indata_ready;
  assign io_indata_6_1_ready = indata_ready;
  assign io_indata_6_2_ready = indata_ready;
  assign io_indata_6_3_ready = indata_ready;
  assign io_indata_6_4_ready = indata_ready;
  assign io_indata_6_5_ready = indata_ready;
  assign io_indata_6_6_ready = indata_ready;
  assign io_indata_6_7_ready = indata_ready;
  assign io_indata_7_0_ready = indata_ready;
  assign io_indata_7_1_ready = indata_ready;
  assign io_indata_7_2_ready = indata_ready;
  assign io_indata_7_3_ready = indata_ready;
  assign io_indata_7_4_ready = indata_ready;
  assign io_indata_7_5_ready = indata_ready;
  assign io_indata_7_6_ready = indata_ready;
  assign io_indata_7_7_ready = indata_ready;
  assign w_indata_valid_0 = (((((((io_indata_0_0_valid && io_indata_0_1_valid) && io_indata_0_2_valid) && io_indata_0_3_valid) && io_indata_0_4_valid) && io_indata_0_5_valid) && io_indata_0_6_valid) && io_indata_0_7_valid);
  assign w_indata_valid_1 = (((((((io_indata_1_0_valid && io_indata_1_1_valid) && io_indata_1_2_valid) && io_indata_1_3_valid) && io_indata_1_4_valid) && io_indata_1_5_valid) && io_indata_1_6_valid) && io_indata_1_7_valid);
  assign w_indata_valid_2 = (((((((io_indata_2_0_valid && io_indata_2_1_valid) && io_indata_2_2_valid) && io_indata_2_3_valid) && io_indata_2_4_valid) && io_indata_2_5_valid) && io_indata_2_6_valid) && io_indata_2_7_valid);
  assign w_indata_valid_3 = (((((((io_indata_3_0_valid && io_indata_3_1_valid) && io_indata_3_2_valid) && io_indata_3_3_valid) && io_indata_3_4_valid) && io_indata_3_5_valid) && io_indata_3_6_valid) && io_indata_3_7_valid);
  assign w_indata_valid_4 = (((((((io_indata_4_0_valid && io_indata_4_1_valid) && io_indata_4_2_valid) && io_indata_4_3_valid) && io_indata_4_4_valid) && io_indata_4_5_valid) && io_indata_4_6_valid) && io_indata_4_7_valid);
  assign w_indata_valid_5 = (((((((io_indata_5_0_valid && io_indata_5_1_valid) && io_indata_5_2_valid) && io_indata_5_3_valid) && io_indata_5_4_valid) && io_indata_5_5_valid) && io_indata_5_6_valid) && io_indata_5_7_valid);
  assign w_indata_valid_6 = (((((((io_indata_6_0_valid && io_indata_6_1_valid) && io_indata_6_2_valid) && io_indata_6_3_valid) && io_indata_6_4_valid) && io_indata_6_5_valid) && io_indata_6_6_valid) && io_indata_6_7_valid);
  assign w_indata_valid_7 = (((((((io_indata_7_0_valid && io_indata_7_1_valid) && io_indata_7_2_valid) && io_indata_7_3_valid) && io_indata_7_4_valid) && io_indata_7_5_valid) && io_indata_7_6_valid) && io_indata_7_7_valid);
  assign indata_valid = (((((((w_indata_valid_0 && w_indata_valid_1) && w_indata_valid_2) && w_indata_valid_3) && w_indata_valid_4) && w_indata_valid_5) && w_indata_valid_6) && w_indata_valid_7);
  assign io_o_delta_wt_0_0_valid = o_delta_wt_valid;
  assign io_o_delta_wt_0_1_valid = o_delta_wt_valid;
  assign io_o_delta_wt_0_2_valid = o_delta_wt_valid;
  assign io_o_delta_wt_0_3_valid = o_delta_wt_valid;
  assign io_o_delta_wt_0_4_valid = o_delta_wt_valid;
  assign io_o_delta_wt_0_5_valid = o_delta_wt_valid;
  assign io_o_delta_wt_0_6_valid = o_delta_wt_valid;
  assign io_o_delta_wt_0_7_valid = o_delta_wt_valid;
  assign io_o_delta_wt_1_0_valid = o_delta_wt_valid;
  assign io_o_delta_wt_1_1_valid = o_delta_wt_valid;
  assign io_o_delta_wt_1_2_valid = o_delta_wt_valid;
  assign io_o_delta_wt_1_3_valid = o_delta_wt_valid;
  assign io_o_delta_wt_1_4_valid = o_delta_wt_valid;
  assign io_o_delta_wt_1_5_valid = o_delta_wt_valid;
  assign io_o_delta_wt_1_6_valid = o_delta_wt_valid;
  assign io_o_delta_wt_1_7_valid = o_delta_wt_valid;
  assign io_o_delta_wt_2_0_valid = o_delta_wt_valid;
  assign io_o_delta_wt_2_1_valid = o_delta_wt_valid;
  assign io_o_delta_wt_2_2_valid = o_delta_wt_valid;
  assign io_o_delta_wt_2_3_valid = o_delta_wt_valid;
  assign io_o_delta_wt_2_4_valid = o_delta_wt_valid;
  assign io_o_delta_wt_2_5_valid = o_delta_wt_valid;
  assign io_o_delta_wt_2_6_valid = o_delta_wt_valid;
  assign io_o_delta_wt_2_7_valid = o_delta_wt_valid;
  assign io_o_delta_wt_3_0_valid = o_delta_wt_valid;
  assign io_o_delta_wt_3_1_valid = o_delta_wt_valid;
  assign io_o_delta_wt_3_2_valid = o_delta_wt_valid;
  assign io_o_delta_wt_3_3_valid = o_delta_wt_valid;
  assign io_o_delta_wt_3_4_valid = o_delta_wt_valid;
  assign io_o_delta_wt_3_5_valid = o_delta_wt_valid;
  assign io_o_delta_wt_3_6_valid = o_delta_wt_valid;
  assign io_o_delta_wt_3_7_valid = o_delta_wt_valid;
  assign io_o_delta_wt_4_0_valid = o_delta_wt_valid;
  assign io_o_delta_wt_4_1_valid = o_delta_wt_valid;
  assign io_o_delta_wt_4_2_valid = o_delta_wt_valid;
  assign io_o_delta_wt_4_3_valid = o_delta_wt_valid;
  assign io_o_delta_wt_4_4_valid = o_delta_wt_valid;
  assign io_o_delta_wt_4_5_valid = o_delta_wt_valid;
  assign io_o_delta_wt_4_6_valid = o_delta_wt_valid;
  assign io_o_delta_wt_4_7_valid = o_delta_wt_valid;
  assign io_o_delta_wt_5_0_valid = o_delta_wt_valid;
  assign io_o_delta_wt_5_1_valid = o_delta_wt_valid;
  assign io_o_delta_wt_5_2_valid = o_delta_wt_valid;
  assign io_o_delta_wt_5_3_valid = o_delta_wt_valid;
  assign io_o_delta_wt_5_4_valid = o_delta_wt_valid;
  assign io_o_delta_wt_5_5_valid = o_delta_wt_valid;
  assign io_o_delta_wt_5_6_valid = o_delta_wt_valid;
  assign io_o_delta_wt_5_7_valid = o_delta_wt_valid;
  assign io_o_delta_wt_6_0_valid = o_delta_wt_valid;
  assign io_o_delta_wt_6_1_valid = o_delta_wt_valid;
  assign io_o_delta_wt_6_2_valid = o_delta_wt_valid;
  assign io_o_delta_wt_6_3_valid = o_delta_wt_valid;
  assign io_o_delta_wt_6_4_valid = o_delta_wt_valid;
  assign io_o_delta_wt_6_5_valid = o_delta_wt_valid;
  assign io_o_delta_wt_6_6_valid = o_delta_wt_valid;
  assign io_o_delta_wt_6_7_valid = o_delta_wt_valid;
  assign io_o_delta_wt_7_0_valid = o_delta_wt_valid;
  assign io_o_delta_wt_7_1_valid = o_delta_wt_valid;
  assign io_o_delta_wt_7_2_valid = o_delta_wt_valid;
  assign io_o_delta_wt_7_3_valid = o_delta_wt_valid;
  assign io_o_delta_wt_7_4_valid = o_delta_wt_valid;
  assign io_o_delta_wt_7_5_valid = o_delta_wt_valid;
  assign io_o_delta_wt_7_6_valid = o_delta_wt_valid;
  assign io_o_delta_wt_7_7_valid = o_delta_wt_valid;
  assign w_o_delta_wt_ready_0 = (((((((io_o_delta_wt_0_0_ready && io_o_delta_wt_0_1_ready) && io_o_delta_wt_0_2_ready) && io_o_delta_wt_0_3_ready) && io_o_delta_wt_0_4_ready) && io_o_delta_wt_0_5_ready) && io_o_delta_wt_0_6_ready) && io_o_delta_wt_0_7_ready);
  assign w_o_delta_wt_ready_1 = (((((((io_o_delta_wt_1_0_ready && io_o_delta_wt_1_1_ready) && io_o_delta_wt_1_2_ready) && io_o_delta_wt_1_3_ready) && io_o_delta_wt_1_4_ready) && io_o_delta_wt_1_5_ready) && io_o_delta_wt_1_6_ready) && io_o_delta_wt_1_7_ready);
  assign w_o_delta_wt_ready_2 = (((((((io_o_delta_wt_2_0_ready && io_o_delta_wt_2_1_ready) && io_o_delta_wt_2_2_ready) && io_o_delta_wt_2_3_ready) && io_o_delta_wt_2_4_ready) && io_o_delta_wt_2_5_ready) && io_o_delta_wt_2_6_ready) && io_o_delta_wt_2_7_ready);
  assign w_o_delta_wt_ready_3 = (((((((io_o_delta_wt_3_0_ready && io_o_delta_wt_3_1_ready) && io_o_delta_wt_3_2_ready) && io_o_delta_wt_3_3_ready) && io_o_delta_wt_3_4_ready) && io_o_delta_wt_3_5_ready) && io_o_delta_wt_3_6_ready) && io_o_delta_wt_3_7_ready);
  assign w_o_delta_wt_ready_4 = (((((((io_o_delta_wt_4_0_ready && io_o_delta_wt_4_1_ready) && io_o_delta_wt_4_2_ready) && io_o_delta_wt_4_3_ready) && io_o_delta_wt_4_4_ready) && io_o_delta_wt_4_5_ready) && io_o_delta_wt_4_6_ready) && io_o_delta_wt_4_7_ready);
  assign w_o_delta_wt_ready_5 = (((((((io_o_delta_wt_5_0_ready && io_o_delta_wt_5_1_ready) && io_o_delta_wt_5_2_ready) && io_o_delta_wt_5_3_ready) && io_o_delta_wt_5_4_ready) && io_o_delta_wt_5_5_ready) && io_o_delta_wt_5_6_ready) && io_o_delta_wt_5_7_ready);
  assign w_o_delta_wt_ready_6 = (((((((io_o_delta_wt_6_0_ready && io_o_delta_wt_6_1_ready) && io_o_delta_wt_6_2_ready) && io_o_delta_wt_6_3_ready) && io_o_delta_wt_6_4_ready) && io_o_delta_wt_6_5_ready) && io_o_delta_wt_6_6_ready) && io_o_delta_wt_6_7_ready);
  assign w_o_delta_wt_ready_7 = (((((((io_o_delta_wt_7_0_ready && io_o_delta_wt_7_1_ready) && io_o_delta_wt_7_2_ready) && io_o_delta_wt_7_3_ready) && io_o_delta_wt_7_4_ready) && io_o_delta_wt_7_5_ready) && io_o_delta_wt_7_6_ready) && io_o_delta_wt_7_7_ready);
  assign o_delta_wt_ready = (((((((w_o_delta_wt_ready_0 && w_o_delta_wt_ready_1) && w_o_delta_wt_ready_2) && w_o_delta_wt_ready_3) && w_o_delta_wt_ready_4) && w_o_delta_wt_ready_5) && w_o_delta_wt_ready_6) && w_o_delta_wt_ready_7);
  assign io_o_sigma_0_0_valid = o_sigma_valid;
  assign io_o_sigma_0_1_valid = o_sigma_valid;
  assign io_o_sigma_0_2_valid = o_sigma_valid;
  assign io_o_sigma_0_3_valid = o_sigma_valid;
  assign io_o_sigma_0_4_valid = o_sigma_valid;
  assign io_o_sigma_0_5_valid = o_sigma_valid;
  assign io_o_sigma_0_6_valid = o_sigma_valid;
  assign io_o_sigma_0_7_valid = o_sigma_valid;
  assign io_o_sigma_1_0_valid = o_sigma_valid;
  assign io_o_sigma_1_1_valid = o_sigma_valid;
  assign io_o_sigma_1_2_valid = o_sigma_valid;
  assign io_o_sigma_1_3_valid = o_sigma_valid;
  assign io_o_sigma_1_4_valid = o_sigma_valid;
  assign io_o_sigma_1_5_valid = o_sigma_valid;
  assign io_o_sigma_1_6_valid = o_sigma_valid;
  assign io_o_sigma_1_7_valid = o_sigma_valid;
  assign io_o_sigma_2_0_valid = o_sigma_valid;
  assign io_o_sigma_2_1_valid = o_sigma_valid;
  assign io_o_sigma_2_2_valid = o_sigma_valid;
  assign io_o_sigma_2_3_valid = o_sigma_valid;
  assign io_o_sigma_2_4_valid = o_sigma_valid;
  assign io_o_sigma_2_5_valid = o_sigma_valid;
  assign io_o_sigma_2_6_valid = o_sigma_valid;
  assign io_o_sigma_2_7_valid = o_sigma_valid;
  assign io_o_sigma_3_0_valid = o_sigma_valid;
  assign io_o_sigma_3_1_valid = o_sigma_valid;
  assign io_o_sigma_3_2_valid = o_sigma_valid;
  assign io_o_sigma_3_3_valid = o_sigma_valid;
  assign io_o_sigma_3_4_valid = o_sigma_valid;
  assign io_o_sigma_3_5_valid = o_sigma_valid;
  assign io_o_sigma_3_6_valid = o_sigma_valid;
  assign io_o_sigma_3_7_valid = o_sigma_valid;
  assign io_o_sigma_4_0_valid = o_sigma_valid;
  assign io_o_sigma_4_1_valid = o_sigma_valid;
  assign io_o_sigma_4_2_valid = o_sigma_valid;
  assign io_o_sigma_4_3_valid = o_sigma_valid;
  assign io_o_sigma_4_4_valid = o_sigma_valid;
  assign io_o_sigma_4_5_valid = o_sigma_valid;
  assign io_o_sigma_4_6_valid = o_sigma_valid;
  assign io_o_sigma_4_7_valid = o_sigma_valid;
  assign io_o_sigma_5_0_valid = o_sigma_valid;
  assign io_o_sigma_5_1_valid = o_sigma_valid;
  assign io_o_sigma_5_2_valid = o_sigma_valid;
  assign io_o_sigma_5_3_valid = o_sigma_valid;
  assign io_o_sigma_5_4_valid = o_sigma_valid;
  assign io_o_sigma_5_5_valid = o_sigma_valid;
  assign io_o_sigma_5_6_valid = o_sigma_valid;
  assign io_o_sigma_5_7_valid = o_sigma_valid;
  assign io_o_sigma_6_0_valid = o_sigma_valid;
  assign io_o_sigma_6_1_valid = o_sigma_valid;
  assign io_o_sigma_6_2_valid = o_sigma_valid;
  assign io_o_sigma_6_3_valid = o_sigma_valid;
  assign io_o_sigma_6_4_valid = o_sigma_valid;
  assign io_o_sigma_6_5_valid = o_sigma_valid;
  assign io_o_sigma_6_6_valid = o_sigma_valid;
  assign io_o_sigma_6_7_valid = o_sigma_valid;
  assign io_o_sigma_7_0_valid = o_sigma_valid;
  assign io_o_sigma_7_1_valid = o_sigma_valid;
  assign io_o_sigma_7_2_valid = o_sigma_valid;
  assign io_o_sigma_7_3_valid = o_sigma_valid;
  assign io_o_sigma_7_4_valid = o_sigma_valid;
  assign io_o_sigma_7_5_valid = o_sigma_valid;
  assign io_o_sigma_7_6_valid = o_sigma_valid;
  assign io_o_sigma_7_7_valid = o_sigma_valid;
  assign w_o_sigma_ready_0 = (((((((io_o_sigma_0_0_ready && io_o_sigma_0_1_ready) && io_o_sigma_0_2_ready) && io_o_sigma_0_3_ready) && io_o_sigma_0_4_ready) && io_o_sigma_0_5_ready) && io_o_sigma_0_6_ready) && io_o_sigma_0_7_ready);
  assign w_o_sigma_ready_1 = (((((((io_o_sigma_1_0_ready && io_o_sigma_1_1_ready) && io_o_sigma_1_2_ready) && io_o_sigma_1_3_ready) && io_o_sigma_1_4_ready) && io_o_sigma_1_5_ready) && io_o_sigma_1_6_ready) && io_o_sigma_1_7_ready);
  assign w_o_sigma_ready_2 = (((((((io_o_sigma_2_0_ready && io_o_sigma_2_1_ready) && io_o_sigma_2_2_ready) && io_o_sigma_2_3_ready) && io_o_sigma_2_4_ready) && io_o_sigma_2_5_ready) && io_o_sigma_2_6_ready) && io_o_sigma_2_7_ready);
  assign w_o_sigma_ready_3 = (((((((io_o_sigma_3_0_ready && io_o_sigma_3_1_ready) && io_o_sigma_3_2_ready) && io_o_sigma_3_3_ready) && io_o_sigma_3_4_ready) && io_o_sigma_3_5_ready) && io_o_sigma_3_6_ready) && io_o_sigma_3_7_ready);
  assign w_o_sigma_ready_4 = (((((((io_o_sigma_4_0_ready && io_o_sigma_4_1_ready) && io_o_sigma_4_2_ready) && io_o_sigma_4_3_ready) && io_o_sigma_4_4_ready) && io_o_sigma_4_5_ready) && io_o_sigma_4_6_ready) && io_o_sigma_4_7_ready);
  assign w_o_sigma_ready_5 = (((((((io_o_sigma_5_0_ready && io_o_sigma_5_1_ready) && io_o_sigma_5_2_ready) && io_o_sigma_5_3_ready) && io_o_sigma_5_4_ready) && io_o_sigma_5_5_ready) && io_o_sigma_5_6_ready) && io_o_sigma_5_7_ready);
  assign w_o_sigma_ready_6 = (((((((io_o_sigma_6_0_ready && io_o_sigma_6_1_ready) && io_o_sigma_6_2_ready) && io_o_sigma_6_3_ready) && io_o_sigma_6_4_ready) && io_o_sigma_6_5_ready) && io_o_sigma_6_6_ready) && io_o_sigma_6_7_ready);
  assign w_o_sigma_ready_7 = (((((((io_o_sigma_7_0_ready && io_o_sigma_7_1_ready) && io_o_sigma_7_2_ready) && io_o_sigma_7_3_ready) && io_o_sigma_7_4_ready) && io_o_sigma_7_5_ready) && io_o_sigma_7_6_ready) && io_o_sigma_7_7_ready);
  assign o_sigma_ready = (((((((w_o_sigma_ready_0 && w_o_sigma_ready_1) && w_o_sigma_ready_2) && w_o_sigma_ready_3) && w_o_sigma_ready_4) && w_o_sigma_ready_5) && w_o_sigma_ready_6) && w_o_sigma_ready_7);
  assign io_o_delta_wt_0_0_payload = temp_0_0;
  assign io_o_sigma_0_0_payload = temp_0_0;
  assign io_o_delta_wt_0_1_payload = temp_0_1;
  assign io_o_sigma_0_1_payload = temp_0_1;
  assign io_o_delta_wt_0_2_payload = temp_0_2;
  assign io_o_sigma_0_2_payload = temp_0_2;
  assign io_o_delta_wt_0_3_payload = temp_0_3;
  assign io_o_sigma_0_3_payload = temp_0_3;
  assign io_o_delta_wt_0_4_payload = temp_0_4;
  assign io_o_sigma_0_4_payload = temp_0_4;
  assign io_o_delta_wt_0_5_payload = temp_0_5;
  assign io_o_sigma_0_5_payload = temp_0_5;
  assign io_o_delta_wt_0_6_payload = temp_0_6;
  assign io_o_sigma_0_6_payload = temp_0_6;
  assign io_o_delta_wt_0_7_payload = temp_0_7;
  assign io_o_sigma_0_7_payload = temp_0_7;
  assign io_o_delta_wt_1_0_payload = temp_1_0;
  assign io_o_sigma_1_0_payload = temp_1_0;
  assign io_o_delta_wt_1_1_payload = temp_1_1;
  assign io_o_sigma_1_1_payload = temp_1_1;
  assign io_o_delta_wt_1_2_payload = temp_1_2;
  assign io_o_sigma_1_2_payload = temp_1_2;
  assign io_o_delta_wt_1_3_payload = temp_1_3;
  assign io_o_sigma_1_3_payload = temp_1_3;
  assign io_o_delta_wt_1_4_payload = temp_1_4;
  assign io_o_sigma_1_4_payload = temp_1_4;
  assign io_o_delta_wt_1_5_payload = temp_1_5;
  assign io_o_sigma_1_5_payload = temp_1_5;
  assign io_o_delta_wt_1_6_payload = temp_1_6;
  assign io_o_sigma_1_6_payload = temp_1_6;
  assign io_o_delta_wt_1_7_payload = temp_1_7;
  assign io_o_sigma_1_7_payload = temp_1_7;
  assign io_o_delta_wt_2_0_payload = temp_2_0;
  assign io_o_sigma_2_0_payload = temp_2_0;
  assign io_o_delta_wt_2_1_payload = temp_2_1;
  assign io_o_sigma_2_1_payload = temp_2_1;
  assign io_o_delta_wt_2_2_payload = temp_2_2;
  assign io_o_sigma_2_2_payload = temp_2_2;
  assign io_o_delta_wt_2_3_payload = temp_2_3;
  assign io_o_sigma_2_3_payload = temp_2_3;
  assign io_o_delta_wt_2_4_payload = temp_2_4;
  assign io_o_sigma_2_4_payload = temp_2_4;
  assign io_o_delta_wt_2_5_payload = temp_2_5;
  assign io_o_sigma_2_5_payload = temp_2_5;
  assign io_o_delta_wt_2_6_payload = temp_2_6;
  assign io_o_sigma_2_6_payload = temp_2_6;
  assign io_o_delta_wt_2_7_payload = temp_2_7;
  assign io_o_sigma_2_7_payload = temp_2_7;
  assign io_o_delta_wt_3_0_payload = temp_3_0;
  assign io_o_sigma_3_0_payload = temp_3_0;
  assign io_o_delta_wt_3_1_payload = temp_3_1;
  assign io_o_sigma_3_1_payload = temp_3_1;
  assign io_o_delta_wt_3_2_payload = temp_3_2;
  assign io_o_sigma_3_2_payload = temp_3_2;
  assign io_o_delta_wt_3_3_payload = temp_3_3;
  assign io_o_sigma_3_3_payload = temp_3_3;
  assign io_o_delta_wt_3_4_payload = temp_3_4;
  assign io_o_sigma_3_4_payload = temp_3_4;
  assign io_o_delta_wt_3_5_payload = temp_3_5;
  assign io_o_sigma_3_5_payload = temp_3_5;
  assign io_o_delta_wt_3_6_payload = temp_3_6;
  assign io_o_sigma_3_6_payload = temp_3_6;
  assign io_o_delta_wt_3_7_payload = temp_3_7;
  assign io_o_sigma_3_7_payload = temp_3_7;
  assign io_o_delta_wt_4_0_payload = temp_4_0;
  assign io_o_sigma_4_0_payload = temp_4_0;
  assign io_o_delta_wt_4_1_payload = temp_4_1;
  assign io_o_sigma_4_1_payload = temp_4_1;
  assign io_o_delta_wt_4_2_payload = temp_4_2;
  assign io_o_sigma_4_2_payload = temp_4_2;
  assign io_o_delta_wt_4_3_payload = temp_4_3;
  assign io_o_sigma_4_3_payload = temp_4_3;
  assign io_o_delta_wt_4_4_payload = temp_4_4;
  assign io_o_sigma_4_4_payload = temp_4_4;
  assign io_o_delta_wt_4_5_payload = temp_4_5;
  assign io_o_sigma_4_5_payload = temp_4_5;
  assign io_o_delta_wt_4_6_payload = temp_4_6;
  assign io_o_sigma_4_6_payload = temp_4_6;
  assign io_o_delta_wt_4_7_payload = temp_4_7;
  assign io_o_sigma_4_7_payload = temp_4_7;
  assign io_o_delta_wt_5_0_payload = temp_5_0;
  assign io_o_sigma_5_0_payload = temp_5_0;
  assign io_o_delta_wt_5_1_payload = temp_5_1;
  assign io_o_sigma_5_1_payload = temp_5_1;
  assign io_o_delta_wt_5_2_payload = temp_5_2;
  assign io_o_sigma_5_2_payload = temp_5_2;
  assign io_o_delta_wt_5_3_payload = temp_5_3;
  assign io_o_sigma_5_3_payload = temp_5_3;
  assign io_o_delta_wt_5_4_payload = temp_5_4;
  assign io_o_sigma_5_4_payload = temp_5_4;
  assign io_o_delta_wt_5_5_payload = temp_5_5;
  assign io_o_sigma_5_5_payload = temp_5_5;
  assign io_o_delta_wt_5_6_payload = temp_5_6;
  assign io_o_sigma_5_6_payload = temp_5_6;
  assign io_o_delta_wt_5_7_payload = temp_5_7;
  assign io_o_sigma_5_7_payload = temp_5_7;
  assign io_o_delta_wt_6_0_payload = temp_6_0;
  assign io_o_sigma_6_0_payload = temp_6_0;
  assign io_o_delta_wt_6_1_payload = temp_6_1;
  assign io_o_sigma_6_1_payload = temp_6_1;
  assign io_o_delta_wt_6_2_payload = temp_6_2;
  assign io_o_sigma_6_2_payload = temp_6_2;
  assign io_o_delta_wt_6_3_payload = temp_6_3;
  assign io_o_sigma_6_3_payload = temp_6_3;
  assign io_o_delta_wt_6_4_payload = temp_6_4;
  assign io_o_sigma_6_4_payload = temp_6_4;
  assign io_o_delta_wt_6_5_payload = temp_6_5;
  assign io_o_sigma_6_5_payload = temp_6_5;
  assign io_o_delta_wt_6_6_payload = temp_6_6;
  assign io_o_sigma_6_6_payload = temp_6_6;
  assign io_o_delta_wt_6_7_payload = temp_6_7;
  assign io_o_sigma_6_7_payload = temp_6_7;
  assign io_o_delta_wt_7_0_payload = temp_7_0;
  assign io_o_sigma_7_0_payload = temp_7_0;
  assign io_o_delta_wt_7_1_payload = temp_7_1;
  assign io_o_sigma_7_1_payload = temp_7_1;
  assign io_o_delta_wt_7_2_payload = temp_7_2;
  assign io_o_sigma_7_2_payload = temp_7_2;
  assign io_o_delta_wt_7_3_payload = temp_7_3;
  assign io_o_sigma_7_3_payload = temp_7_3;
  assign io_o_delta_wt_7_4_payload = temp_7_4;
  assign io_o_sigma_7_4_payload = temp_7_4;
  assign io_o_delta_wt_7_5_payload = temp_7_5;
  assign io_o_sigma_7_5_payload = temp_7_5;
  assign io_o_delta_wt_7_6_payload = temp_7_6;
  assign io_o_sigma_7_6_payload = temp_7_6;
  assign io_o_delta_wt_7_7_payload = temp_7_7;
  assign io_o_sigma_7_7_payload = temp_7_7;
  assign mux_fsm_wantExit = 1'b0;
  always @(*) begin
    mux_fsm_wantStart = 1'b0;
    case(mux_fsm_stateReg)
      `mux_fsm_enumDefinition_binary_sequential_mux_fsm_RCV : begin
      end
      `mux_fsm_enumDefinition_binary_sequential_mux_fsm_ODELTA : begin
      end
      `mux_fsm_enumDefinition_binary_sequential_mux_fsm_OSIGMA : begin
      end
      default : begin
        mux_fsm_wantStart = 1'b1;
      end
    endcase
  end

  assign mux_fsm_wantKill = 1'b0;
  always @(*) begin
    mux_fsm_stateNext = mux_fsm_stateReg;
    case(mux_fsm_stateReg)
      `mux_fsm_enumDefinition_binary_sequential_mux_fsm_RCV : begin
        if(when_conv_mux_l82) begin
          if(when_conv_mux_l91) begin
            mux_fsm_stateNext = `mux_fsm_enumDefinition_binary_sequential_mux_fsm_ODELTA;
          end else begin
            mux_fsm_stateNext = `mux_fsm_enumDefinition_binary_sequential_mux_fsm_OSIGMA;
          end
        end
      end
      `mux_fsm_enumDefinition_binary_sequential_mux_fsm_ODELTA : begin
        if(when_conv_mux_l102) begin
          mux_fsm_stateNext = `mux_fsm_enumDefinition_binary_sequential_mux_fsm_RCV;
        end
      end
      `mux_fsm_enumDefinition_binary_sequential_mux_fsm_OSIGMA : begin
        if(when_conv_mux_l109) begin
          mux_fsm_stateNext = `mux_fsm_enumDefinition_binary_sequential_mux_fsm_RCV;
        end
      end
      default : begin
      end
    endcase
    if(mux_fsm_wantStart) begin
      mux_fsm_stateNext = `mux_fsm_enumDefinition_binary_sequential_mux_fsm_RCV;
    end
    if(mux_fsm_wantKill) begin
      mux_fsm_stateNext = `mux_fsm_enumDefinition_binary_sequential_mux_fsm_BOOT;
    end
  end

  assign when_conv_mux_l82 = (indata_valid && indata_ready);
  assign when_conv_mux_l91 = (io_is_delta_wt == 1'b1);
  assign when_conv_mux_l102 = (o_delta_wt_valid && o_delta_wt_ready);
  assign when_conv_mux_l109 = (o_sigma_valid && o_sigma_ready);
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      temp_0_0 <= 32'h0;
      temp_0_1 <= 32'h0;
      temp_0_2 <= 32'h0;
      temp_0_3 <= 32'h0;
      temp_0_4 <= 32'h0;
      temp_0_5 <= 32'h0;
      temp_0_6 <= 32'h0;
      temp_0_7 <= 32'h0;
      temp_1_0 <= 32'h0;
      temp_1_1 <= 32'h0;
      temp_1_2 <= 32'h0;
      temp_1_3 <= 32'h0;
      temp_1_4 <= 32'h0;
      temp_1_5 <= 32'h0;
      temp_1_6 <= 32'h0;
      temp_1_7 <= 32'h0;
      temp_2_0 <= 32'h0;
      temp_2_1 <= 32'h0;
      temp_2_2 <= 32'h0;
      temp_2_3 <= 32'h0;
      temp_2_4 <= 32'h0;
      temp_2_5 <= 32'h0;
      temp_2_6 <= 32'h0;
      temp_2_7 <= 32'h0;
      temp_3_0 <= 32'h0;
      temp_3_1 <= 32'h0;
      temp_3_2 <= 32'h0;
      temp_3_3 <= 32'h0;
      temp_3_4 <= 32'h0;
      temp_3_5 <= 32'h0;
      temp_3_6 <= 32'h0;
      temp_3_7 <= 32'h0;
      temp_4_0 <= 32'h0;
      temp_4_1 <= 32'h0;
      temp_4_2 <= 32'h0;
      temp_4_3 <= 32'h0;
      temp_4_4 <= 32'h0;
      temp_4_5 <= 32'h0;
      temp_4_6 <= 32'h0;
      temp_4_7 <= 32'h0;
      temp_5_0 <= 32'h0;
      temp_5_1 <= 32'h0;
      temp_5_2 <= 32'h0;
      temp_5_3 <= 32'h0;
      temp_5_4 <= 32'h0;
      temp_5_5 <= 32'h0;
      temp_5_6 <= 32'h0;
      temp_5_7 <= 32'h0;
      temp_6_0 <= 32'h0;
      temp_6_1 <= 32'h0;
      temp_6_2 <= 32'h0;
      temp_6_3 <= 32'h0;
      temp_6_4 <= 32'h0;
      temp_6_5 <= 32'h0;
      temp_6_6 <= 32'h0;
      temp_6_7 <= 32'h0;
      temp_7_0 <= 32'h0;
      temp_7_1 <= 32'h0;
      temp_7_2 <= 32'h0;
      temp_7_3 <= 32'h0;
      temp_7_4 <= 32'h0;
      temp_7_5 <= 32'h0;
      temp_7_6 <= 32'h0;
      temp_7_7 <= 32'h0;
      mux_fsm_stateReg <= `mux_fsm_enumDefinition_binary_sequential_mux_fsm_BOOT;
    end else begin
      mux_fsm_stateReg <= mux_fsm_stateNext;
      case(mux_fsm_stateReg)
        `mux_fsm_enumDefinition_binary_sequential_mux_fsm_RCV : begin
          if(when_conv_mux_l82) begin
            temp_0_0 <= io_indata_0_0_payload;
            temp_0_1 <= io_indata_0_1_payload;
            temp_0_2 <= io_indata_0_2_payload;
            temp_0_3 <= io_indata_0_3_payload;
            temp_0_4 <= io_indata_0_4_payload;
            temp_0_5 <= io_indata_0_5_payload;
            temp_0_6 <= io_indata_0_6_payload;
            temp_0_7 <= io_indata_0_7_payload;
            temp_1_0 <= io_indata_1_0_payload;
            temp_1_1 <= io_indata_1_1_payload;
            temp_1_2 <= io_indata_1_2_payload;
            temp_1_3 <= io_indata_1_3_payload;
            temp_1_4 <= io_indata_1_4_payload;
            temp_1_5 <= io_indata_1_5_payload;
            temp_1_6 <= io_indata_1_6_payload;
            temp_1_7 <= io_indata_1_7_payload;
            temp_2_0 <= io_indata_2_0_payload;
            temp_2_1 <= io_indata_2_1_payload;
            temp_2_2 <= io_indata_2_2_payload;
            temp_2_3 <= io_indata_2_3_payload;
            temp_2_4 <= io_indata_2_4_payload;
            temp_2_5 <= io_indata_2_5_payload;
            temp_2_6 <= io_indata_2_6_payload;
            temp_2_7 <= io_indata_2_7_payload;
            temp_3_0 <= io_indata_3_0_payload;
            temp_3_1 <= io_indata_3_1_payload;
            temp_3_2 <= io_indata_3_2_payload;
            temp_3_3 <= io_indata_3_3_payload;
            temp_3_4 <= io_indata_3_4_payload;
            temp_3_5 <= io_indata_3_5_payload;
            temp_3_6 <= io_indata_3_6_payload;
            temp_3_7 <= io_indata_3_7_payload;
            temp_4_0 <= io_indata_4_0_payload;
            temp_4_1 <= io_indata_4_1_payload;
            temp_4_2 <= io_indata_4_2_payload;
            temp_4_3 <= io_indata_4_3_payload;
            temp_4_4 <= io_indata_4_4_payload;
            temp_4_5 <= io_indata_4_5_payload;
            temp_4_6 <= io_indata_4_6_payload;
            temp_4_7 <= io_indata_4_7_payload;
            temp_5_0 <= io_indata_5_0_payload;
            temp_5_1 <= io_indata_5_1_payload;
            temp_5_2 <= io_indata_5_2_payload;
            temp_5_3 <= io_indata_5_3_payload;
            temp_5_4 <= io_indata_5_4_payload;
            temp_5_5 <= io_indata_5_5_payload;
            temp_5_6 <= io_indata_5_6_payload;
            temp_5_7 <= io_indata_5_7_payload;
            temp_6_0 <= io_indata_6_0_payload;
            temp_6_1 <= io_indata_6_1_payload;
            temp_6_2 <= io_indata_6_2_payload;
            temp_6_3 <= io_indata_6_3_payload;
            temp_6_4 <= io_indata_6_4_payload;
            temp_6_5 <= io_indata_6_5_payload;
            temp_6_6 <= io_indata_6_6_payload;
            temp_6_7 <= io_indata_6_7_payload;
            temp_7_0 <= io_indata_7_0_payload;
            temp_7_1 <= io_indata_7_1_payload;
            temp_7_2 <= io_indata_7_2_payload;
            temp_7_3 <= io_indata_7_3_payload;
            temp_7_4 <= io_indata_7_4_payload;
            temp_7_5 <= io_indata_7_5_payload;
            temp_7_6 <= io_indata_7_6_payload;
            temp_7_7 <= io_indata_7_7_payload;
          end
        end
        `mux_fsm_enumDefinition_binary_sequential_mux_fsm_ODELTA : begin
        end
        `mux_fsm_enumDefinition_binary_sequential_mux_fsm_OSIGMA : begin
        end
        default : begin
        end
      endcase
    end
  end


endmodule

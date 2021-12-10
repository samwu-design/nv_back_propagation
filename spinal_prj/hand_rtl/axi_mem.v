module axi_mem(
  input              axis_r_ar_valid,
  output             axis_r_ar_ready,
  input     [31:0]   axis_r_ar_payload_addr,
  input     [5:0]    axis_r_ar_payload_id,
  input     [7:0]    axis_r_ar_payload_len,
  input     [2:0]    axis_r_ar_payload_size,
  input     [1:0]    axis_r_ar_payload_burst,
  output             axis_r_r_valid,
  input              axis_r_r_ready,
  output      [255:0]axis_r_r_payload_data,
  output      [5:0]  axis_r_r_payload_id,
  output      [1:0]  axis_r_r_payload_resp,
  output             axis_r_r_payload_last,
  input              axis_w_aw_valid,
  output             axis_w_aw_ready,
  input     [31:0]   axis_w_aw_payload_addr,
  input     [5:0]    axis_w_aw_payload_id,
  input     [7:0]    axis_w_aw_payload_len,
  input     [2:0]    axis_w_aw_payload_size,
  input     [1:0]    axis_w_aw_payload_burst,
  input              axis_w_w_valid,
  output             axis_w_w_ready,
  input     [255:0]  axis_w_w_payload_data,
  input     [31:0]   axis_w_w_payload_strb,
  input              axis_w_w_payload_last,
  output             axis_w_b_valid,
  input              axis_w_b_ready,
  output      [5:0]  axis_w_b_payload_id,
  output      [1:0]  axis_w_b_payload_resp,

);







endmodule

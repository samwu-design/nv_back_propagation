// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Oct 10 10:48:03 2021
// Host        : LAPTOP-EEFVGB2U running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/VM_share/NVDLA_BP/spinal_prj/vivado/nvdla_bp/nvdla_bp.srcs/sources_1/ip/blk_ram256_1024_bb/blk_ram256_1024_bb_stub.v
// Design      : blk_ram256_1024_bb
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvu440-flga2892-1-c
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *)
module blk_ram256_1024_bb(clka, ena, addra, douta, clkb, enb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,addra[9:0],douta[255:0],clkb,enb,addrb[9:0],doutb[255:0]" */;
  input clka;
  input ena;
  input [9:0]addra;
  output [255:0]douta;
  input clkb;
  input enb;
  input [9:0]addrb;
  output [255:0]doutb;
endmodule

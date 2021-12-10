//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Tue Dec  7 16:02:22 2021
//Host        : LAPTOP-EEFVGB2U running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (APB_M_paddr,
    APB_M_penable,
    APB_M_prdata,
    APB_M_pready,
    APB_M_psel,
    APB_M_pslverr,
    APB_M_pwdata,
    APB_M_pwrite,
    CLK_IN1_D_clk_n,
    CLK_IN1_D_clk_p,
    resetn);
  output [31:0]APB_M_paddr;
  output APB_M_penable;
  input [31:0]APB_M_prdata;
  input [0:0]APB_M_pready;
  output [0:0]APB_M_psel;
  input [0:0]APB_M_pslverr;
  output [31:0]APB_M_pwdata;
  output APB_M_pwrite;
  input CLK_IN1_D_clk_n;
  input CLK_IN1_D_clk_p;
  input resetn;

  wire [31:0]APB_M_paddr;
  wire APB_M_penable;
  wire [31:0]APB_M_prdata;
  wire [0:0]APB_M_pready;
  wire [0:0]APB_M_psel;
  wire [0:0]APB_M_pslverr;
  wire [31:0]APB_M_pwdata;
  wire APB_M_pwrite;
  wire CLK_IN1_D_clk_n;
  wire CLK_IN1_D_clk_p;
  wire resetn;

  design_1 design_1_i
       (.APB_M_paddr(APB_M_paddr),
        .APB_M_penable(APB_M_penable),
        .APB_M_prdata(APB_M_prdata),
        .APB_M_pready(APB_M_pready),
        .APB_M_psel(APB_M_psel),
        .APB_M_pslverr(APB_M_pslverr),
        .APB_M_pwdata(APB_M_pwdata),
        .APB_M_pwrite(APB_M_pwrite),
        .CLK_IN1_D_clk_n(CLK_IN1_D_clk_n),
        .CLK_IN1_D_clk_p(CLK_IN1_D_clk_p),
        .resetn(resetn));
endmodule

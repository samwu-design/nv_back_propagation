`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/05 18:57:50
// Design Name: 
// Module Name: tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb();
    
 reg  clk;
 reg  resetn;
 
 initial begin
    clk = 0;
    resetn = 0;
   
   #100 resetn = 1;
 end   
 
 
 always@(*) #5 clk <= !clk;
 
 
 wire     [31:0]   io_apb_PADDR      ;
 wire     [0:0]    io_apb_PSEL       ;
 wire              io_apb_PENABLE    ;
 wire              io_apb_PREADY     ;
 wire              io_apb_PWRITE     ; 
 wire     [31:0]   io_apb_PWDATA     ; 
 wire     [31:0]   io_apb_PRDATA     ;   
 wire              io_apb_PSLVERROR  ;   
 
   // 0.2=3E4CCCCD  0.4=3ECCCCCD  0.04=3d23d70a  0.32=3ea3d70b    0.08=3da3d70b  0.6=3F19999A  1.6=3FCCCCCD    
    
bp_fpga_top dut(
 .io_axim_r_ar_valid           () ,
 .io_axim_r_ar_ready           (1) ,
 .io_axim_r_ar_payload_addr    () ,
 .io_axim_r_ar_payload_id      () ,
 .io_axim_r_ar_payload_len     () ,
 .io_axim_r_ar_payload_size    () ,
 .io_axim_r_ar_payload_burst   () ,
 .io_axim_r_r_valid            (1'b1) ,
 .io_axim_r_r_ready            () ,
 .io_axim_r_r_payload_data     ({32'h3E4CCCCD,32'h3E4CCCCD,32'h3E4CCCCD,32'h3E4CCCCD,32'h3E4CCCCD,32'h3E4CCCCD,32'h3E4CCCCD,32'h3E4CCCCD}) ,
 .io_axim_r_r_payload_id       (6'd0) ,
 .io_axim_r_r_payload_resp     (2'd0) ,
 .io_axim_r_r_payload_last     (1'b1) ,
 .io_axim_w_aw_valid           () ,
 .io_axim_w_aw_ready           (1'b1) ,
 .io_axim_w_aw_payload_addr    () ,
 .io_axim_w_aw_payload_id      () ,
 .io_axim_w_aw_payload_len     () ,
 .io_axim_w_aw_payload_size    () ,
 .io_axim_w_aw_payload_burst   () ,
 .io_axim_w_w_valid            () ,
 .io_axim_w_w_ready            (1'b1) ,
 .io_axim_w_w_payload_data     () ,
 .io_axim_w_w_payload_strb     () ,
 .io_axim_w_w_payload_last     () ,
 .io_axim_w_b_valid            (1'b1) ,
 .io_axim_w_b_ready            () ,
 .io_axim_w_b_payload_id       (6'd0) ,
 .io_axim_w_b_payload_resp     (2'b00) ,
 .io_apb_PADDR                 (io_apb_PADDR     ) ,
 .io_apb_PSEL                  (io_apb_PSEL      ) ,
 .io_apb_PENABLE               (io_apb_PENABLE   ) ,
 .io_apb_PREADY                (io_apb_PREADY    ) ,
 .io_apb_PWRITE                (io_apb_PWRITE    ) ,
 .io_apb_PWDATA                (io_apb_PWDATA    ) ,
 .io_apb_PRDATA                (io_apb_PRDATA    ) ,
 .io_apb_PSLVERROR             (io_apb_PSLVERROR ) ,
 .io_interruper                () ,
 .clk                          (clk) ,
 .reset                        (!resetn) 
);  
    
    
 design_1_wrapper  bd
  (  .APB_M_paddr      (io_apb_PADDR) ,   
     .APB_M_penable    (io_apb_PENABLE) ,   
     .APB_M_prdata     (io_apb_PRDATA) ,   
     .APB_M_pready     (io_apb_PREADY) ,   
     .APB_M_psel       (io_apb_PSEL) ,   
     .APB_M_pslverr    (io_apb_PSLVERROR) ,   
     .APB_M_pwdata     (io_apb_PWDATA) ,   
     .APB_M_pwrite     (io_apb_PWRITE) ,   
     .CLK_IN1_D_clk_n  (!clk) ,
     .CLK_IN1_D_clk_p  (clk)
     );
     
     
     
     
     
 endmodule    
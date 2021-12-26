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
   forever begin
        #10 clk = ~clk;
    end
 end   
 
 
 //always@(*) #5 clk <= #0 ~clk;
 
 
 wire     [31:0]   io_apb_PADDR      ;
 wire     [0:0]    io_apb_PSEL       ;
 wire              io_apb_PENABLE    ;
 wire              io_apb_PREADY     ;
 wire              io_apb_PWRITE     ; 
 wire     [31:0]   io_apb_PWDATA     ; 
 wire     [31:0]   io_apb_PRDATA     ;   
 wire              io_apb_PSLVERROR  ;   
 
   // 0.1= 3DCCCCCD  0.01=3C23D70A  0.2=3E4CCCCD 0.3=3E99999A 0.4=3ECCCCCD  0.04=3d23d70a  0.32=3ea3d70b    0.08=3da3d70b  0.6=3F19999A  1.6=3FCCCCCD    
   // 0.5=3F000000   0.7= 3F333333  0.8=3F4CCCCD 0.9=3F666666
  
wire  	         axi_s_aw_awvalid; /* data valid */
wire  	         axi_s_aw_awready; /* data return handshake */
wire  [5:0] 	axi_s_aw_awid;
wire  [7:0] 	axi_s_aw_awlen;
wire  [31:0] 	axi_s_aw_awaddr;
wire  	         axi_s_w_wvalid; /* data valid */
wire  	         axi_s_w_wready; /* data return handshake */
wire  [255:0] axi_s_w_wdata;
wire  [31:0] 	axi_s_w_wstrb;
wire  	         axi_s_w_wlast;
wire  	         axi_s_b_bvalid; /* data valid */
wire  	         axi_s_b_bready; /* data return handshake */
wire  [5:0] 	axi_s_b_bid;
wire  	         axi_s_ar_arvalid; /* data valid */
wire  	         axi_s_ar_arready; /* data return handshake */
wire  [5:0] 	axi_s_ar_arid;
wire  [7:0] 	axi_s_ar_arlen;
wire  [31:0] 	axi_s_ar_araddr;
wire  	         axi_s_r_rvalid; /* data valid */
wire  	         axi_s_r_rready; /* data return handshake */
wire  [5:0] 	axi_s_r_rid;
wire  	         axi_s_r_rlast;
wire  [255:0] axi_s_r_rdata;


 
 
 
 
 
    
bp_fpga_top dut(
 .axim_r_ar_valid           (axi_s_ar_arvalid) ,                                  
 .axim_r_ar_ready           (axi_s_ar_arready) ,                              
 .axim_r_ar_payload_addr    (axi_s_ar_araddr) ,                                 
 .axim_r_ar_payload_id      (axi_s_ar_arid) ,                                
 .axim_r_ar_payload_len     (axi_s_ar_arlen) ,                               
 .axim_r_ar_payload_size    () ,                                
 .axim_r_ar_payload_burst   () ,                                
 .axim_r_r_valid            (axi_s_r_rvalid) ,                                 
 .axim_r_r_ready            (axi_s_r_rready) ,                                 
 .axim_r_r_payload_data     (axi_s_r_rdata) ,                                 
 .axim_r_r_payload_id       (6'd0) ,                                
 .axim_r_r_payload_resp     (2'd0) ,                                
 .axim_r_r_payload_last     (axi_s_r_rlast) ,                                   
 .axim_w_aw_valid           (axi_s_aw_awvalid) ,                              
 .axim_w_aw_ready           (axi_s_aw_awready) ,                              
 .axim_w_aw_payload_addr    (axi_s_aw_awaddr) ,                                 
 .axim_w_aw_payload_id      (axi_s_aw_awid) ,                                
 .axim_w_aw_payload_len     (axi_s_aw_awlen) ,                               
 .axim_w_aw_payload_size    () ,                                
 .axim_w_aw_payload_burst   () ,                                
 .axim_w_w_valid            (axi_s_w_wvalid) ,                                   
 .axim_w_w_ready            (axi_s_w_wready) ,                                 
 .axim_w_w_payload_data     (axi_s_w_wdata) ,                                 
 .axim_w_w_payload_strb     (axi_s_w_wstrb) ,
 .axim_w_w_payload_last     (axi_s_w_wlast) ,
 .axim_w_b_valid            (axi_s_b_bvalid) ,
 .axim_w_b_ready            (axi_s_b_bready) ,
 .axim_w_b_payload_id       (6'd0) ,
 .axim_w_b_payload_resp     (2'd0) ,
 .apb_PADDR                 (io_apb_PADDR     ) ,
 .apb_PSEL                  (io_apb_PSEL      ) ,
 .apb_PENABLE               (io_apb_PENABLE   ) ,
 .apb_PREADY                (io_apb_PREADY    ) ,
 .apb_PWRITE                (io_apb_PWRITE    ) ,
 .apb_PWDATA                (io_apb_PWDATA    ) ,
 .apb_PRDATA                (io_apb_PRDATA    ) ,
 .apb_PSLVERROR             (io_apb_PSLVERROR ) ,
 .interrupter               (io_interrupter) ,
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
     .CLK_IN1_D_clk_n  (~clk) ,
     .CLK_IN1_D_clk_p  (clk)
     );
     
     
mem_sim_model mem_inst(
.clk              (clk) ,
.rst_n            (resetn) ,  
.interrupter   (io_interrupter),                
.axi_s_aw_awvalid (axi_s_aw_awvalid ) ,
.axi_s_aw_awready (axi_s_aw_awready ) ,
.axi_s_aw_awid    (axi_s_aw_awid    ) ,
.axi_s_aw_awlen   (axi_s_aw_awlen   ) ,
.axi_s_aw_awaddr  (axi_s_aw_awaddr  ) ,
.axi_s_w_wvalid   (axi_s_w_wvalid   ) ,
.axi_s_w_wready   (axi_s_w_wready   ) ,
.axi_s_w_wdata    (axi_s_w_wdata    ) ,
.axi_s_w_wstrb    (axi_s_w_wstrb    ) ,
.axi_s_w_wlast    (axi_s_w_wlast    ) ,
.axi_s_b_bvalid   (axi_s_b_bvalid   ) ,
.axi_s_b_bready   (axi_s_b_bready   ) ,
.axi_s_b_bid      (axi_s_b_bid      ) ,
.axi_s_ar_arvalid (axi_s_ar_arvalid ) ,
.axi_s_ar_arready (axi_s_ar_arready ) ,
.axi_s_ar_arid    (axi_s_ar_arid    ) ,
.axi_s_ar_arlen   (axi_s_ar_arlen   ) ,
.axi_s_ar_araddr  (axi_s_ar_araddr  ) ,
.axi_s_r_rvalid   (axi_s_r_rvalid   ) ,
.axi_s_r_rready   (axi_s_r_rready   ) ,
.axi_s_r_rid      (axi_s_r_rid      ) ,
.axi_s_r_rlast    (axi_s_r_rlast    ) ,
.axi_s_r_rdata    (axi_s_r_rdata    ) 
);
     
     
     
 endmodule    
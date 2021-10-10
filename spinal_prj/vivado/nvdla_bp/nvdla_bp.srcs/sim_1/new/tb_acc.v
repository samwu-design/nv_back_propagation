`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/07 15:48:34
// Design Name: 
// Module Name: tb_acc
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


module tb_acc();
    
reg  clk ;
reg  reset;

reg [31:0] data;

initial begin
   clk = 0;
   reset = 1;
   data = 32'h3E4CCCCD; // 0.2=3E4CCCCD  0.4=3ECCCCCD  0.6=3F19999A  1.6=3FCCCCCD
#100 reset = 0;

end    
    
 always@(*) #5  clk <= ~clk;
    
  
    
    
    
    
    
    
    
    
    
    
fp_acc dut(
  .ina_valid        (1),
  .ina_ready        (),
  .ina_payload      (data),
  .out_valid        (),
  .out_ready        (1),
  .out_payload      (),
  .par_acc_cnt      (8),
  .acc_enable       (1),
  .clk              (clk),
  .reset            (reset)
);
    
    
endmodule

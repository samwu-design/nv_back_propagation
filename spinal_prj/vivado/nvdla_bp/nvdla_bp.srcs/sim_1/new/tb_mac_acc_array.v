`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/09 22:03:38
// Design Name: 
// Module Name: tb_mac_acc_array
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


module tb_mac_acc_array(

    );
    
 
    
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
    
    
    
    
    
    
    
    
    
    
    
endmodule

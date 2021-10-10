module mac(

	input  clk,
	input  a_ready,
	input  a_valid,
	input [ELEWIDTH * ATOMSIZE - 1 : 0] a_data,
	input  b_ready,
	input  b_valid,
	input [ELEWIDTH * ATOMSIZE - 1 : 0] b_data,
	output  o_ready,
	output  o_valid,
	output [ELEWIDTH * ATOMSIZE - 1 : 0] o_data,

);

genvar i;
generate 
	for(i=0;i<ATOMSIZE;i++)begin
		
	end
	
	
endgenerate





endmodule

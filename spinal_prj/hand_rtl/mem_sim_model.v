`timescale 1ns / 1ps
module mem_sim_model(
clk,
rst_n,
interrupter	  ,
axi_s_aw_awvalid  ,
axi_s_aw_awready  ,
axi_s_aw_awid     ,
axi_s_aw_awlen    ,
axi_s_aw_awaddr   ,
axi_s_w_wvalid    ,
axi_s_w_wready    ,
axi_s_w_wdata     ,
axi_s_w_wstrb     ,
axi_s_w_wlast     ,
axi_s_b_bvalid    ,
axi_s_b_bready    ,
axi_s_b_bid       ,
axi_s_ar_arvalid  ,
axi_s_ar_arready  ,
axi_s_ar_arid     ,
axi_s_ar_arlen    ,
axi_s_ar_araddr   ,
axi_s_r_rvalid    ,
axi_s_r_rready    ,
axi_s_r_rid       ,
axi_s_r_rlast     ,
axi_s_r_rdata     

);

input   clk;
input   rst_n;

input           interrupter;
input   	axi_s_aw_awvalid; /* data valid */
output  	axi_s_aw_awready; /* data return handshake */
input   [5:0] 	axi_s_aw_awid;
input   [7:0] 	axi_s_aw_awlen;
input   [31:0] 	axi_s_aw_awaddr;
input   	axi_s_w_wvalid; /* data valid */
output  	axi_s_w_wready; /* data return handshake */
input   [255:0] axi_s_w_wdata;
input   [31:0] 	axi_s_w_wstrb;
input   	axi_s_w_wlast;
output  	axi_s_b_bvalid; /* data valid */
input   	axi_s_b_bready; /* data return handshake */
output  [5:0] 	axi_s_b_bid;
input   	axi_s_ar_arvalid; /* data valid */
output  	axi_s_ar_arready; /* data return handshake */
input   [5:0] 	axi_s_ar_arid;
input   [7:0] 	axi_s_ar_arlen;
input   [31:0] 	axi_s_ar_araddr;
output  	axi_s_r_rvalid; /* data valid */
input   	axi_s_r_rready; /* data return handshake */
output  [5:0] 	axi_s_r_rid;
output  	axi_s_r_rlast;
output  [255:0] axi_s_r_rdata;


// image file .  feature file . weight file
//integer img_f,i_feature_f,i_weight_f,conv_o_feature_f,pdp_o_feature_f,o_weight_f;
integer feature,weight,delta_wt,sigma;
initial begin
	feature = $fopen("D:/VM_share/NVDLA_BP/spinal_prj/hand_rtl/feature.mem","r"); // read 
	weight = $fopen("D:/VM_share/NVDLA_BP/spinal_prj/hand_rtl/weight.mem","r");  
	
	delta_wt = $fopen("D:/VM_share/NVDLA_BP/spinal_prj/hand_rtl/delta_wt.mem","w+");  
	sigma = $fopen("D:/VM_share/NVDLA_BP/spinal_prj/hand_rtl/sigma.mem","w+");  
end


always@(posedge clk or negedge rst_n)
	if(interrupter)begin
		$fclose(delta_wt);
		$fclose(sigma);
	end



reg  axi_s_aw_awready = 0;
reg  axi_s_w_wready = 0;
reg  axi_s_b_bvalid = 0;
reg  axi_s_ar_arready = 0;
reg  axi_s_r_rvalid = 0;
reg  pre_axi_s_r_rvalid = 0;
//reg  axi_s_r_rlast = 0;

reg [31:0] aw_awaddr;

reg [31:0] ar_araddr;
reg [255:0] r_rdata;
wire [255:0] wire_r_rdata;


reg [3:0] rburst_len;
reg [3:0] rburst_cnt;
reg [3:0] wburst_len;
reg [3:0] wburst_cnt;

reg [3:0] r_cnt = 0;

assign axi_s_r_rlast = (rburst_cnt == (rburst_len));



// axi handshake
// write
localparam  AW_S = 3'b000;
localparam  W_S = 3'b001;
localparam  B_S = 3'b010;
localparam  W_SEEK_S = 3'b011;

//read
localparam  AR_S = 3'b100;
localparam  R_S = 3'b101;
localparam  R_SEEK_S = 3'b110;
localparam  R_DATA_S = 3'b111;


reg[3:0] wr_state,rd_state;

// two machine one is for write , another for read
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) 
        wr_state <= AW_S;
    else begin
	    case(wr_state)
		    AW_S:begin
			  axi_s_aw_awready <= 1;
			  if(axi_s_aw_awready && axi_s_aw_awvalid)begin
				//delta_wt = $fopen("D:/VM_share/NVDLA_BP/spinal_prj/hand_rtl/delta_wt.mem","w");  
				//sigma = $fopen("D:/VM_share/NVDLA_BP/spinal_prj/hand_rtl/sigma.mem","w");  
				wr_state <= W_S;
			  	axi_s_aw_awready <= 0;
			  end
			  else
				wr_state <= AW_S;
		    end

		    W_S:begin
			  axi_s_w_wready <= 1;
			  if(axi_s_w_wready && axi_s_w_wvalid)begin // conv output
				if(axi_s_w_wlast == 1)begin
			  		axi_s_w_wready <= 0;
					wr_state <= B_S;
			        end
			  end			  
			  else
				wr_state <= W_S;
		    end

		    B_S:begin
			  axi_s_b_bvalid <= 1;
			  if(axi_s_b_bready && axi_s_b_bvalid)begin
				//$fclose(delta_wt);
				//$fclose(sigma);
			  	axi_s_b_bvalid <= 0;
				wr_state <= AW_S;
			  end
			  else
				wr_state <= B_S;
		    end

		    default: wr_state <= AW_S;
	    endcase
    end
        
end



//
always@(posedge clk or negedge rst_n)
	if(!rst_n)begin
		wburst_len <= 4'd0;
	end
	else if(wr_state == AW_S && axi_s_aw_awready && axi_s_aw_awvalid) begin
		wburst_len <= axi_s_aw_awlen;
	end

always@(posedge clk or negedge rst_n)
	if(!rst_n)begin
		wburst_len <= 4'd0;
	end
	else if(wr_state == W_S) begin
		if(axi_s_w_wready && axi_s_w_wvalid) 
			wburst_cnt <= wburst_cnt + 1;
		else
			wburst_cnt <= wburst_cnt;
	end
	else
		wburst_cnt <= 0;


assign axi_s_b_bid = 0;

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        aw_awaddr <= 32'd0;
    end 
    else if(axi_s_aw_awready && axi_s_aw_awvalid) begin
	aw_awaddr <= axi_s_aw_awaddr;
    end 
    else begin
	aw_awaddr <= aw_awaddr;
    end
end

always@(posedge clk or negedge rst_n)begin
	if(wr_state == W_S)begin
		if(axi_s_w_wready && axi_s_w_wvalid)begin
			if((aw_awaddr>=32'h50000000) && (aw_awaddr<=32'h5fffffff))begin  // conv1 out
				$fdisplay(delta_wt,"%h",axi_s_w_wdata);
			end
			else if((aw_awaddr>=32'h60000000) && (aw_awaddr<=32'h6fffffff))begin  //fc2 out
				$fdisplay(sigma,"%h",axi_s_w_wdata);
			end
			else begin
			end

		end
	end
end







//===============================================================================================================
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) 
        rd_state <= AR_S;
    else begin
	    case(rd_state)
		    AR_S:begin
			  axi_s_ar_arready <= 1;
			  if(axi_s_ar_arready && axi_s_ar_arvalid)begin
				rd_state <= R_S;
			  	axi_s_ar_arready <= 0;
			  end
			  else
				rd_state <= AR_S;
		    end
		   
		   // read from file 1 clk delay 
		    R_DATA_S:begin
				rd_state <= R_S;
		    end
		    
		    R_S:begin
			  pre_axi_s_r_rvalid <= 1;
			  if(r_cnt == rburst_len + 1)begin
			  	rd_state <= AR_S;
			  	pre_axi_s_r_rvalid <= 0;
			  	r_cnt <= 4'd0;
			  end
			  else begin
				r_cnt <= r_cnt + 4'd1;  
			  end
			  //axi_s_r_rvalid <= 1;
		    end
		    		    
		    default: rd_state <= AR_S;
	    endcase
    end
        
end

reg pre_axi_s_r_rvalid_delay;
always@(posedge clk or negedge rst_n)
	if(!rst_n)begin
		axi_s_r_rvalid <= 0;
		pre_axi_s_r_rvalid_delay <= 0;
	end
	else begin
		pre_axi_s_r_rvalid_delay <= #0 pre_axi_s_r_rvalid;
		axi_s_r_rvalid <= #0 pre_axi_s_r_rvalid_delay;
	end



always@(posedge clk or negedge rst_n)
	if(!rst_n)begin
		rburst_len <= 4'd0;
	end
	else if(rd_state == AR_S && axi_s_ar_arready && axi_s_ar_arvalid) begin
		rburst_len <= axi_s_ar_arlen;
	end

always@(posedge clk or negedge rst_n)
	if(!rst_n)
		rburst_cnt <= 4'd0;
	else if(axi_s_r_rready && axi_s_r_rvalid) 
		rburst_cnt <= rburst_cnt + 1;
	else if(rd_state == AR_S)
		rburst_cnt <= 0;


always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        ar_araddr <= 32'd0;
    end 
    else if(axi_s_ar_arready && axi_s_ar_arvalid) begin
	ar_araddr <= axi_s_ar_araddr;
    end 
    else begin
	ar_araddr <= ar_araddr;
    end
end


always@(posedge clk or negedge rst_n)
	if(!rst_n)begin
		r_rdata <= 256'd0;
	end
	else begin
		r_rdata <= #1 wire_r_rdata;
	end



assign   axi_s_r_rdata = r_rdata;
assign   axi_s_r_rid = 0;




always@(posedge clk or negedge rst_n)
	if(rd_state == R_S && axi_s_r_rready && pre_axi_s_r_rvalid)begin
		if(ar_araddr >= 31'h00000000 && ar_araddr <= 31'h1fffffff)begin
			$fscanf(feature,"%h",wire_r_rdata);
		end
		else if(ar_araddr >= 31'h20000000 && ar_araddr <= 31'h2fffffff)begin
			$fscanf(weight,"%h",wire_r_rdata);
		end

	end


endmodule

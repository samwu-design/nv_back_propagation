// Generator : SpinalHDL v1.5.0    git head : 83a031922866b078c411ec5529e00f1b6e79f8e7
// Component : MyTopLevel
// Git hash  : 468260b61ffaaed727a3b82deccca770fc0579f1



module MyTopLevel (
  input               io_cond0,
  input               io_cond1,
  output              io_flag,
  output     [7:0]    io_state,
  input               clk,
  input               reset
);
  reg        [7:0]    counter;

  assign io_state = counter;
  assign io_flag = ((counter == 8'h0) || io_cond1);
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      counter <= 8'h0;
    end else begin
      if(io_cond0) begin
        counter <= (counter + 8'h01);
      end
    end
  end


endmodule

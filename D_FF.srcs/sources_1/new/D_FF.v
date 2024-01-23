module d_flip_flop (Q,D,clk,reset);
input D;
input clk;
input reset;
output reg Q;

always @(posedge clk or posedge reset)
  begin
    if (reset == 1'b1 )
                           // Write the logic for D Flip-flop
    else
        
  end
endmodule        
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2024 14:38:56
// Design Name: 
// Module Name: Test_DFF
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


module Test_DFF();
reg D;
reg clk;
reg reset;
wire Q;

d_flip_flop dut(Q,D,clk,reset);

initial 
  begin 
    clk = 1'b0;
    forever #20 clk = ~clk ;
  end
  
initial 
  begin
    reset = 1'b1;
    #40;
    reset = 1'b0;
    #40;
    D = 1'b0;
    #40;
    D = 1'b1;
    #40;
    
    $finish ;
  end
endmodule

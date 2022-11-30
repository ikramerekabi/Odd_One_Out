`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2022 07:07:06 PM
// Design Name: 
// Module Name: main
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


module main(input clk, reset, input [7:0] integers, input [7:0] N, 
input latch_in, output reg [3:0] Anode, output reg [6:0] LED_out, output reg ready);
    wire [7:0] output1; 
 odd_one_out inst(  clk, reset, integers, N, latch_in, output1, ready);
 wire output2= {5'b0 ,output1};
 Four_Digit_Seven_Segment_Driver inst2( clk, output2. Anode,LED_out);
endmodule

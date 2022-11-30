`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2022 05:46:37 PM
// Design Name: 
// Module Name: odd_one_out
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


module odd_one_out ( input clk, reset, input [7:0] integers, input [7:0] N, 
input latch_in, output reg  [7:0]  out_value, output reg ready);
parameter n=255;
    reg [7:0] integer_in;
    reg [7:0] counter_input; 
    reg [7:0] array [0:n-1]; 
    reg [7:0] i=0; 
    reg [7:0]number_of_integeres;
    reg [7:0]output_loop=0; 
    reg [7:0] flag_loop=0;
    reg [7:0]flag=0; 
    
     always @(posedge latch_in)
        begin
        number_of_integeres = N;
        flag_loop = 1; 
        ready=0;
        end   
         
             
    always @(posedge clk )
    begin
    if(i<number_of_integeres & flag_loop == 1)
        begin
        array[i] = integers;
        i=i+1;
        end
        
        else if(i == number_of_integeres)
            begin
            if(flag<n)
            begin
            output_loop = output_loop ^ array[flag] ^ array[flag+1];
            flag = flag+1;
            end
             else 
             begin
             out_value = output_loop; 
             ready=1;
             end
            end
    end
    
         
//        genvar j; 
//       generate 
//       for (j= 0; j<n; j= j+1) begin: loop1
//       assign output_loop = output_loop ^ array[j] ^ array[j+1];
//       end
//       assign flag=1;
//       endgenerate
   
   
     
     
    
    endmodule
    

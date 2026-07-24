`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.07.2026 18:54:20
// Design Name: 
// Module Name: Registers
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


module Registers(
    input clk,
    input we3,
    input [4:0] a1, //first read address
    input [4:0] a2, //second read address
    input [4:0] a3, // write address
    input [31:0] wd3, //ALU result
    output [31:0] rd1, 
    output [31:0] rd2
    );
      reg [31:0] rf [31:0];
      
      assign rd1 = (a1 == 5'b0) ? 0 : rf[a1];
      assign rd2 = (a2 == 5'b0) ? 0 : rf[a2];
      always @(posedge clk) begin
        if (we3 && a3 != 5'b0) begin
          rf[a3] <= wd3;
        end
      end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.07.2026 20:22:14
// Design Name: 
// Module Name: ALU_TOP
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
/*
0000 - sum
0001 - difference
0010 - AND_out
0011 - OR_out
0100 - XOR_out 
0101 - Right shift arithmetic
0110 - Right shift logical
0111 - Left shift
*/

module ALU_TOP(
    input [31:0] sig_A,
    input [31:0] sig_B,
    input [3:0] selector,
    output reg [31:0] Y
    );
    wire [31:0] sum;
    wire [31:0] difference;
    assign AND_out = sig_A & sig_B;
    assign OR_out = sig_A | sig_B;
    assign XOR_out = sig_A ^ sig_B;
    wire [31:0] RSA;
    wire [31:0] RSL;
    wire [31:0] LS;
    wire sub;
    wire right;
    wire arithmetic;
    assign right = (selector == 4'b0101 | selector == 4'b0110);
    assign arithmetic = (selector == 4'b0101);
    assign sub = (selector == 4'b0001); 
    
    always @(*) begin
      case(selector)
        4'b0000: Y = sum;
        4'b0001: Y = difference;
        4'b0010: Y = AND_out;
        4'b0011: Y = OR_out;
        4'b0100: Y = XOR_out;
        4'b0101: Y = RSA;
        4'b0110: Y = RSL;
        4'b0111: Y = LS;
        default: Y = 32'b0;
        endcase
    end 
    FA sumator(
      .A(sig_A),
      .B(sig_B),
      .is_sub(sub),
      .Y()
      );
    Shift_unit shift(
      .A(sig_A),
      .B(sig_B),
      .is_right(right),
      .is_arithmetic(arithmetic),
      .Y()
      );
      
      
    
endmodule

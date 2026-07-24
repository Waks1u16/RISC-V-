`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.07.2026 19:48:37
// Design Name: 
// Module Name: Shift_unit
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


module Shift_unit(
    input [31:0] A,
    input [4:0] B, // wystarczy tylko 5 bitów które równa sie przesunieciu o max 31
    input is_right, is_arithmetic,
    output [31:0] Y

    );
    assign Y = is_right ? (is_arithmetic ? $signed(A) >>> B : A >> B) : A << B;
endmodule

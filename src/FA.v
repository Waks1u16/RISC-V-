`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.07.2026 19:22:41
// Design Name: 
// Module Name: FA
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


module FA(
    input [31:0] A,
    input [31:0] B,    
    input is_sub,
    output [31:0] Y
    );
    wire [31:0] B_U2;
    assign B_U2 = is_sub ? ~B : B;
    assign Y = A + B + is_sub;    
   
endmodule

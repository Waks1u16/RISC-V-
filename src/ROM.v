`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.07.2026 22:51:04
// Design Name: 
// Module Name: ROM
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
// To correctly read instruction (without jumping by 4) address must be divided by 4 (last two bits must be cut)
//////////////////////////////////////////////////////////////////////////////////


module ROM(
    input [31:0] addr,
    output [31:0] instr
    );
    reg [31:0] rom [0:63];
    initial begin
      $readmemh("program.hex", rom);
    end
    
    
    
    assign instr = rom[addr[31:2]];
    
endmodule

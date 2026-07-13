`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.07.2026 22:33:30
// Design Name: 
// Module Name: Program_Counter
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


module Program_Counter(
    input clk,rst,
    input [31:0] next_addr,
    output reg [31:0] curr_addr
    );
    
    always @(posedge clk) begin
      if (rst) begin
        curr_addr <=32'b0;
      end else begin
        curr_addr <= next_addr;
      end
      
    
    end
    
    
endmodule

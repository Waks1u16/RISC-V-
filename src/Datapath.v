`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.07.2026 19:25:28
// Design Name: 
// Module Name: Datapath
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


module Datapath(
        
    );
endmodule

wire [31:0] reg_rd1, reg_rd2, imm_ext, alu_src_b, alu_result, result_wb;

wire reg_write, alu_src, mem_write, result_src, branch;
wire [3:0] alu_ctrl;
//  Instruction counter
wire [31:0] pc_plus_4, pc_target, pc_next;
wire zero;



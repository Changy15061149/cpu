`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:37:59 11/22/2016 
// Design Name: 
// Module Name:    IDEX 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module IDEX(
    input clk,
    input [31:0] IR,
    input [31:0] PC4,
    input [31:0] RS,
    input [31:0] RT,
    input [31:0] EXT,
    output [31:0] ir,
    output [31:0] pc4,
    output [31:0] rs,
    output [31:0] rt,
    output [31:0] ext,
	 input reset,
	 input nop
    );
		reg [31:0]reg_IR;
		reg [31:0]reg_PC4;
		reg [31:0]reg_RS;
		reg [31:0]reg_RT;
		reg [31:0]reg_EXT;
		assign ir     =   reg_IR;
		assign pc4    =   reg_PC4;
		assign rs     =   reg_RS;
		assign rt     =   reg_RT;
		assign ext    =   reg_EXT;
		always @(posedge clk)
		begin
		if(reset)
		begin
		   reg_IR = 0;
			reg_PC4 = 0;
			reg_RS = 0;
			reg_RT = 0;
			reg_EXT = 0;
		end
		else if(clk)
		 begin
			reg_IR <= nop ? 0:IR;
			reg_PC4 <=nop ? 0: PC4;
			reg_RS <= nop ? 0:RS;
			reg_RT <=nop ? 0:RT;
			reg_EXT <=nop ? 0: EXT;
		 end
		end
		
		initial begin
			reg_IR = 0;
			reg_PC4 = 0;
			reg_RS = 0;
			reg_RT = 0;
			reg_EXT = 0;
		end
endmodule

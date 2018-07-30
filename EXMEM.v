`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:46:09 11/22/2016 
// Design Name: 
// Module Name:    EXMEM 
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
module EXMEM(
    input clk,
    input [31:0] RT,
    input [31:0] AO,
    input [31:0] IR,
    input [31:0] PC4,
	 input [31:0] SD,
	 input reset,
    output [31:0] rt,
    output [31:0] ao,
    output [31:0] ir,
    output [31:0] pc4,
	 output [31:0] storedata
    );
		reg [31:0]reg_IR;
		reg [31:0]reg_PC4;
		reg [31:0]reg_RT;
		reg [31:0]reg_AO;
		reg [31:0]reg_SD;
		assign ir     =   reg_IR;
		assign pc4    =   reg_PC4;
		assign rt     =   reg_RT;
		assign ao    =   reg_AO;
		assign storedata = reg_SD;
		always @(posedge clk )
		begin
		if(reset )begin
			reg_IR = 0;
			reg_PC4 = 0;
			reg_RT = 0;
			reg_AO = 0;
			reg_SD = 0;
		end
		else if(clk)
		 begin
			reg_IR <= IR;
			reg_PC4 <= PC4;
			reg_RT <= RT;
			reg_AO <= AO;
			reg_SD <= SD;
		 end
		end
		
		initial begin
		   reg_IR = 0;
			reg_PC4 = 0;
			reg_RT = 0;
			reg_AO = 0;
			reg_SD = 0;
		end

endmodule

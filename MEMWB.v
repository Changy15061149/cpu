`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:52:40 11/22/2016 
// Design Name: 
// Module Name:    MEMWB 
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
module MEMWB(
    input clk,
	 input reset,
    input [31:0] AO,
    input [31:0] DR,
    input [31:0] IR,
    input [31:0] PC4,
	 input [31:0] MEMdata,
    output [31:0] ao,
    output [31:0] ir,
    output [31:0] pc4,
	 output [31:0] memdata
    );
		reg [31:0]reg_IR;
		reg [31:0]reg_PC4;
		reg [31:0]reg_DR;
		reg [31:0]reg_AO;
		reg [31:0]reg_MEMdata;
		assign ir     =   reg_IR;
		assign pc4    =   reg_PC4;
		assign dr    =   reg_DR;
		assign ao    =   reg_AO;
		assign memdata = reg_MEMdata;
		always @(posedge clk)
		begin
		if(reset)begin
		   reg_IR = 0;
			reg_PC4 = 0;
			reg_DR = 0;
			reg_AO = 0;
			reg_MEMdata=0;
		
		end
		else if (clk)
		 begin
			reg_IR <= IR;
			reg_PC4 <= PC4;
			reg_DR <= DR;
			reg_AO <= AO;
			reg_MEMdata<=MEMdata;
			end
		end
		initial begin
		   reg_IR = 0;
			reg_PC4 = 0;
			reg_DR = 0;
			reg_AO = 0;
			reg_MEMdata = 0;
		end

endmodule

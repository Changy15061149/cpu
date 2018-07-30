`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:20:16 11/22/2016 
// Design Name: 
// Module Name:    IFID 
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
module IFID(
    input [31:0] IR,
    input [31:0] PC4,
    input clk,
	 input reset,
    output [31:0] ir,
    output [31:0] pc4
    );
	reg [31:0]ii;
	reg [31:0]pp;
	assign ir=ii;
	assign pc4=pp;
	always @(posedge clk)
	begin
	if (reset)begin
			ii=0;
			pp=0;
	end
	else if(clk)begin
			ii<=IR;
			pp<=PC4;
	end
	end
	initial begin
		ii=0;
		pp=0;
	end

endmodule

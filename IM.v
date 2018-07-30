`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:52:42 11/14/2016 
// Design Name: 
// Module Name:    IM 
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
module IM(
    input [31:0] Addr,
    output [31:0] Out
	// output [31:0] pc
    );
	 reg [31:0] _im [4095:0];
	 initial begin
		$readmemh("code.txt",_im);
	//	$readmemh("code1.txt",_im,11'h460,11'h7ff);
	 end
	 wire [31:0] real_add=Addr-'h00003000;
	 //assign pc = Addr;
	 assign Out=_im[real_add[14:2]];

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:59:56 12/05/2016 
// Design Name: 
// Module Name:    dataextend 
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
module dataextend(
    input [1:0] A,
    input [31:0] Din,
    input [2:0] Op,
    output [31:0] Dout
    );
	   wire [7:0] hel1;
		wire [15:0] hel2;
		assign hel1 = (A==0?Din[7:0]:(A==1?Din[15:8]:(A==2?Din[23:16]:Din[31:24])));
		assign hel2 = (A[1]?Din[31:16]:Din[15:0]);
		
		assign Dout = (Op==3'b000)?Din:
		              (Op==3'b001)?{24'b0,hel1}:      ///ÎÞ·ûºÅ×Ö½Ú
						  (Op==3'b010)?{{24{hel1[7]}},hel1}:
						  (Op==3'b011)?{16'b0,hel2}:
						  (Op==3'b100)?{{16{hel2[15]}},hel2}:-1;
		
		endmodule

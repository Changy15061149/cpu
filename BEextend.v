`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:55:37 12/05/2016 
// Design Name: 
// Module Name:    BEextend 
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
module BEextend(
    input [1:0] A,
	 input [2:0] type,
    output [3:0] BE
    );
		
		wire sw,sh,sb;
		assign sw = (type==0) ? 1:0;
		assign sh = (type==1) ? 1:0;
		assign sb = (type==2) ? 1:0;
		
		assign BE = (sw)?4'b1111:
		              ((sh)?((A[1]==0)?4'b0011:4'b1100):
						   ((A==2'b0)?4'b0001:((A==2'b01)?4'b0010:((A==2'b10)?4'b0100:4'b1000)))
						   );
endmodule

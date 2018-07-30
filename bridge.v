`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:15:18 12/13/2016 
// Design Name: 
// Module Name:    bridge 
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
module bridge(
    input [31:2] PrAddr,
    input [3:0] PrBE,
    output [31:0] PrRD,
    input [31:0] PrWD,
    input PrWe,
    output [7:2] HWInt,
	 output bri,
	 
	 
	 output [3:2]ADDR,
	 output [31:0]wdata,
	 input [31:0]data1,
	 input [31:0]data2,
	 output we1,
	 output we2,
	 output [3:0]BE,
	 input inte1,
	 input inte2
	 
    );
	   //always @(PrAddr)
		//begin
		//   $display("%h",PrAddr[31:4]);
		//end
		assign wdata=PrWD;
		assign we1=(PrAddr[31:4]=='h00007f0)?PrWe:0;
		assign we2=(PrAddr[31:4]=='h00007f1)?PrWe:0;
		assign bri=(PrAddr[31:4]=='h00007f0)?1:(PrAddr[31:4]=='h00007f1)?1:0;
		assign ADDR=PrAddr[3:2];
		assign PrRD=(PrAddr[31:4]=='h00007f0)?data1:data2;
		assign BE=PrBE;
		assign HWInt = {4'b0,inte2,inte1};

endmodule

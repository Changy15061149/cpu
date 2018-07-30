`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:57:41 11/14/2016 
// Design Name: 
// Module Name:    GPR 
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
module GPR(
    input reset,
    input clk,
    input [4:0] pos1,
    input [4:0] pos2,
    input [4:0] pos3,
    input WriteEnable,
    input [31:0] WData,
	 input [31:0] pc,
    output [31:0] Data1,
    output [31:0] Data2
    );
	integer i;
	reg [31:0] data[31:0];
	assign Data1=(WriteEnable==1&&pos1==pos3&&pos1!=0)?WData:data[pos1];
	assign Data2=(WriteEnable==1&&pos2==pos3&&pos2!=0)?WData:data[pos2];
	always @(posedge(clk)or reset)
	begin
	  
		if(reset)
		begin
			for(i=0;i<=31;i=i+1)
				data[i]<=0;
		end
		else if(clk && WriteEnable && pos3)
		begin
			data[pos3]<=WData;
			$display("%d@%h: $%d <= %h", $time, pc ,pos3,WData);
		end
		
	end
	//always @(negedge clk)begin  $display("%d %d %d %d",pos1,pos2,Data1,Data2);end
	initial begin
		for(i=0;i<=31;i=i+1)
				data[i]<=0;
	end
endmodule

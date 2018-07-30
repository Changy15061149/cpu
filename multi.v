`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:53:08 12/04/2016 
// Design Name: 
// Module Name:    multi 
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
module multi(
    input [31:0] A,
    input [31:0] B,
    output [31:0] HI,
    output [31:0] LO,
    input [3:0] MULOp,
    input  clk,
    output busy,
    input start,
	 input reset,
	 input wlo,
	 input whi
    );
		reg [5:0]timer;
		reg regbusy;
		reg [31:0]hi,lo;
		wire [31:0]inputhi,inputlo;
		assign busy = regbusy;
		assign HI = hi;
		assign LO = lo;
		wire mult;
		wire div;
		wire [5:0]sum;
		assign sum=(MULOp==5)?2:2;
		//assign sum=5;
		
		assign {inputhi,inputlo}= (MULOp==4&&B!=0)?{{A%B},{A/B}}:
										  (MULOp==1)?$signed({{32{A[31]}},A})*$signed({{32{B[31]}},B}):
										  (MULOp==2)?{32'b0,A}*{32'b0,B}:
										  (B!=0)?{{$signed(A)%$signed(B)},{$signed(A)/$signed(B)}}:
										  {HI,LO}; //need_modify
		
		always @(posedge clk or posedge start)
		begin
			  if(reset)begin
					timer<=0;
					regbusy<=0;
					hi<=0;
					lo<=0;
			  end
			  else if(wlo)begin
			      lo<=A;
			  end
			  else if(whi)begin
			      hi<=A;
			  end
			  else if(start)begin
					regbusy <= 1;
					hi<=inputhi;
					lo<=inputlo;
			  end
		     else if(busy)begin
					timer<=timer+1;
			  end
			  if (timer == sum-1)
			  begin
					regbusy<=0;
					timer<=0;

			  end
		end
		
		
		
		initial begin
			timer=0;
			regbusy=0;
			hi=0;
			lo=0;
		end
endmodule

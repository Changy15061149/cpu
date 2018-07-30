`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:43:28 12/14/2016 
// Design Name: 
// Module Name:    cp0 
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
module cp0(
    input [4:0] A1,
    input [4:0] A2,
    input [31:0] Din,
    input [31:0] PC,
    input [6:2] ExCode,
    input [5:0] HWInt,
    input We,
    input EXLset,
    input EXLclr,
    input clk,
    input rst,
    output IntReq,
	 output [31:0] Epc,
    output [31:0] Dout,
	 output [31:0] SR,
	 input eret
    );
	   
		assign SR = data[12];
		reg [31:0] data[31:0];
		wire [5:0] itt;
		
		integer i;
		initial begin
		   for(i=0;i<=31;i=i+1)
			   begin
			    data[i]=0;
				end
		end
		
		assign Epc = data[14];
		wire intreq;
		assign Dout = data[A1];
		assign itt =data[12][15:10];
		assign IntReq =(data[12][1]==0&&data[12][0]==1)?((itt[1]&&HWInt[1])||((itt[0]&&HWInt[0]))):0;
		
		always @(posedge clk)
		begin
		if(IntReq)
		begin
		  data[13]<={16'b0,HWInt,10'b0};
		  data[14]<=PC;
		  data[12][1]<=1;
		end
		if(eret)
		  data[12][1]<=0;
		begin
		end
		end
		
		always @(posedge clk)
		begin
		  
		  if(rst)
		   if(i!=12)
			   begin
			    data[i]=0;
				end
			  else
			    begin
				  data[i]=32'h0000ff11;
				 end
			
		  else
		  begin
         		   
			if(We)
			 begin
			    data[A2]<=Din;
			 end
		    if(EXLset)
			 begin
			    data[12][1]<=1;
				 data[14]<=PC;
			 end
			 if(EXLclr)
			 begin
			    data[12][0]<=0;
			 end
		  
		  
		  end
		
		end

endmodule

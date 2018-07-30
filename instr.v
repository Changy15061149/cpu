`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:23:17 11/14/2016 
// Design Name: 
// Module Name:    instr 
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
module instr(
    input branch,
	 input reset,
	 input clk,
	 input [31:0]jump,
	 input enable, 
	 input B,
	 output [31:0]pc,
	 
    output [31:0] j,
    output [31:0] data
    );
	 wire [31:0] Ddata;
	 reg [31:0]ins;
	 assign data=Ddata;
	 
	 initial begin 
		ins='h00003000;
	 end
	 assign pc = ins;
	 IM I(.Addr(ins),.Out(Ddata));
	 assign j = ins+8;
	 always @(posedge clk)
	 begin
		if(reset)
		begin
			ins='h00003000;
		end
	
		else if(enable)
		begin
			
			if(!branch)
			begin
			 ins<=ins+4;
			end
			
			else// if (B)
			begin
				ins<=jump;
			end
			//$display("*%h*",data);
	   end
	 end
	/* always @(posedge enable)
	begin
	   if(ins!='h00003000)
			begin
			if(!branch)
			begin
			 ins<=ins+4;
			end
			
			else// if (B)
			begin
				ins<=jump;
			end
			end
			//$display("*%h*",data);
	   end*/
	 
endmodule

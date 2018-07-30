`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:34:30 11/14/2016 
// Design Name: 
// Module Name:    RAM 
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
module RAM(
    input [31:0] Addr,
    input WriteEnable,
	 input clk,
	 input [3:0]BE,
	 input reset,
	 input [31:0] WData,
	 input [31:0] pc,
    output [31:0] Data
    );
		integer i;
		reg [31:0] _ram[4095:0];
		assign Data=_ram[Addr[13:2]];
		wire [31:0]wdata;
		wire [7:0]data1,data2,data3,data4;
		wire [7:0]data11,data22,data33,data44;
		
		assign {data1,data2,data3,data4} = Data;
		assign {data11,data22,data33,data44} = WData;
		assign wdata = (BE==4'b1111)?WData:
		               (BE==4'b0011)?{data1,data2,data33,data44}:
							(BE==4'b1100)?{data33,data44,data3,data4}:
							(BE==4'b1000)?{data44,data2,data3,data4}:
							(BE==4'b0100)?{data1,data44,data3,data4}:
							(BE==4'b0010)?{data1,data2,data44,data4}:
							{data1,data2,data3,data44};
							
		
		always @(posedge clk)
		begin
		  if(reset)begin
				for (i=0;i<=4095;i=i+1)
				   _ram[i]<=0;
		  end
		  else if(clk==1&&WriteEnable)
		  begin
				_ram[Addr[13:2]]<=wdata;
				//if(BE==4'b1111)
				$display("%d@%h: *%h <= %h",$time, pc,{Addr[13:2],2'b0},wdata);
		  end
		  
		end
		initial begin
				for (i=0;i<=4095;i=i+1)
				   _ram[i]<=0;
		end
endmodule

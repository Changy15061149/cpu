`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:41:05 12/05/2016
// Design Name:   multi
// Module Name:   C:/Windows/System32/P5/test_multi.v
// Project Name:  P5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multi
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_multi;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg [3:0] MULOp;
	reg  clk;
	reg start;
	reg reset;

	// Outputs
	wire [31:0] HI;
	wire [31:0] LO;
	wire busy;

	// Instantiate the Unit Under Test (UUT)
	multi uut (
		.A(A), 
		.B(B), 
		.HI(HI), 
		.LO(LO), 
		.MULOp(MULOp), 
		.clk(clk), 
		.busy(busy), 
		.start(start), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		A = 5;
		B = 3;
		MULOp = 5;
		clk = 0;
		start = 0;
		reset = 0;
		
		#5 start=1;
		#5 start=0;
		// Wait 100 ns for global reset to finish
		#100;
		
        
		// Add stimulus here

	end
	
	always #5 clk=~clk;
      
endmodule


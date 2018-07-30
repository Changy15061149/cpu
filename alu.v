`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:51:15 11/14/2016 
// Design Name: 
// Module Name:    alu 
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
module alu(
    input [5:0] ALUOp,
	 input [3:0] jin,
    input [31:0] A,
    input [31:0] B,
	 input [4:0] C,
    output [31:0] ans,
    output equal,
	 output jsignal
    );
	 wire [31:0]hel;
	 wire [31:0]hel2;
	 assign hel2 = A-B;
	 
	 wire mz;
	 assign mz = (!A[31])&&(A>0);
	 wire mez;
	 assign mez = !A[31];
	 wire bz;
	 assign bz = A[31];
	 wire bez;
	 assign bez = A[31]|(A==0);
	 
	 assign hel = {32{B[31]}};
		assign ans=(ALUOp==0)?(A|B):((ALUOp==1)?(A+B):((ALUOp==2)?(A-B):((ALUOp==3)?(A&B):(ALUOp==4?(A^B):
		                       (ALUOp==5)?(B<<C):(ALUOp==6)?(B>>C):(ALUOp==7)?(~(A|B)):(ALUOp==8)?(B<<A[4:0]):
									  (ALUOp==9)?(B>>A[4:0]):(ALUOp==10)?(($signed(B)>>C)+(hel<<(5'b11111-C+1))):         
									  (ALUOp==11)?(($signed(B)>>A[4:0])+(hel<<(5'b11111-A[4:0]+1))):
									  (ALUOp==12)?{31'b0,hel2[31]}:
									  (ALUOp==13)?{31'b0,(A<B)}:
									  (ALUOp==14)?{{24{B[7]}},B[7:0]}:
									  -1))));
		assign equal=(A==B)?1:0;
		assign jsignal =(jin==0)?mz:(jin==1)?mez:(jin==2)?bz:bez;
endmodule

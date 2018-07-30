`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:02:39 11/14/2016 
// Design Name: 
// Module Name:    controller 
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
module controller(
	 input [31:0] IR, 
    input [31:26] op,
    input [5:0] sp,
    output [5:0] ALUOp,
    output Branch,
   // output AlutoReg,
    output InttoReg,
    output memWrite,
    output regWrite,
	 output RegDst,
	 output [3:0]alusrc,
	 output [3:0]jin, 
	 
	 output [2:0]type, 
	 output memwrite,
	 output jtoreg,
	 output regtoj,
	 output jtochangereg,
	 output memtoreg,
	 output inttoj,
	 output branch2,
	 output branch3,
	 output [2:0]OOp,
	 output [3:0]MULOp ,
	 output flo,
	 output fhi,
	 output wlo,
	 output whi,
	 output hazmulti,
	 output mumu,
	 output ji,
	 output mfc0,
	 output mtc0,
	 output eret,
	 output bgezalr
	 //output 
    );
	 wire addu,subu,ori,j,lui;
	 
	 wire sw,lw,beq,jal,jr;
	 
	 
	 wire add,addi,addiu,sub,and1,or1,xor1;
	 
	 wire bne,jalr;
	 wire sll,srl;
	 wire nor1,andi,xori,sllv,srlv,sra,srav;
	 wire slt,slti,sltiu;
	 wire blez,bgtz,bltz,bgez;
	 wire lb,lbu,lh,lhu,sb,sh;
	 wire bgezalr;
	 
	 
	 assign addu = (op=='b000000&&sp=='b100001)?1:0;
	 assign subu = (op=='b000000&&sp=='b100011)?1:0;
	 assign j = (op=='b000010)?1:0;
    assign ori = (op=='b001101)?1:0;
	 assign lui = (op=='b001111)?1:0;
	 assign sw = (op=='b101011)?1:0;
	 assign lw = (op=='b100011)?1:0;
	 assign beq = (op=='b000100)?1:0;
	 assign jal = (op=='b000011)?1:0;
	 assign jr = (op=='b000000&& sp == 'b001000)?1:0;
	 assign bgezalr = (op == 'b111111 && sp == 'b000000)?1:0;//(op == 'b000000 && sp == 'b011110)?1:0;
	 
	 
	 
	 assign add = (op=='b000000&& sp == 'b100000)?1:0;
	 assign addi = (op=='b001000)?1:0;
	 assign addiu = (op=='b001001)?1:0;
	 assign sub  = (op=='b000000 && sp == 'b100010)?1:0;
	 assign and1 = (op=='b000000 && sp == 'b100100)?1:0;
	 assign or1 = (op=='b000000 && sp == 'b100101)?1:0;
	 assign xor1 = (op=='b000000 && sp == 'b100110)?1:0;
	 assign jalr = (op=='b000000 && sp == 'b001001)?1:0;
	 assign bne = (op=='b000101)?1:0;
	 assign sll = (op=='b000000 && sp == 'b000000)?1:0;
	 assign srl = (op=='b000000 && sp == 'b000010)?1:0;
	 
	 assign nor1 = (op=='b000000 && sp == 'b100111)?1:0;
	 assign andi = (op=='b001100)?1:0;
	 assign xori = (op=='b001110)?1:0;
	 assign sllv = (op=='b000000 && sp == 'b000100)?1:0;
	 assign srlv = (op=='b000000 && sp == 'b000110)?1:0;
	 assign sra  = (op=='b000000 && sp == 'b000011)?1:0;
	 assign srav = (op=='b000000 && sp == 'b000111)?1:0;
	 
	 assign slt = (op=='b000000 && sp == 'b101010)?1:0;
	 assign slti = (op=='b001010)?1:0;
	 assign sltiu = (op=='b001011)?1:0;
	 assign sltu = (op=='b000000 && sp == 'b101011)?1:0;

	 assign blez =(op=='b000110)?1:0;
	 assign bgtz =(op=='b000111)?1:0;
	 assign bltz =(op=='b000001 && IR[20:16]=='b00000)?1:0;
	 assign bgez =(op=='b000001 && IR[20:16]=='b00001)?1:0;
	 
	 assign sb =(op=='b101000)?1:0;
	 assign sh =(op=='b101001)?1:0;
	 
	 assign lb =(op=='b100000)?1:0;
	 assign lbu=(op=='b100100)?1:0;
	 assign lh =((op=='b100001) ||(op == 'b011001))?1:0;
	 assign lhu=(op=='b100101)?1:0;
	 
	 wire mult,multu,div,divu;
	 assign mult = (op=='b000000 && sp == 'b011000)?1:0;
	 assign multu = (op=='b000000 && sp == 'b011001)?1:0;
	 assign div = (op=='b000000 && sp == 'b011010)?1:0;
	 assign divu = (op=='b000000 && sp == 'b011011)?1:0;
	 
	 wire mflo,mfhi;
	 assign mfhi = (op=='b000000 && sp == 'b010000)?1:0;
	 assign mflo = (op=='b000000 && sp == 'b010010)?1:0;
	 
	 wire mtlo,mthi;
	 assign mthi = (op=='b000000 && sp == 'b010001)?1:0;
	 assign mtlo = (op=='b000000 && sp == 'b010011)?1:0;
	 
	 //wire ji;
	 assign ji = (op=='b110110)?1:0;
	 
	 wire seb;
	 assign seb = (op=='b011111)?1:0;
	 
	 
	 
	// wire mfc0,mtc0;
	 assign mfc0 = (op=='b010000 && IR[25:21]=='b00000)?1:0;
	 assign mtc0 = (op=='b010000 && IR[25:21]=='b00100)?1:0;
	 
	 
	 //wire eret;
	 assign eret = (op=='b010000 && sp=='b011000)?1:0;
	 
	 
	 assign wlo = mtlo;
	 assign whi = mthi;
		
	 assign flo = mflo;
	 assign fhi = mfhi; 
	 
	assign hazmulti =mult|multu|div|divu|mflo|mfhi|mtlo|mthi;


	 assign type = sw?0:(sh?1:2);

    assign branch3=blez|bgtz|bltz|bgez;
	 assign Branch=beq;
	 assign branch2=bne;
	 assign InttoReg=lui;
	 assign regWrite=addu|subu|ori|lui|lw|jal|add|addi|addiu|sub|and1|or1|xor1|jalr|sll|
	                 srl|nor1|andi|xori|sllv|srlv|sra|srav|slt|slti|sltiu|sltu|lh|lhu|lb|lbu|
						  multu|div|divu|mult|mflo|mfhi|seb|mfc0|bgezalr;
	 
	 assign RegDst=addu|subu|add|sub|and1|or1|xor1|sll|srl|jalr|nor1|sllv|srlv|sra
	               |srav|slt|sltu|div|divu|mult|mflo|mfhi|seb|bgezalr;
						
	 assign alusrc=(lw||sw||addi||addiu||slti||sltiu||lh||lhu||lb||lbu||sb||sh)?2:((ori|andi|xori)?1:0);
	 assign memwrite=sw|sb|sh;
	 assign memtoreg=lw|lh|lhu|lb|lbu|mfc0;
	 assign jtochangereg=jalr;
	 
	 assign jtoreg=jal;
	 assign regtoj=jr|jalr;
	 assign inttoj=j|jal;
	 
	 assign ALUOp=(addu||lw||sw||add||addi||addiu||lh||lhu||lb||lbu||sb||sh||ji)?1:((ori|lui|jal|or1|jalr)?0:((subu|sub)?2:(and1|andi)?3:(xor1|xori)?4:sll?5:srl?6:nor1?7:
	               sllv?8:srlv?9:sra?10:srav?11:(slt||slti)?12:(sltiu||sltu)?13:seb?14:15));
	 assign jin = (bgtz)?0:(bgez||bgezalr)?1:(bltz)?2:3;
	 
	 assign OOp = (lw)?0:(lbu?1:(lb?2:(lhu?3:4)));
	 assign MULOp =(mult)?1:(multu?2:(div?3:(divu?4:0)));
	 assign mumu = mult|multu|div|divu;
endmodule

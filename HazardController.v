`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:20:03 11/22/2016 
// Design Name: 
// Module Name:    HazardController 
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
module HazardController(
    input [31:0] MEMWB_IR,
    input [31:0] IDEX_IR,
    input [31:0] IFID_IR,
    input [31:0] EXMEM_IR,
    output  ForwardA,
    output  ForwardB,
	 output ForwardA2,
	 output ForwardB2,
	 output [4:0]posrs,
	 output nop
    );
	wire adduMEMWB,adduIDEX,adduIFID,adduEXMEM;
	wire subuMEMWB,subuIDEX,subuIFID,subuEXMEM;
	wire oriMEMWB,oriIDEX,oriIFID,oriEXMEM;
	wire luiMEMWB,luiIDEX,luiIFID,luiEXMEM;
	wire bgezalrMEMWB,bgezalrIDEX,bgezalrIFID,bgezalrEXMEM;
	
	assign bgezalrMEMWB = (MEMWB_IR[31:26]==6'b111111&&MEMWB_IR[5:0]==6'b000000)?1:0;
	assign bgezalrIDEX = (IDEX_IR[31:26]==6'b111111&&IDEX_IR[5:0]==6'b000000)?1:0;
	assign bgezalrIFID = (IFID_IR[31:26]==6'b111111&&IFID_IR[5:0]==6'b000000)?1:0;
	assign bgezalrEXMEM = (EXMEM_IR[31:26]==6'b111111&&EXMEM_IR[5:0]==6'b000000)?1:0;
	
	
	assign adduMEMWB = (MEMWB_IR[31:26]==6'b000000&&MEMWB_IR[5:0]==6'b100001)?1:0;
	assign adduIDEX = (IDEX_IR[31:26]==6'b000000&&IDEX_IR[5:0]==6'b100001)?1:0;
	assign adduIFID = (IFID_IR[31:26]==6'b000000&&IFID_IR[5:0]==6'b100001)?1:0;
	assign adduEXMEM = (EXMEM_IR[31:26]==6'b000000&&EXMEM_IR[5:0]==6'b100001)?1:0;
	
	
	assign subuMEMWB = (MEMWB_IR[31:26]==6'b000000&&MEMWB_IR[5:0]==6'b100011)?1:0;
	assign subuIDEX = (IDEX_IR[31:26]==6'b000000&&IDEX_IR[5:0]==6'b100011)?1:0;
	assign subuIFID = (IFID_IR[31:26]==6'b000000&&IFID_IR[5:0]==6'b100011)?1:0;
	assign subuEXMEM = (EXMEM_IR[31:26]==6'b000000&&EXMEM_IR[5:0]==6'b100011)?1:0;
	
	
	
	assign oriMEMWB = (MEMWB_IR[31:26]==6'b001101)?1:0;
	assign oriIDEX = (IDEX_IR[31:26]==6'b001101)?1:0;
	assign oriIFID = (IFID_IR[31:26]==6'b001101)?1:0;
	assign oriEXMEM = (EXMEM_IR[31:26]==6'b001101)?1:0;


	assign luiMEMWB = (MEMWB_IR[31:26]==6'b001111)?1:0;
	assign luiIDEX = (IDEX_IR[31:26]==6'b001111)?1:0;
	assign luiIFID = (IFID_IR[31:26]==6'b001111)?1:0;
	assign luiEXMEM = (EXMEM_IR[31:26]==6'b001111)?1:0;
	
	
	
	
	wire lwEXMEM,lwMEMWB;
	wire jalEXMEM,jalMEMWB;
	
	assign lwEXMEM =(EXMEM_IR[31:26]==6'b100011)?1:0;
	assign lwMEMWB =(MEMWB_IR[31:26]==6'b100011)?1:0;
	
	assign jalEXMEM = (EXMEM_IR[31:26]==6'b000011 )?1:0;
	assign jalMEMWB = (MEMWB_IR[31:26]==6'b000011 )?1:0;
	
	
	wire addEXMEM,addMEMWB;
	assign addEXMEM = (EXMEM_IR[31:26]==6'b000000&&EXMEM_IR[5:0]==6'b100000)?1:0;
	assign addMEMWB = (MEMWB_IR[31:26]==6'b000000&&MEMWB_IR[5:0]==6'b100000)?1:0;
	
	wire addiEXMEM,addiMEMWB;
	assign addiEXMEM = (EXMEM_IR[31:26]==6'b001000)?1:0;
	assign addiMEMWB = (MEMWB_IR[31:26]==6'b001000)?1:0;
	
	wire addiuEXMEM,addiuMEMWB;
	assign addiuEXMEM = (EXMEM_IR[31:26]==6'b001001)?1:0;
	assign addiuMEMWB = (MEMWB_IR[31:26]==6'b001001)?1:0;
	
	wire subEXMEM,subMEMWB;
	assign subEXMEM = (EXMEM_IR[31:26]==6'b000000&&EXMEM_IR[5:0]==6'b100010)?1:0;
	assign subMEMWB = (MEMWB_IR[31:26]==6'b000000&&MEMWB_IR[5:0]==6'b100010)?1:0;
	
	wire andEXMEM,andMEMWB;
	assign andEXMEM = (EXMEM_IR[31:26]==6'b000000&&EXMEM_IR[5:0]==6'b100100)?1:0;
	assign andMEMWB = (MEMWB_IR[31:26]==6'b000000&&MEMWB_IR[5:0]==6'b100100)?1:0;
	
	wire orEXMEM,orMEMWB;
	assign orEXMEM = (EXMEM_IR[31:26]==6'b000000&&EXMEM_IR[5:0]==6'b100101)?1:0;
	assign orMEMWB = (MEMWB_IR[31:26]==6'b000000&&MEMWB_IR[5:0]==6'b100101)?1:0;
	
	wire xorEXMEM,xorMEMWB;
	assign xorEXMEM = (EXMEM_IR[31:26]==6'b000000&&EXMEM_IR[5:0]==6'b100110)?1:0;
	assign xorMEMWB = (MEMWB_IR[31:26]==6'b000000&&MEMWB_IR[5:0]==6'b100110)?1:0;
	
	wire jalrEXMEM,jalrMEMWB;
	assign jalrEXMEM = (EXMEM_IR[31:26]==6'b000000&&EXMEM_IR[5:0]==6'b001001)?1:0;
	assign jalrMEMWB = (MEMWB_IR[31:26]==6'b000000&&MEMWB_IR[5:0]==6'b001001)?1:0;
	
	wire sllEXMEM,sllMEMWB;
	assign sllEXMEM = (EXMEM_IR[31:26]==6'b000000&&EXMEM_IR[5:0]==6'b000000)?1:0;
	assign sllMEMWB = (MEMWB_IR[31:26]==6'b000000&&MEMWB_IR[5:0]==6'b000000)?1:0;
		
	wire srlEXMEM,srlMEMWB;
	assign srlEXMEM = (EXMEM_IR[31:26]==6'b000000&&EXMEM_IR[5:0]==6'b000010)?1:0;
	assign srlMEMWB = (MEMWB_IR[31:26]==6'b000000&&MEMWB_IR[5:0]==6'b000010)?1:0;
	
	wire norEXMEM,norMEMWB;
	assign norEXMEM = (EXMEM_IR[31:26]==6'b000000&&EXMEM_IR[5:0]==6'b100111)?1:0;
	assign norMEMWB = (MEMWB_IR[31:26]==6'b000000&&MEMWB_IR[5:0]==6'b100111)?1:0;
	
	wire andiEXMEM,andiMEMWB;
	assign andiEXMEM = (EXMEM_IR[31:26]==6'b001100)?1:0;
	assign andiMEMWB = (MEMWB_IR[31:26]==6'b001100)?1:0;
	
	wire xoriEXMEM,xoriMEMWB;
	assign xoriEXMEM = (EXMEM_IR[31:26]==6'b001110)?1:0;
	assign xoriMEMWB = (MEMWB_IR[31:26]==6'b001110)?1:0;
	
	wire sllvEXMEM,sllvMEMWB;
	assign sllvEXMEM = (EXMEM_IR[31:26]==6'b000000&&EXMEM_IR[5:0]==6'b000100)?1:0;
	assign sllvMEMWB = (MEMWB_IR[31:26]==6'b000000&&MEMWB_IR[5:0]==6'b000100)?1:0;
	
	wire srlvEXMEM,srlvMEMWB;
	assign srlvEXMEM = (EXMEM_IR[31:26]==6'b000000&&EXMEM_IR[5:0]==6'b000110)?1:0;
	assign srlvMEMWB = (MEMWB_IR[31:26]==6'b000000&&MEMWB_IR[5:0]==6'b000110)?1:0;
	
	wire sraEXMEM,sraMEMWB;
	assign sraEXMEM = (EXMEM_IR[31:26]==6'b000000&&EXMEM_IR[5:0]==6'b000011)?1:0;
	assign sraMEMWB = (MEMWB_IR[31:26]==6'b000000&&MEMWB_IR[5:0]==6'b000011)?1:0;
	
	wire sravEXMEM,sravMEMWB;
	assign sravEXMEM = (EXMEM_IR[31:26]==6'b000000&&EXMEM_IR[5:0]==6'b000111)?1:0;
	assign sravMEMWB = (MEMWB_IR[31:26]==6'b000000&&MEMWB_IR[5:0]==6'b000111)?1:0;
	
	wire sltEXMEM,sltMEMWB;
	assign sltEXMEM = (EXMEM_IR[31:26]==6'b000000&&EXMEM_IR[5:0]==6'b101010)?1:0;
	assign sltMEMWB = (MEMWB_IR[31:26]==6'b000000&&MEMWB_IR[5:0]==6'b101010)?1:0;
	
	wire sltiEXMEM,sltiMEMWB;
	assign sltiEXMEM = (EXMEM_IR[31:26]==6'b001010)?1:0;
	assign sltiMEMWB = (MEMWB_IR[31:26]==6'b001010)?1:0;
	
	wire sltiuEXMEM,sltiuMEMWB;
	assign sltiuEXMEM = (EXMEM_IR[31:26]==6'b001011)?1:0;
	assign sltiuMEMWB = (MEMWB_IR[31:26]==6'b001011)?1:0;
	
	wire sltuEXMEM,sltuMEMWB;
	assign sltuEXMEM = (EXMEM_IR[31:26]==6'b000000&&EXMEM_IR[5:0]==6'b101011)?1:0;
	assign sltuMEMWB = (MEMWB_IR[31:26]==6'b000000&&MEMWB_IR[5:0]==6'b101011)?1:0;
	
	wire lbEXMEM,lbuEXMEM,lhEXMEM,lhuEXMEM;
	assign lbEXMEM =(EXMEM_IR[31:26]=='b100000)?1:0;
	assign lbuEXMEM=(EXMEM_IR[31:26]=='b100100)?1:0;
	assign lhEXMEM =(EXMEM_IR[31:26]=='b100001)?1:0;
	assign lhuEXMEM=(EXMEM_IR[31:26]=='b100101)?1:0;
	wire lbMEMWB,lbuMEMWB,lhMEMWB,lhuMEMWB;
	assign lbMEMWB =(MEMWB_IR[31:26]=='b100000)?1:0;
	assign lbuMEMWB=(MEMWB_IR[31:26]=='b100100)?1:0;
	assign lhMEMWB =(MEMWB_IR[31:26]=='b100001)?1:0;
	assign lhuMEMWB=(MEMWB_IR[31:26]=='b100101)?1:0;
	
	
	
	wire mfc0EXMEM,mfc0MEMWB;
	assign mfc0MEMWB =(MEMWB_IR[31:26]=='b010000&&MEMWB_IR[25:21]=='b00000)?1:0;
	assign mfc0EXMEM =(EXMEM_IR[31:26]=='b010000&&EXMEM_IR[25:21]=='b00000)?1:0;
	
	
	
	wire [4:0]IDEXrs;
	wire [4:0]IDEXrt;
	
	
	wire [4:0]EXMEMrd;
	
	assign IDEXrs = IDEX_IR[25:21];
	assign IDEXrt = IDEX_IR[20:16];
	assign EXMEMrd =(jalEXMEM)? 5'b11111:((EXMEM_IR[31:26]==6'b0||(EXMEM_IR[31:26]==6'b011111)||bgezalrEXMEM)?EXMEM_IR[15:11]:EXMEM_IR[20:16]);
	
	wire EXMEM_RegWrite;
	assign EXMEM_RegWrite= oriEXMEM|luiEXMEM|adduEXMEM|subuEXMEM|jalEXMEM|lwEXMEM|addEXMEM|
	                       addiEXMEM|addiuEXMEM|subEXMEM|andEXMEM|orEXMEM|xorEXMEM|jalrEXMEM|
								  sllEXMEM|srlEXMEM|norEXMEM|andiEXMEM|xoriEXMEM|sllvEXMEM|srlvEXMEM|
								  sraEXMEM|sravEXMEM|sltEXMEM|sltiEXMEM|sltiuEXMEM|sltuEXMEM|(EXMEM_IR[31:26]==6'b0)|
								  lbEXMEM|lbuEXMEM|lhEXMEM|lhuEXMEM|(EXMEM_IR[31:26]==6'b011111)|mfc0EXMEM|bgezalrEXMEM;
	
	assign ForwardA =(EXMEM_RegWrite==1  && EXMEMrd!=0  &&  EXMEMrd==IDEXrs)?1:0;
	assign ForwardB =(EXMEM_RegWrite==1  && EXMEMrd!=0  &&  EXMEMrd==IDEXrt)?1:0;
	
	
	
	wire [4:0]MEMWBrd;
	
	assign MEMWBrd = (jalMEMWB)?5'b11111:((MEMWB_IR[31:26]==6'b0||MEMWB_IR[31:26]==6'b011111||bgezalrMEMWB)?MEMWB_IR[15:11]:MEMWB_IR[20:16]);
	
	wire MEMWB_RegWrite;
	assign MEMWB_RegWrite= oriMEMWB|luiMEMWB|adduMEMWB|subuMEMWB|jalMEMWB|lwMEMWB|addMEMWB|
	                       addiMEMWB|addiuMEMWB|subMEMWB|andMEMWB|orMEMWB|xorMEMWB|jalrMEMWB|
								  sllMEMWB|srlMEMWB|norMEMWB|andiMEMWB|xoriMEMWB|sllvMEMWB|srlvMEMWB|
								  sraMEMWB|sravMEMWB|sltMEMWB|sltiMEMWB|sltiuMEMWB|sltuMEMWB|(MEMWB_IR[31:26]==6'b0)|
								  lbMEMWB|lbuMEMWB|lhMEMWB|lhuMEMWB|MEMWB_IR[31:26]==6'b011111|mfc0MEMWB|bgezalrMEMWB;
	
	assign ForwardA2 =(MEMWB_RegWrite==1  && MEMWBrd!=0  &&  MEMWBrd==IDEXrs)?1:0;
	//assign ForwardA2 =  (MEMWBrd==IDEXrs)?1:0;
	assign posrs=MEMWBrd;
	assign ForwardB2 =(MEMWB_RegWrite==1  && MEMWBrd!=0  &&  MEMWBrd==IDEXrt)?1:0;
	
	
	
	
	
	wire lwIDEX,lbIDEX,lbuIDEX,lhIDEX,lhuIDEX;
	
	assign lwIDEX=(IDEX_IR[31:26]=='b100011)?1:0;
	
	assign lbIDEX =(IDEX_IR[31:26]=='b100000)?1:0;
	assign lbuIDEX=(IDEX_IR[31:26]=='b100100)?1:0;
	assign lhIDEX =(IDEX_IR[31:26]=='b100001)?1:0;
	assign lhuIDEX=(IDEX_IR[31:26]=='b100101)?1:0;
	
	wire mfc0IDEX;
	assign mfc0IDEX=(IDEX_IR[31:26]=='b010000 && IDEX_IR[25:21]=='b00000)?1:0;;
	
	
	wire [4:0]IFIDrs;
	wire [4:0]IFIDrt;
	assign IFIDrs=IFID_IR[25:21];
	assign IFIDrt=IFID_IR[20:16];
	
	assign nop=((lwIDEX|lbIDEX|lbuIDEX|lhIDEX|lhuIDEX|mfc0IDEX)&&((IDEXrt==IFIDrs&&IFIDrs!=0)||(IDEXrt==IFIDrt&&IFIDrt!=0)))?1:0;
	
	
endmodule

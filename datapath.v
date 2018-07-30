`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:48:53 11/22/2016 
// Design Name: 
// Module Name:    datapath 
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
module datapath(
    input clk,
    input reset
    );
	 wire [31:0]jumpdata;
	 wire ForwardA,ForwardB;
	 wire ForwardA2,ForwardB2;
	 wire branch,inttoreg;
	 wire [31:0]Idata,Idata4;
	 wire [31:0] Wir,Wpc4,Wao;
	 wire enable;
	 assign enable = nop?0:1;
	 wire [31:0] Wmemdata;
	 wire inttoj;
	 wire regtoj;
	 wire jtoreg;
	 wire equal;
	 wire nop;
	 wire [31:0]Wgprdata;
	 wire [31:0] Mgprdata;
	 wire jtochangereg;
	 wire branch2;
	 wire branch3;
	 wire jsignal;
	 wire [3:0] jin;
	 wire [2:0] type;
	 wire hazmulti;
	 wire enamul;
	 wire HM;
	 wire ji;
	 wire eret;
	 wire IntReq;
	 wire [31:0]pc;
	 wire interrupt,in1;
	 wire bgezalr;
	 //assign in1=IntReq;
	 assign interrupt = 0;
	 /*reg inter;
	 assign interrupt = inter;
	 always @(posedge in1)
	 begin
	    inter<=1;
	 end
	 */
	 reg [31:0]tim;
	 
	 always @(posedge clk)
	 begin
	    tim<=tim + 1;
	 end
	 
	 initial begin
		tim = 0;
	 end
	 
	 
	 
	 assign enamul = !(busy && HM);
	 
	 assign jumpdata = eret?Epccp0:interrupt?'h00004180:ji?ALUoutput:((((branch3)&&jsignal)||(branch&&equal)||(branch2&&(!equal)))?(Epc4+{{14{Eir[15]}},Eir[15:0],2'b00}-4):(regtoj?(ForwardA?Mgprdata:(ForwardA2?Wgprdata:Ers)):bgezalr?(ForwardB?Mgprdata:(ForwardB2?Wgprdata:Ert)):{4'b0,Dir[25:0],2'b0}));
	 
	 instr ins(.clk(clk),.reset(reset),.j(Idata4),.data(Idata),.pc(pc),
	           .branch(eret||interrupt||(branch&&equal)|inttoj|regtoj|(branch2&&(!equal))|((branch3||bgezalr)&&jsignal)||ji),
	           .jump(jumpdata),.enable(enable&&enamul),.B(branch));
				  
				  
////////////////////////////////////////////////////	 IF_ID
	 wire [31:0]RS,RT,EXT,Dir;
	 wire [31:0]Dpc4;
	 wire regWrite,RegDst;
	 wire memtoreg;
	 wire Wbgezalr;
	 IFID ifid(.IR((((branch3||bgezalr)&&jsignal)||(branch&&equal)||(branch2&&(!equal)))?0:(regtoj?0:(enamul&&enable)?Idata:Dir)),.PC4(((branch3&&jsignal)||(branch&&equal)||(branch2&&(!equal)))?0:(regtoj?0:(enamul&&enable)?Idata4:Dpc4)),.clk(clk), .reset(reset),
	           .pc4(Dpc4),.ir(Dir));
	
    wire [31:0]GPRinput;	
	 
	 assign EXT= {16'b0,Dir[15:0]};
	 
	 controller Dcontroller(.op(Dir[31:26]), .sp(Dir[5:0]),
	                         .jtoreg(jtoreg),.inttoj(inttoj),.hazmulti(HM),.eret(eret));
	 
	 assign GPRinput=(Wjtoreg||Wjtochangereg||Wbgezalr)?(Wpc4):(memtoreg?Wmemdata:(Wao));
	 
	 GPR gpr(.reset(reset),  .clk(clk),   .pos1(Dir[25:21]),   .pos2(Dir[20:16]),
	         .pos3(Wjtoreg?5'b11111:(RegDst==1?Wir[15:11]:Wir[20:16])),  .WriteEnable(regWrite),  
				.WData(GPRinput),  .Data1(RS), .Data2(RT),.pc(pc) );
	 
	 
/////////////////////////////////////////////////////	 ID_EX
	 
	 wire [31:0] Eir,Epc4,Ers,Ert,Eext;
	 wire [3:0]alusrc;
	 wire [5:0]ALUOp;
	 wire [31:0]Ememdata;
	 wire Ejal;
	 wire [31:0]storedata;
	 wire [3:0]MULOp;
	 wire flo,fhi;
	 wire whi,wlo;
	 
	 IDEX idex(.ir(Eir),.pc4(Epc4),.rs(Ers),.ext(Eext),.rt(Ert),
	           .clk(clk),.reset(reset), .PC4(Dpc4), .IR((enamul&&(!interrupt))?(Dir):0),
				  .RS(RS),.RT(RT),.EXT(EXT),.nop(nop));
	 
	 controller Econtroller(.op(Eir[31:26]), .sp(Eir[5:0]) ,  .alusrc(alusrc), .ALUOp(ALUOp),
	                        .Branch(branch), .InttoReg(inttoreg),.jtoreg(Ejal), 
	                        .regtoj(regtoj),.jtochangereg(jtochangereg),.branch2(branch2),
									.branch3(branch3),.jin(jin),.MULOp(MULOp),.fhi(fhi),.flo(flo),
									.whi(whi),.wlo(wlo),.mumu(hazmulti),.IR(Eir),.ji(ji),.bgezalr(bgezalr));
	 
	 wire [31:0]ALUinput1=ji?{{16{Eir[15]}},Eir[15:0]}:(Ejal||jtochangereg)?Epc4:(inttoreg?{Eir[15:0],16'b0}:(ForwardA?Mgprdata:(ForwardA2?Wgprdata:Ers)));
	 wire [31:0]ALUinput2=(Ejal||jtochangereg)?Epc4:(inttoreg?{Eir[15:0],16'b0}:((alusrc==1)?{16'b0,Eir[15:0]}:((alusrc==2)?{{16{Eir[15]}},Eir[15:0]}:(ForwardB?Mgprdata:(ForwardB2?Wgprdata:Ert)))));
	 wire [31:0]ALUoutput;
	 wire [31:0]aaluoutput;
	 
	 assign storedata=(ForwardB?Mgprdata:(ForwardB2?Wgprdata:Ert));
	 
	 alu aa(.ALUOp(ALUOp),.A(ALUinput1),.B(ALUinput2),.ans(aaluoutput),
	         .equal(equal),.C(Eir[10:6]),.jsignal(jsignal),.jin(jin));
	 wire coo,st;
	 assign coo = (MULOp==0)?0:1;
	 reg start;
	 always @(posedge coo)begin
		 start<=1;
	 end
	 always @(negedge clk)begin
		 start<=0;
	 end
	 assign st = start;
	 wire [31:0]HI,LO;
	 
	 
	 wire busy;
	 multi muu(.A(ALUinput1),.B(ALUinput2),.MULOp(MULOp),.clk(clk),.reset(reset),.start(st),
	           .HI(HI),.LO(LO),.busy(busy),.wlo(wlo),.whi(whi));
				  
	assign ALUoutput = flo?LO:(fhi?HI:aaluoutput);
/////////////////////////////////////////////////////	 EXMEM
	 
	 wire [31:0] MEMinput;
	 wire [31:0] Mir;
	 wire [31:0] Mpc4;
	 wire [31:0] Mao;
	 wire [31:0] Mrt;
	 wire [31:0] Mmemdata;
	 wire memwrite,memwrite1,bri;
	 wire Mjtoreg,Mmemtoreg,Mjtochangereg,Mbgezalr;
	 wire [31:0] memoutput,brioutput;
	 wire [2:0]OOp;
	 
	 ///assign MEMinput=Mrt;
	 assign Mgprdata =(Mjtoreg||Mjtochangereg||Mbgezalr)?Mpc4:(Mmemtoreg?Dout:Mao);
	 
	 EXMEM exmem(.clk(clk), .reset(reset), .pc4(Mpc4),.ir(Mir),.ao(Mao),.rt(Mrt),
					 .IR((hazmulti)?0:Eir),.PC4(Epc4),.AO(ALUoutput),.RT(Ert),.SD(storedata),.storedata(MEMinput)
	             );
	 wire [3:0] BE;
	 BEextend Be(.A(Mao[1:0]),.type(type),.BE(BE));
	 
	 
	 
	 
	 wire [31:0]data11,bridgewdata,data22;
	 wire [3:0]BEbridge;
	 wire [1:0]briaddr;
	 wire we1,we2,irq1,irq2;
	 wire [5:0]HWInt;
	 
	 
	 bridge bribribri(
	            .PrAddr(Mao[31:2]),.PrBE(BE),
	            .PrWD(MEMinput),.PrRD(brioutput),
	            .PrWe(memwrite),.HWInt(HWInt),
					.ADDR(briaddr),.wdata(bridgewdata),.BE(BEbridge),.inte1(irq1),.inte2(irq2),
					.we1(we1),.we2(we2),.data1(data11),.data2(data22),.bri(bri)
					);
	 
	 TC tc1(.CLK_I(clk),.RST_I(reset),.ADD_I(briaddr),.WE_I(we1),.BE(BEbridge),.DAT_I(bridgewdata),
	        .IRQ(irq1),.DAT_O(data11),.ddd(dd0));
	 TC tc2(.CLK_I(clk),.RST_I(reset),.ADD_I(briaddr),.WE_I(we2),.BE(BEbridge),.DAT_I(bridgewdata),
	        .IRQ(irq2),.DAT_O(data22),.ddd(dd1));
	 
	 RAM ram(.Addr(Mao),.WriteEnable(memwrite&&(!bri)),.clk(clk),
             .reset(reset), .WData(MEMinput), .Data(memoutput),.BE(BE),.pc(pc) );//need modify
	 
	 wire [4:0]A1,A2;
	 
	 wire [31:0]Epccp0;
	 wire [31:0] Doutcp0;
	 wire mfc0,mtc0;
	 assign A1 =Mir[15:11];
	 assign A2 =Mir[15:11];
	 cp0 ccc(.A1(A1),.A2(A2),.Din(MEMinput),
	         .PC(Mpc4-8),.ExCode(0),.HWInt(HWInt),.We(mtc0),.EXLset(0),.EXLclr(0),
				.clk(clk),.rst(reset),.Dout(Doutcp0),.Epc(Epccp0),.IntReq(IntReq)
				,.SR(SR),.eret(eret));
	 
	 
	 
	 
	 wire [31:0]Dout;
	 
	 dataextend de(.A(Mao[1:0]),.Dout(Dout),.Din(bri?brioutput:memoutput),.Op(OOp));////////////////P7
	 
	 controller Mcontroller(.op(Mir[31:26]),.sp(Mir[5:0]),.memwrite(memwrite),
	                        .jtoreg(Mjtoreg),.memtoreg(Mmemtoreg), .jtochangereg(Mjtochangereg)
									,.type(type),.OOp(OOp),.mfc0(mfc0),.mtc0(mtc0),.IR(Mir),.bgezalr(Mbgezalr));
	 
	 
	 
/////////////////////////////////////////////////////  MEMWB
	 
	 wire Wmemtoreg;
	 wire Wjtochangereg;
	 assign Wmemtoreg = memtoreg;
	 assign Wgprdata =(Wjtoreg||Wjtochangereg||Wbgezalr)?Wpc4:(Wmemtoreg?Wmemdata:Wao);
	 
	 MEMWB memwb(.clk(clk),  .reset(reset),  .AO(Mao),.ao(Wao),
	             .PC4(Mpc4), .pc4(Wpc4),  .IR((interrupt)?0:Mir), .ir(Wir),
					 .MEMdata(mfc0?Doutcp0:Dout),.memdata(Wmemdata));
					 
					 
					 
	 controller Wcontroller(.op(Wir[31:26]),.sp(Wir[5:0]),.regWrite(regWrite), .RegDst(RegDst),
	                        .jtoreg(Wjtoreg),.memtoreg(memtoreg),.jtochangereg(Wjtochangereg),.IR(Wir),.bgezalr(Wbgezalr));

	wire [4:0]hel;

	HazardController HC(.MEMWB_IR(Wir),
							  .EXMEM_IR(Mir),
							  .IDEX_IR(Eir),
							  .IFID_IR(Dir),
							  .ForwardA(ForwardA),
							  .ForwardB(ForwardB),
							  .ForwardA2(ForwardA2),
							  .ForwardB2(ForwardB2),
							  .posrs(hel),
							  .nop(nop));
   wire [31:0]SR,dd1,dd0;
always @(posedge clk)
	begin
	//$display("                              %h %h %h %h|||| %h %h %h %h %h %h %h",Wir, Dir, Eir, Mir,bgezalr,Mbgezalr,Wbgezalr,SR,Idata4-8,hazmulti,dd1);
	end
endmodule

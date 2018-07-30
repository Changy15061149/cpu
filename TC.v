`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:33:01 12/13/2016 
// Design Name: 
// Module Name:    TC 
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
module TC(
    input CLK_I,
    input RST_I,
    input [3:2] ADD_I,
    input WE_I,
    input [31:0] DAT_I,
    output [31:0] DAT_O,
    output IRQ,
	 input [3:0]BE,
	 output [31:0] ddd
    );
    reg [31:0]count,ctrl,preset;
	 reg [3:0] state;
	 //reg interrupt;
	 wire [31:0]cnt;
	 assign cnt = count;
	 //wire inter;
	 wire [31:0] pre;
	 assign ddd = count;
	 assign pre = preset;
	// assign inter=interrupt;
	
	 
	 //IDLE:0  LOAD:1 CNTING:2 INT:3
	 initial begin
	   count=0;
		ctrl=0;
		preset=0;
		state=0;
	 end
	 
	 
	 wire IM,Mode,Enable;
	 assign IM = ctrl[3];
    assign Mode = (ctrl[2:1]==2'b00)?0:1;
    assign Enable = ctrl[0];
	 
	 
	  assign IRQ = (0&&(cnt==0) && (IM==1));
	 
    
	 wire ct1,ct2,ct3,ct4;
	 wire in1,in2,in3,in4;
	 assign {ct1,ct2,ct3,ct4}=ctrl;
	 assign {in1,in2,in3,in4}=preset;
	 
	 assign DAT_O =((ADD_I==0)?ctrl:(ADD_I==1)?preset:count);
    
	 always @(posedge CLK_I)
	 begin
	    //$display("QAAAAQ!!!%h %h %h %h %h %h %h",cnt,IM,ctrl,DAT_I,WE_I,ADD_I,BE);
	   if(RST_I)begin
		  count=0;
		  ctrl=0;
		  preset=0;
		end
		if(WE_I)
		begin
		   if(ADD_I==0)
			begin
			if(BE==4'b1111)
			 begin
			  ctrl<=DAT_I;
			 end
			if(BE==4'b0011)
			 begin
			  ctrl<={ct1,ct2,DAT_I[15:0]};
			 end
			if(BE==4'b1100)
			 begin
			  ctrl<={DAT_I[31:16],ct3,ct4};
			 end
			if(BE==4'b0001)
			 begin
			  ctrl<={ct1,ct2,ct3,DAT_I[7:0]};
			 end
			if(BE==4'b0010)
			 begin
			  ctrl<={ct1,ct2,DAT_I[15:8],ct4};
			 end
			if(BE==4'b0100)
			 begin
			  ctrl<={ct1,DAT_I[23:16],ct3,ct4};
			 end
			if(BE==4'b1000)
			 begin
			  ctrl<={DAT_I[31:24],ct2,ct3,ct4};
			 end
			end
			
			
			
			
			if(ADD_I==1)
			begin
			 
			  if(BE==4'b1111)
			 begin
			  preset<=DAT_I;
			//  $display("WOW!~~~~~~~~~~~~~~~~~~");
			  if(Mode==0)begin
			    begin
			     count<=DAT_I;
				  state<=2;
			    end
			  end
			 end
			if(BE==4'b0011)
			 begin
			  preset<={in1,in2,DAT_I[15:0]};
			 end
			if(BE==4'b1100)
			 begin
			  preset<={DAT_I[31:16],in3,in4};
			 end
			if(BE==4'b0001)
			 begin
			  preset<={in1,in2,in3,DAT_I[7:0]};
			 end
			if(BE==4'b0010)
			 begin
			  preset<={in1,in2,DAT_I[15:8],in4};
			 end
			if(BE==4'b0100)
			 begin
			  preset<={in1,DAT_I[23:16],in3,in4};
			 end
			if(BE==4'b1000)
			 begin
			  preset<={DAT_I[31:24],in2,in3,in4};
			 end     
		//	interrupt<=1;
			end
		end
		
		if(Mode==0)
		begin
		  if(state==2 && Enable)
		  begin
		    count<=count-1;
		    if(count==1||count==0)
		      begin
			     state<=3;
		      end
		  end
		  else if(state==3)
		  begin
			  ctrl[0]<=0;
		     state<=0;
		  end
		  else if(state==0)
		  begin
		     if(Enable )
			  begin
			     count<=pre;
				  state<=2;
			  end
		  end
		  
		  
		end
		
		if(Mode==1)
		begin
		  if(state==2 && Enable)
		  begin
		    count<=count-1;
		    if(count==1||count==0)
		      begin
			     state<=0;
		      end
		  end
		  else if(state==0)
		  begin
			     count<=pre;
				  state<=2;
		  end
		
		
		end
		
		
	 end
 	 
endmodule

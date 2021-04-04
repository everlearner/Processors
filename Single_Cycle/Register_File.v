`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
module Register_File(
	input Clk,
	input Reset,
	input [2:0] Read_Reg_Num, 
	input [2:0] Write_Reg_Num, 
	input [7:0] Write_Data, 
	input [5:0] Immediate_Raw, 
	input RegWrite, 
	input ImmSel,
	output [7:0] Read_Data, 
	output [7:0] Imm_Data
    );
	 
	 reg [7:0] RegMem[7:0];
	 reg temp;
	 
	 integer i;
	 
	always @(posedge Reset)
	begin
		if(Reset == 1)
		begin
			for (i=0 ; i<8 ; i=i+1) 
			begin
				RegMem[i] = i; // Initialsing Reg mem
			end
		end
	end
	
	assign Read_Data = RegMem[Read_Reg_Num];
	
/*	case(ImmSel) // sign extension
	1'b0:
		begin
			//temp = 1;
			// sign extension
			assign Imm_Data = {{7{Immediate_Raw[2]}}, Immediate_Raw[2:0]};
		end
	
	1'b1:
		begin
			assign Imm_Data = {{2{Immediate_Raw[5]}}, Immediate_Raw[5:0]};
		end
	endcase*/
	
	assign Imm_Data = ImmSel ? {{2{Immediate_Raw[5]}}, Immediate_Raw[5:0]}:
										{{7{Immediate_Raw[2]}}, Immediate_Raw[2:0]};
		
	always @(posedge Clk, RegWrite, ImmSel)
	begin

		if(RegWrite == 1)
		begin
			RegMem[Write_Reg_Num] = Write_Data;
		end

		/*if (ImmSel == 0) // MSB bit ==0
		begin
			temp = 1;
			// sign extension
			Imm_Data [7:0] <= {{7{Immediate_Raw[2]}}, Immediate_Raw[2:0]};
		end
		
		else // MSB bit == 1 i.e Jump Instruction
			Imm_Data [7:0] <= {{2{Immediate_Raw[5]}}, Immediate_Raw[5:0]};*/
	end	

endmodule

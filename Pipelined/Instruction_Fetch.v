`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Instruction_Fetch IF(Clk, Reset, PCSrc, ImmSel, Instruction_Code, Imm_Data);
module Instruction_Fetch(
	input Clk,
	input Reset,
	input PCSrc,
	input ImmSel,
	
	output [7:0] Instruction_Code,
	output [7:0] Imm_Data
    );
	
	reg [7:0] PC;
	Instruction_Memory mem1(PC, Reset, Instruction_Code);
	
	// Sign Extension Blocks
	assign Imm_Data = ImmSel ? {{2{Instruction_Code[5]}}, Instruction_Code[5:0]}:
										{{7{Instruction_Code[2]}}, Instruction_Code[2:0]};


	always @(posedge Clk, posedge Reset)
	begin
		if(Reset == 1)
		begin
			PC <= 0;
		end
		
		else
		begin
			//Normal increment to next instr
			if(PCSrc == 0) 
			begin
				PC <= PC + 1;
			end
			
			else //i.e. if the Instruction is Jump
			begin
				PC <= PC + 1 + Imm_Data;
			end
		end
	end
	
endmodule

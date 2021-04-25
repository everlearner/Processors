`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
module Instruction_Fetch(
	input Clk,
	input Reset,
	input PCSrc,
	input	[7:0] Imm_Data, 
	output [7:0] Instruction_Code
    );

	reg [7:0] PC;
	Instruction_Memory mem1(PC, Reset, Instruction_Code);
	
	always @(posedge Clk, posedge Reset)
	begin
		if(Reset == 1)
		begin
			PC <= 0;
		end
		
		else
		begin
			if(PCSrc == 0) // if the Instruction is not Jump
			begin
				PC <= PC + 1;
			end
			
			else // if the Instruction is Jump
			begin
				PC <= PC + 1 + Imm_Data;
			end
		end
	end
	
endmodule

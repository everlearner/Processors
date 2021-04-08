`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Control_Unit CU(Instruction_Code, PCSrc, ImmSel, ALUSrc, RegWrite);
module Control_Unit(
	input [7:0] Instruction_Code,
	output PCSrc,
	output ImmSel, 
	output ALUSrc, 
	output RegWrite
    );
	 
	assign PCSrc =  Instruction_Code[7];
	assign RegWrite = ~Instruction_Code[7];
	assign ALUSrc = Instruction_Code[6];
	assign ImmSel = Instruction_Code[7];

endmodule

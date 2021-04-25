`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module Main_Processor(
    input Clk,
    input Reset
    );

	wire PCSrc, RegWrite, ALUSrc, ImmSel; // Control Signals
	wire [7:0] Instruction_Code, Read_Data, Write_Data, Imm_Data;
	
	Control_Unit Ctrl(Instruction_Code[7:6], PCSrc, RegWrite, ALUSrc, ImmSel);
	// Control Unit Generates the Control Signals from the opcode.
	
	Instruction_Fetch IF(Clk, Reset,PCSrc, Imm_Data, Instruction_Code);
	// Instr Fetch unit generates the Instr Code, and updates the PC based on Imm_Data.
	
	Register_File RF(Clk, Reset, Instruction_Code[5:3], 
							Write_Data, Instruction_Code[5:0], RegWrite, ImmSel, Read_Data, Imm_Data);
	// Register File reads data from register and writes the data to the register.
	
	Execution_Writeback ADD(ALUSrc, Read_Data, Imm_Data, Write_Data);
	// ALU block generates the result to write back.
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module Main_Processor(
    input Clk,
    input Reset
    );

wire PCSrc, RegWrite, ALUSrc, ImmSel;

wire [7:0] Instruction_Code, Read_Data, Write_Data, Imm_Data;

//always @(posedge Reset)
//begin
//	if(Reset == 1)
//	begin
//		PCSrc=0; 
//		RegWrite=0;
//		ALUSrc=0;
//		ImmSel=0;
//	end
//	
//	else
//	begin
//		PCSrc = Instruction_Code[7];
//		RegWrite = ~ Instruction_Code[7];
//		ALUSrc = Instruction_Code[6];
//		ImmSel = Instruction_Code[7];
//	end
//end


		assign PCSrc =  Instruction_Code[7];
		assign RegWrite = ~ Instruction_Code[7];
		assign ALUSrc = Instruction_Code[6];
		assign ImmSel = Instruction_Code[7];

Instruction_Fetch IF(Clk, Reset,PCSrc, Imm_Data, Instruction_Code);

Register_File RF(Clk, Reset, Instruction_Code[5:3], Instruction_Code[5:3], Write_Data, Instruction_Code[5:0], RegWrite, ImmSel, Read_Data, Imm_Data);

Execution_Writeback ADD(ALUSrc, Read_Data, Imm_Data, Write_Data);



endmodule

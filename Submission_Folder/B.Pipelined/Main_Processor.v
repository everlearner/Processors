`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module Main_Processor(
	input Clk,
	input Reset
    );
	 
	 wire PCSrc, ImmSel, ALUSrc, RegWrite ; 
	 wire IF_ID_RegWrite, IF_ID_ALUSrc, ID_EX_RegWrite, ID_EX_ALUSrc, EX_WB_RegWrite, Fwd_signal;
	 wire [7:0] Instruction_Code, Imm_Data, IF_ID_Instruction_Code, IF_ID_Imm_Data, ID_EX_Imm_Data;
	 wire [7:0] Read_Data, ID_EX_Read_Data;
	 wire [7:0] Write_Data, EX_WB_Write_Data;
	 wire [2:0] Write_Reg_Num, ID_EX_Write_Reg_Num, EX_WB_Write_Reg_Num, Read_Reg_Num, ID_EX_Read_Reg_Num;
	 
	 Instruction_Fetch IF(Clk, Reset, PCSrc, ImmSel, Instruction_Code, Imm_Data);
	 // Instr Fetch unit generates the Instr Code, and updates the PC based on Imm_Data and PCSrc.
	 
	 Control_Unit CU(Instruction_Code, PCSrc, ImmSel, ALUSrc, RegWrite);
	 // Control Unit Generates the Control Signals from the opcode.
	 
	 IF_ID_Reg IFID(Clk, Reset, RegWrite, ALUSrc, Instruction_Code, Imm_Data, IF_ID_RegWrite, 
							IF_ID_ALUSrc, IF_ID_Instruction_Code, IF_ID_Imm_Data );
	 
	 assign Read_Reg_Num = IF_ID_Instruction_Code [5:3];
	 assign Write_Reg_Num = IF_ID_Instruction_Code [5:3];
	 
	 Register_File RF(Reset, Read_Reg_Num, EX_WB_Write_Reg_Num, EX_WB_Write_Data, EX_WB_RegWrite, Read_Data);
	 // Register File reads data from register and writes the data to the register.
	 
	 ID_EX_Reg IDEX(Clk, Reset, IF_ID_RegWrite, IF_ID_ALUSrc, Read_Data, IF_ID_Imm_Data, 
							Read_Reg_Num, Write_Reg_Num, ID_EX_RegWrite, ID_EX_ALUSrc, 
								ID_EX_Read_Data, ID_EX_Imm_Data, ID_EX_Read_Reg_Num, ID_EX_Write_Reg_Num);
	 // Read Reg Num and Write Reg Num are given to the ID/EX register
	 
	 ALU ADD(Clk, Reset, ID_EX_ALUSrc, ID_EX_Read_Data, ID_EX_Imm_Data, EX_WB_Write_Data, Fwd_signal, Write_Data);
	 // ALU block generates the result to write back and forwards it to the EX/WB register	
	 
	 EX_WB_Reg EXWB(Clk, Reset, ID_EX_RegWrite, Write_Data, ID_EX_Write_Reg_Num, EX_WB_RegWrite, 
							EX_WB_Write_Data, EX_WB_Write_Reg_Num);
	 
	 Forwarding_Unit Fwd(Clk, ID_EX_Read_Reg_Num, EX_WB_Write_Reg_Num, EX_WB_RegWrite, Fwd_signal );
	 // Forwarding Unit generates the Fwd signal as an input to ALU block
endmodule
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// IF_ID_Reg IFID(Clk, Reset, RegWrite, ALUSrc, Instruction_Code, Imm_Data, IF_ID_RegWrite, IF_ID_ALUSrc, IF_ID_Instruction_Code, IF_ID_Imm_Data );

module IF_ID_Reg(
	input Clk, 
	input Reset, 
	input RegWrite, 
	input ALUSrc, 
	input [7:0] Instruction_Code, 
	input [7:0] Imm_Data, 
	
	output reg IF_ID_RegWrite, 
	output reg IF_ID_ALUSrc, 
	output reg [7:0] IF_ID_Instruction_Code, 
	output reg [7:0] IF_ID_Imm_Data 
    );
	 
	 always @(posedge Clk, posedge Reset)
	 begin
		if(Reset == 1)
		begin
			IF_ID_RegWrite <= 0 ;
			IF_ID_ALUSrc <= 0;
			IF_ID_Instruction_Code <= 0;
			IF_ID_Imm_Data <= 0;
		end
		
		else
		begin
			IF_ID_RegWrite <= RegWrite ;
			IF_ID_ALUSrc <= ALUSrc;
			IF_ID_Instruction_Code <= Instruction_Code;
			IF_ID_Imm_Data <= Imm_Data;
		end
	 end


endmodule

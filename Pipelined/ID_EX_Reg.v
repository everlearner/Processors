`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// ID_EX_Reg IDEX(Clk, Reset, IF_ID_RegWrite, IF_ID_ALUSrc, Read_Data, IF_ID_Imm_Data, Read_Reg_Num, Write_Reg_Num, ID_EX_RegWrite, ID_EX_ALUSrc, ID_EX_Read_Data, ID_EX_Imm_Data, ID_EX_Write_Reg_Num);
module ID_EX_Reg(
	input Clk, 
	input Reset, 
	input IF_ID_RegWrite, 
	input IF_ID_ALUSrc, 
	input [7:0] Read_Data, 
	input [7:0] IF_ID_Imm_Data, 
	input [2:0] Read_Reg_Num, 
	input [2:0] Write_Reg_Num,
	
	output reg ID_EX_RegWrite, 
	output reg ID_EX_ALUSrc, 
	output reg [7:0] ID_EX_Read_Data, 
	output reg [7:0] ID_EX_Imm_Data, 
	output reg ID_EX_Write_Reg_Num
    );
	 
	 always @(posedge Clk, posedge Reset)
	 begin
		if(Reset == 1)
		begin
			ID_EX_RegWrite <=0;
			ID_EX_ALUSrc <=0;
			ID_EX_Read_Data <=0; 
			ID_EX_Imm_Data <=0;
			ID_EX_Write_Reg_Num <=0;
		end
		
		else
		begin
			ID_EX_RegWrite <= IF_ID_RegWrite;
			ID_EX_ALUSrc <= IF_ID_ALUSrc;
			ID_EX_Read_Data <= Read_Data; 
			ID_EX_Imm_Data <= IF_ID_Imm_Data;
			ID_EX_Write_Reg_Num <= Write_Reg_Num;
		end
	 end


endmodule

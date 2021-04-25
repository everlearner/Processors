`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// EX_WB_Reg EXWB(Clk, Reset, ID_EX_RegWrite, Write_Data, ID_EX_Write_Reg_Num, EX_WB_RegWrite, EX_WB_Write_Data, EX_WB_Write_Reg_Num);
module EX_WB_Reg(
	input Clk, 
	input Reset, 
	input ID_EX_RegWrite, 
	input [7:0] Write_Data, 
	input [2:0] ID_EX_Write_Reg_Num,
	
	output reg EX_WB_RegWrite, 
	output reg [7:0] EX_WB_Write_Data, 
	output reg [2:0] EX_WB_Write_Reg_Num
    );
	 
	 always @(posedge Clk, posedge Reset)
	 begin
		if(Reset == 1)
		begin
			EX_WB_RegWrite <=0;
			EX_WB_Write_Data <=0;
			EX_WB_Write_Reg_Num <=0;
		end
		
		else
		begin
			EX_WB_RegWrite <= ID_EX_RegWrite ;
			EX_WB_Write_Data <= Write_Data;
			EX_WB_Write_Reg_Num <= ID_EX_Write_Reg_Num;
		end
	 end
	 
	


endmodule

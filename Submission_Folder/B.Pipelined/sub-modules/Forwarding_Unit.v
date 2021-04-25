`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Forwarding_Unit Fwd(Clk, ID_EX_Read_Reg_Num, EX_WB_Write_Reg_Num, EX_WB_Write_Data, ID_EX_Read_Data);

module Forwarding_Unit(
	input Clk, 
	input [2:0] ID_EX_Read_Reg_Num, 
	input [2:0] EX_WB_Write_Reg_Num, 
	input EX_WB_RegWrite,
	
	output Fwd_signal

    );
	 
	assign Fwd_signal = (ID_EX_Read_Reg_Num == EX_WB_Write_Reg_Num && EX_WB_RegWrite == 1) ? 1 : 0;
	// Forwarding signal is assigned with 1 or 0 based on the condition.

endmodule

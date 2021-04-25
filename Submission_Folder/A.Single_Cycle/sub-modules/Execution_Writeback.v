`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module Execution_Writeback(
	input ALUSrc,
	input [7:0] Read_Data,
	input [7:0] Imm_Data,
	output [7:0] Result
    );
	
	reg [7:0] operand1; //Check
	
	assign Result = operand1 + Imm_Data;
	
	always @(Read_Data, Imm_Data)
	begin
		if(ALUSrc == 0) // i.e when instruction is li 
		begin
			operand1 = 0;	
		end
		
		else // i.e when instruction is addi
		begin
			operand1 = Read_Data;
		end
		
		//Result <= operand1 + Imm_Data;
	end

endmodule

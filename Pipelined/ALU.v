`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// ALU ADD(Clk, Reset, ID_EX_ALUSrc, ID_EX_Read_Data, ID_EX_Imm_Data, Write_Data);
module ALU(
	input Clk, 
	input Reset, 
	input ALUSrc, 
	input [2:0] Read_Data, 
	input [7:0] Imm_Data,
	
	output [7:0] Result
    );
	 
	reg [7:0] operand1; //Check
	
	assign Result = operand1 + Imm_Data;
	
	always @(ALUSrc, Read_Data)
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

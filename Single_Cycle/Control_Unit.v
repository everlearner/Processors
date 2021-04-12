`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Control_Unit Ctrl(opcode, PCSrc, RegWrite, ALUSrc, ImmSel);
module Control_Unit(
	input [1:0] opcode,
	output PCSrc, 
	output RegWrite, 
	output ALUSrc, 
	output ImmSel
    );

	assign PCSrc =  opcode[1];
	assign RegWrite = ~ opcode[1];
	assign ALUSrc = opcode[0];
	assign ImmSel = opcode[1];
	
endmodule

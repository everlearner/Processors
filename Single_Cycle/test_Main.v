`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:25:47 04/01/2021
// Design Name:   Main_Processor
// Module Name:   C:/Users/Keshav Kabra/Desktop/study/3-2/CompArch/assign/Single_Cycle/test_Main.v
// Project Name:  Single_Cycle
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Main_Processor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_Main;

	// Inputs
	reg Clk;
	reg Reset;

	// Instantiate the Unit Under Test (UUT)
	Main_Processor uut (
		.Clk(Clk), 
		.Reset(Reset)
	);

	initial begin
		Reset = 0;
		#4;
		Reset = 1;
		#4;
		Reset = 0;
	end
	
	initial begin
		Clk = 0;
		repeat (15)
		#10 Clk = ~ Clk;
			#10 $finish;
	end
      
endmodule


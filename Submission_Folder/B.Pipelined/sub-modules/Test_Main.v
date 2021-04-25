`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////

module Test_Main;

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
		#2;
		Reset = 1;
		#2;
		Reset = 0;
	end
	
	initial begin
		Clk = 0;
		repeat (16)
		#5 Clk = ~ Clk;
		#5 $finish;
	end
      
endmodule


`timescale 1ns / 1ps

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
		#5;
		Reset = 1;
		#10;
		Reset = 0;
	end
	
	initial begin
		Clk = 0;
		#10
		repeat (12)
		#10 Clk = ~ Clk;
		#10 $finish;
	end
      
endmodule


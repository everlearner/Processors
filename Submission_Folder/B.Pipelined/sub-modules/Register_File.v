`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Register_File RF(Reset, Read_Reg_Num, EX_WB_Write_Reg_Num, EX_WB_Write_Data, EX_WB_RegWrite, Read_Data);
module Register_File(
	input Reset, 
	input [2:0] Read_Reg_Num, 
	input [2:0] Write_Reg_Num, 
	input [7:0] Write_Data, 
	input RegWrite, 
	
	output [7:0] Read_Data
    );
	 
	reg [7:0] Reg_Mem[7:0];
	integer i;	 
	
	always @(posedge Reset)
	begin
		if(Reset == 1)
		begin
			for (i=0 ; i<8 ; i=i+1) 
			begin
				Reg_Mem[i] = i; // Initialsing Reg mem
			end
		end
	end
	
	assign Read_Data = Reg_Mem[Read_Reg_Num];
	
	always @*
	begin
		if(RegWrite == 1)
		begin
			Reg_Mem[Write_Reg_Num] = Write_Data;
		end
	end

endmodule

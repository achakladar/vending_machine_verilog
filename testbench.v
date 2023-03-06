`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:57:26 03/06/2023
// Design Name:   code
// Module Name:   C:/Users/abhis/Documents/Xilinx Project/Vending_Machine/testbench.v
// Project Name:  Vending_Machine
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: code
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench;

	// Inputs
	reg clk;
	reg rst;
	reg [1:0] x;

	// Outputs
	wire z;
	wire [1:0] change;

	// Instantiate the Unit Under Test (UUT)
	code uut (
		.clk(clk), 
		.rst(rst), 
		.x(x), 
		.z(z),
		.change(change)
	);

	initial begin
		// Initialize Inputs
		clk = 1'b0;
		rst = 1'b1;
		x = 0;

		// Wait 100 ns for global reset to finish
		#10 rst=1'b0;
      end
		always #5 clk=~clk;
initial
begin		
		// Add stimulus here
		#15 x=1;
		#20 x=1;
		#25 x=1;
		#30 $finish;

	end    
endmodule


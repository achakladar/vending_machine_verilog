`timescale 1ns / 1ps

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


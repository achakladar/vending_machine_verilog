`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:06:02 03/06/2023 
// Design Name: 
// Module Name:    code 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module code(
input clk,rst,
input [1:0]x,
output reg z,
output reg[1:0] change
    );
parameter s0 = 2'b00;
parameter s1 = 2'b01;
parameter s2 = 2'b10;

reg[1:0] ps,ns;

always@ (posedge clk)
begin
	if(rst==1)
		begin
			ns<=s0;
		end
	else
		ps<=ns;
case(ps)
	s0: begin
		if(x==2'b00)
			begin
			z<=0;
			ns<=s0;
			change<=2'b00;
			end
		else if(x==2'b01)
			begin
			z<=0;
			ns<=s1;
			change<=2'b00;
			end
		else if(x==2'b10)
			begin
			z<=0;
			ns<=s2;
			change<=2'b00;
			end
		end
	s1: begin
		if(x==2'b00)
			begin
			z<=0;
			ns<=s1;
			change<=2'b00;
			end
		else if(x==2'b01)
			begin
			z<=0;
			ns<=s2;
			change<=2'b00;
			end
		else if(x==2'b10)
			begin
			z<=1;
			ns<=s0;
			change<=2'b00;
			end
		end
	s2: begin
		if(x==2'b00)
			begin
			z<=0;
			ns<=s2;
			change<=2'b00;
			end
		else if(x==2'b01)
			begin
			z<=1;
			ns<=s0;
			change<=2'b00;
			end
		else if(x==2'b10)
			begin
			z<=1;
			ns<=s0;
			change<=2'b01;
			end
		end
endcase
end
endmodule

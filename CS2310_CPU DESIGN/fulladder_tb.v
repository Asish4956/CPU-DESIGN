`timescale 1ns/1ns

module fulladder_tb (operand1, operand2, sum);

	input wire [7:0] operand1, operand2;
	output wire [7:0] sum;
	
	wire [8:0] carry;
	
	//Initializing carry[0] to 0 using a buffer
	buf(carry[0],0);
	
	fulladder uuz[7:0] (operand1[7:0], operand2[7:0], carry[7:0], carry[8:1], sum[7:0]);
	
	
endmodule

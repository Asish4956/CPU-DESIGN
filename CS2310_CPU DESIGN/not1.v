`timescale 1ns/1ns

module not1(not_out, operand1);
	
	input wire [7:0] operand1;
	output wire [7:0] not_out;
	
	// Not operation for 8 bits of operand1
	not uvu[7:0] (not_out[7:0], operand1[7:0]);
	   
endmodule

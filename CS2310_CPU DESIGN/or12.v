`timescale 1ns/1ns

module or12(or_out, operand1, operand2);
	
	input wire [7:0] operand1, operand2;
	output wire [7:0] or_out;
	
	// Or operation for 8 bits of operand1 and operand2
	or uvu[7:0] (or_out[7:0], operand1[7:0], operand2[7:0]);
	   
endmodule

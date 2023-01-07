`timescale 1ns/1ns

module and12(and_out, operand1, operand2);
	
	input wire [7:0] operand1, operand2;
	output wire [7:0] and_out;
	
	// And operation for 8 bits of operand1 and operand2
	and uvu[7:0] (and_out[7:0], operand1[7:0], operand2[7:0]);
	   
endmodule

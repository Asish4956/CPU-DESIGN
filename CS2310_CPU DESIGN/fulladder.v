`timescale 1ns/1ns

module fulladder (a, b, carry_in, carry_out, sum);

	input wire a, b, carry_in;
	output wire carry_out, sum;
	
	wire temp1, temp2;
	
	//Implementing a full adder using two half adders(Each half adder is implemented through an XOR and an AND gate) and an or gate.
	xor (temp1, a, b);
	and (temp2, a, b);
	
	xor (sum, temp1, carry_in);
	and (temp3, temp1, carry_in);
	
	or  (carry_out, temp2, temp3);
	   
endmodule

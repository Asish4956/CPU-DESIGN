`timescale 1ns/1ps

module ALU(operand1,operand2,x1,x2,x3,x4,x5,x6,x7);

	input wire [7:0] operand1,operand2;
	output wire [7:0] x1,x2,x3,x4,x5,x6,x7;
	
	
	wire [7:0] temp1=8'b00000001;				// binary 1
	wire [7:0] temp2=8'b11111111;				// binary -1
	wire [7:0] temp3, temp4;
	
	
	not req[7:0](temp3[7:0], operand2);			// 1's complement of operand 2
	fulladder_tb req2(temp3,temp1,temp4);			// 2's complement of operand 2
	
	
	fulladder_tb uut1(operand1, operand2, x1);       	// addition
	fulladder_tb uut2(operand1, temp4, x2);			// subtraction
	fulladder_tb uut3(operand1, temp1, x3);			// incrememt
	fulladder_tb uut4(operand1, temp2, x4);			// decrement
	and12 uut5(x5, operand1, operand2);      		// and
	or12  uut6(x6, operand1, operand2);      		// or
	not1 uut7(x7, operand1);				// not

	
endmodule

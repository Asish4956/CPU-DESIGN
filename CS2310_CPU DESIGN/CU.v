`timescale 1ns/1ps

module CU(result, op, operand1, operand2);

	input wire [7:0] operand1,operand2;
	input wire [2:0] op;
	output wire [7:0] result;
	
	
	wire [7:0] x1, x2, x3, x4, x5, x6, x7;
	wire [7:0] temp1,temp2,temp3,temp4,temp5,temp6,temp7;
	wire [7:1] opcode;
	wire [2:0] op1;
	
	
	//Providing operands to arithmetic logic unit(ALU), It returns the output of all possible 7 operations.
	ALU uup(operand1,operand2,x1,x2,x3,x4,x5,x6,x7);
	
	
	//op1 array contains the complement of operation code array op
	not uus[2:0] (op1[2:0],op[2:0]);
	
	//opcode[i] is 1 if process running currently is i(decimal system)
	and uuu1(opcode[1],op1[2],op1[1],op[0]);
	and uuu2(opcode[2],op1[2],op[1],op1[0]);
	and uuu3(opcode[3],op1[2],op[1],op[0]);
	and uuu4(opcode[4],op[2],op1[1],op1[0]);
	and uuu5(opcode[5],op[2],op1[1],op[0]);
	and uuu6(opcode[6],op[2],op[1],op1[0]);
	and uuu7(opcode[7],op[2],op[1],op[0]);
	
	//For index i with opcode[i] value 1, xi array is transferred to result array
	and uuv1[7:0](temp1[7:0],opcode[1],x1[7:0]);
	and uuv2[7:0](temp2[7:0],opcode[2],x2[7:0]);
	and uuv3[7:0](temp3[7:0],opcode[3],x3[7:0]);
	and uuv4[7:0](temp4[7:0],opcode[4],x4[7:0]);
	and uuv5[7:0](temp5[7:0],opcode[5],x5[7:0]);
	and uuv6[7:0](temp6[7:0],opcode[6],x6[7:0]);
	and uuv7[7:0](temp7[7:0],opcode[7],x7[7:0]);
	or uuvvv[7:0](result[7:0],temp1[7:0],temp2[7:0],temp3[7:0],temp4[7:0],temp5[7:0],temp6[7:0],temp7[7:0]);
	
	
endmodule

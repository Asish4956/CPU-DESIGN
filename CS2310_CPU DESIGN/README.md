	      		INSTRUCTIONS TO RUN THE CODE IN LINUX
	
	
1)	Firstly download the zip file and unzip it.

2)	Open the command terminal in the files location.

3)	Run the command
		iverilog CPU_tb.v CU.v ALU.v fulladder.v fulladder_tb.v and12.v or12.v not1.v
		
4)	After the command ran successfully, Run the below command
		vvp a.out
		
5)	The command should have ran successfully and an output similar to the below should have popped.
	Output:
		VCD info: dumpfile CPU_tb.vcd opened for output.
		Test Completed
		
6)	To check the working of code in GTKwave, Run the below command.
		gtkwave CPU_tb.vcd
		
7)	In GTKwave, Click on CPU_tb ,then instruction[18:0] and result[7:0] must have popped in the signals column.
	Click on instruction[18:0] and result[7:0].
	Under the column of time click on instruction[18:0] and result[7:0] again.
	Now each bit of instruction and result is displayed.
	
8)	Since in the test bench the time delay given by me is 20ns, for every 20ns the instruction changes.
	So in the wave form if you click 
	in between 0 to 20ns, A red line is displayed in the waveform and you can view bit representation of instruction 1 and it's result.
	in between 20ns to 40ns, you can view the bit representation of instruction 2 and it's result.
	....

9)	In each time interval, 
	the first 3 bits in the instruction are operation code.
	Next 8 bits correspond to operand 1.
	Next 8 bits correspond to operand 2.
	Based on operand 1 and operand 2 the result can be verified.

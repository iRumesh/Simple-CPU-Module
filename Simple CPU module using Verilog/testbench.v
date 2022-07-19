/* 
REG. NO: SEU/IS/13/EG/091
NAME: P.RUMESH
THIS VERILOG CODE IS FOR TESTBENCH
CHECKING FOR RANDOM INPUTS WHICH WE ARE GIVING MANUALLY AND CHECKING OUTPUT.
*/

// DEFINING TESTBENCH
module testbench;
reg [3:0]in_A, in_B;	// TWO INPUTS EACH ARE FOUR BITS LONG
reg[7:0] in_ctrl_bus;	// CONTROL BUS INPUT EIGHT BIT LONG
reg in_clk;
wire [3:0]out_Q;	// OUTPUT 4 BIT LONG

top dut(in_A, in_B, in_ctrl_bus, in_clk, out_Q);

initial begin
in_clk=0;								//CLOCK INITIALIZATION
#5 in_A=4'b0000; in_B=4'b0000; in_ctrl_bus=8'b00000000;			//CHECKING RANDOM COMBINATIONS
#5 in_A=4'b1101; in_B=4'b0010; in_ctrl_bus=8'b10000000;	
#5 in_A=4'b1110; in_B=4'b0111; in_ctrl_bus=8'b01011000;
#5 in_A=4'b1001; in_B=4'b1010; in_ctrl_bus=8'b10110000;	
#5 in_A=4'b1010; in_B=4'b0100; in_ctrl_bus=8'b11010000;
#5 in_A=4'b1101; in_B=4'b0010; in_ctrl_bus=8'b10111000;	
#5 in_A=4'b1110; in_B=4'b1100; in_ctrl_bus=8'b11000110;
#5 in_A=4'b0001; in_B=4'b0010; in_ctrl_bus=8'b11100000;	
#5 in_A=4'b0110; in_B=4'b0101; in_ctrl_bus=8'b01011000;
#5 in_A=4'b1001; in_B=4'b1110; in_ctrl_bus=8'b10110000;	
#5 in_A=4'b1111; in_B=4'b1111; in_ctrl_bus=8'b11111111;
#5 $finish;
end
always begin
#5 in_clk=~in_clk;		//MAKING CLOCK TICKING
end
endmodule


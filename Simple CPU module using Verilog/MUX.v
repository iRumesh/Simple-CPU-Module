/* 
REG. NO: SEU/IS/13/EG/091
NAME: P.RUMESH
THIS VERILOG CODE IS FOR MULTIPLEXER IN THE GIVEN DIAGRAM
*/

// DEFINING MUX
module MUX(B, R, MUX_SEL, M);	
input [3:0] B;
input [3:0] R;		//TWO INPUTS EACH FOUR BIT LONG
input MUX_SEL;		//MUX_SEL INPUT CAN BE 0 OR 1
output reg[3:0] M;	//FOUR BIT OUTPUT M SAVED IN REGISTER

always@(*)begin
	if (MUX_SEL == 1) // IF MUX_SEL = 1 DISPLAY B OR ELSE DISPLAY R
		M = B;
		else
		M = R;
	end
	
endmodule
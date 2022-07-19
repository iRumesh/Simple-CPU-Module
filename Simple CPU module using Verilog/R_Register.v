/* 
REG. NO: SEU/IS/13/EG/091
NAME: P.RUMESH
THIS VERILOG CODE IS FOR R REGISTER IN THE GIVEN DIAGRAM
*/


// DEFINING R REGISTER
module R_Reg(S, clk, R_EN, R); 
input [3:0] S;			//FOUR BIT INPUT S
input clk;			//CLOCK INPUT
input R_EN;			//R_EN INPUT
output reg [3:0] R;		//R OUTPUT SAVED IN REGISTER

always@(posedge clk)begin
	if (R_EN==1)		// IF R_EN==1 DISPLAY S ELSE DISPLAY R
		R=S;
	else
		R=R;
	end
endmodule
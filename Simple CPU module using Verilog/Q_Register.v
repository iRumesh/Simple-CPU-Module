/* 
REG. NO: SEU/IS/13/EG/091
NAME: P.RUMESH
THIS VERILOG CODE IS FOR Q REGISTER IN THE GIVEN DIAGRAM
*/

// DEFINING Q REGISTER
module Q_Reg(S, clk, Q_EN, Q);

input[3:0] S;		//FOUR BIT INPUT S
input clk;		//CLOCK INPUT
input Q_EN;		//Q_EN INPUT
output reg[3:0] Q;	//Q OUTPUT SAVED IN REGISTER

always@(posedge clk)begin
	if (Q_EN==1)	// IF Q_EN==1 DISPLAY S ELSE DISPLAY Q
		Q=S;
	else
		Q=Q;
	end
endmodule
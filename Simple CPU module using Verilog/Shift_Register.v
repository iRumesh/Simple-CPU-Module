/* 
REG. NO: SEU/IS/13/EG/091
NAME: P.RUMESH
THIS VERILOG CODE IS FOR SHIFT REGISTER IN THE GIVEN DIAGRAM
*/

// DEFINING SHIFT REGISTER
module Shift_Reg(X, SHIFT, S );

input [3:0] X;		//FOUR BIT INPUT X 
input [1:0] SHIFT;	//TWO BIT INPUT SHIFT
output  reg [3:0] S;	//FOUR BIT OUTPUT S SAVED IN REGISTER 

always@(*) begin
case(SHIFT)
       2'b00:
	 S = X;  
       2'b01:
	 S = X << 1;
       2'b10:
	 S = X << 2; 
       2'b11:
	 S = X << 3;		// ASSIGNING THE FOUR CASES ACCORDING TO THE OPERATIONS 
 endcase
 end
endmodule
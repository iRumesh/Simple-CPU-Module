/* 
REG. NO: SEU/IS/13/EG/091
NAME: P.RUMESH
THIS VERILOG CODE IS FOR ARITHMETIC LOGIC UNIT IN THE GIVEN DIAGRAM
*/

// DEFINING ALU
module ALU(A, M, ALU_OP, X);

input [3:0] A;
input [3:0] M;		//FOUR BIT INPUTS A AND M
input [2:0] ALU_OP;	//THREE BIT INPUT ALU_OP
output reg [3:0] X;	//FOUR BIT OUTPUT X SAVED IN REGISTER


always@(*) begin
case(ALU_OP)		
        3'b000: 
           X = A; 
        3'b001: 
           X = A + M;
        3'b010: 
           X = A - M;
        3'b011: 
           X = M-A;
        3'b100: 
           X = -(A+M);
        3'b101: 
           X = A & M;
        3'b110: 
           X = A | M;
        3'b111: 
           X = A ^ M;	//ASSIGNING THE CASES ACCORDING TO THE GIVE OPERATIONS
          endcase
 end
endmodule
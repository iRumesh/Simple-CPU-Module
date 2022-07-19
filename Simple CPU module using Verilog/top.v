/* 
REG. NO: SEU/IS/13/EG/091
NAME: P.RUMESH
THIS VERILOG CODE IS FOR FULL IMPLEMENTATION OF GIVEN DIAGRAM
WE ARE COMBINIG EACH BLOCKS INTO A TOP MODULE AND GETTING A OUTPUT
*/
// DEFINING A TOP MODULE
module top(A, B, ctrl_bus, clk, Q);

input [3:0] A;
input [3:0] B;		// FOUR BIT TWO INPUTS A AND B
input [7:0] ctrl_bus;	// EIGHT BIT INPUT CONTROL BUS
input clk;		// CLOCK INPUT
output [3:0] Q;		// FOUR BIT OUTPUT Q


wire [3:0] w0,w1,w2,w3,w4;	// ASSIGNING A INTERMEDIATE RESULTS IN WIRES, ALL ARE FOUR BIT LONG


MUX M1(B, w0, ctrl_bus[3], w1);
ALU A1(A, w1, ctrl_bus[2:0], w2);
Shift_Reg S1(w2, ctrl_bus[5:4], w3);
Q_Reg Q1(w3, clk, ctrl_bus[6], Q);
R_Reg R1(w2, clk, ctrl_bus[7], w0);	// HERE ALL CONTROL BUS CONNECTIONS ARE FOLLOWED ACCORDING TO d PART IN QUESTION


endmodule
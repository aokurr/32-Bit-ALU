module alu_2_bit (input [1:0]A,B,input S0,S1,S2,Ci,output [1:0]F,output Co);
wire carry_out;
alu_1_bit q0(A[0],B[0],S0,S1,S2,Ci, F[0],carry_out);
alu_1_bit q1(A[1],B[1],S0,S1,S2,carry_out,F[1],Co);

endmodule
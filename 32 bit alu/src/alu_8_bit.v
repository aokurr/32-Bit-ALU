module alu_8_bit (input [7:0]A,B,input S0,S1,S2,Ci,output [7:0]F,output Co);
wire Co1,Co2,Co3;
alu_2_bit q4 (A[1:0],B[1:0],S0,S1,S2,Ci,F[1:0],Co1);
alu_2_bit q3 (A[3:2],B[3:2],S0,S1,S2,Co1,F[3:2],Co2);
alu_2_bit q2 (A[5:4],B[5:4],S0,S1,S2,Co2,F[5:4],Co3);
alu_2_bit q1 (A[7:6],B[7:6],S0,S1,S2,Co3,F[7:6],Co);
endmodule
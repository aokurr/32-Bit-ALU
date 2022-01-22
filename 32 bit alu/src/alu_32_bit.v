module alu_32_bit (A,B,S0,S1,S2,Ci,F,Co);
input [31:0]A,B;
input S0,S1,S2,Ci;
output[31:0]F;
output Co;

wire Co1,Co2,Co3;
alu_8_bit q4 (A[7:0],B[7:0],S0,S1,S2,Ci,F[7:0],Co1);
alu_8_bit q3 (A[15:8],B[15:8],S0,S1,S2,Co1,F[15:8],Co2);
alu_8_bit q2 (A[23:16],B[23:16],S0,S1,S2,Co2,F[23:16],Co3);
alu_8_bit q1 (A[31:24],B[31:24],S0,S1,S2,Co3,F[31:24],Co);
endmodule
module alu_1_bit (input A,B,S0,S1,S2,Ci,output F,Co);
wire kablo[7:0];

full_adder q0_2_4(kablo[0],Co,A,B,Ci,S1,S2);/*add,sub,slt*/
xor q1(kablo[1],A,B);
nor q5(kablo[5],A,B);
and q6(kablo[6],A,B);
or q7(kablo[7],A,B);

m81 q8(kablo[0],kablo[1],kablo[0],kablo[3],Co,kablo[5],kablo[6],kablo[7],S0,S1,S2,F);
endmodule
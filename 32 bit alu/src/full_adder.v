module full_adder(sum, carry_out, a, b, carry_in,S1,S2);
input a, b, carry_in,S1,S2;
output sum, carry_out;
wire temp_sum, first_carry_out, second_carry_out,x_orb,S1_or_S2;
or(S1_or_S2,S1,S2);
xor q (x_orb,b,S1_or_S2);
half_adder first_sum(temp_sum, first_carry_out, a, x_orb);
half_adder second_sum(sum, second_carry_out, temp_sum, carry_in);
or final_carry_out(carry_out, second_carry_out, first_carry_out);

endmodule
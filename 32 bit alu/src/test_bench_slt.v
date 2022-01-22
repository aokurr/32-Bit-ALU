`define DELAY 20
module test_bench_slt();
reg [31:0]a,b; 
reg S0,S1,S2,Ci;
wire [31:0]F;
wire Co;
alu_32_bit ahmet (a, b,S0,S1,S2,Ci,F,Co);

initial begin
a = 32'b01000001000000010000000100000001; b = 32'b00100001011000010110000101100001; Ci=1'b1;  S0 = 1'b0; S1 = 1'b0; S2 = 1'b1;
#`DELAY;

a = 32'b00000001000000010000000100001111; b = 32'b11100001001000010110000001100001; Ci=1'b1;  S0 = 1'b0; S1 = 1'b0; S2 = 1'b1;
#`DELAY;

a = 32'b00100101000000010000000100000111; b = 32'b01100001011000010110000101100111; Ci=1'b1;  S0 = 1'b0; S1 = 1'b0; S2 = 1'b1;
#`DELAY;

a = 32'b10100101000100010000000100000111; b = 32'b01100001011001010110000101100111; Ci=1'b1;  S0 = 1'b0; S1 = 1'b0; S2 = 1'b1;
#`DELAY;

end

 
 
initial
begin
$monitor("time = %2d,a =%32b,b=%32b, B<A=%1b",$time,a,b,Co);
end
 
endmodule
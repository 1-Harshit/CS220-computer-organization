`include "./helloworld.v"
module eight_bit_carry_look_ahead_adder(sum, cout, a, b, cin);
output [7:0] sum;
output cout;
input [7:0] a, b;
input cin;
wire [7:0] carry;
one_bit_carry_look_ahead_adder OBCLAA_0(sum[0], carry[0], a[0], b[0], cin);
one_bit_carry_look_ahead_adder OBCLAA_1(sum[1], carry[1], a[1], b[1], carry[0]);
one_bit_carry_look_ahead_adder OBCLAA_2(sum[2], carry[2], a[2], b[2], carry[1]);
one_bit_carry_look_ahead_adder OBCLAA_3(sum[3], carry[3], a[3], b[3], carry[2]);
one_bit_carry_look_ahead_adder OBCLAA_4(sum[4], carry[4], a[4], b[4], carry[3]);
one_bit_carry_look_ahead_adder OBCLAA_5(sum[5], carry[5], a[5], b[5], carry[4]);
one_bit_carry_look_ahead_adder OBCLAA_6(sum[6], carry[6], a[6], b[6], carry[5]);
one_bit_carry_look_ahead_adder OBCLAA_7(sum[7], cout, a[7], b[7], carry[6]);
endmodule
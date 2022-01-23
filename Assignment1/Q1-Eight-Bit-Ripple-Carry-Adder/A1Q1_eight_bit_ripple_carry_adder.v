`include "./A1Q1_one_bit_full_adder.v"

module eight_bit_ripple_carry_adder (sum, cout, a, b, cin);
	input [7:0]a;
	input [7:0]b;
	input cin;
	output [7:0]sum;
	output cout;

	wire [6:0]carry;

	one_bit_full_adder OBFA0 (sum[0], carry[0], a[0], b[0], cin);
	one_bit_full_adder OBFA1 (sum[1], carry[1], a[1], b[1], carry[0]);
	one_bit_full_adder OBFA2 (sum[2], carry[2], a[2], b[2], carry[1]);
	one_bit_full_adder OBFA3 (sum[3], carry[3], a[3], b[3], carry[2]);
	one_bit_full_adder OBFA4 (sum[4], carry[4], a[4], b[4], carry[3]);
	one_bit_full_adder OBFA5 (sum[5], carry[5], a[5], b[5], carry[4]);
	one_bit_full_adder OBFA6 (sum[6], carry[6], a[6], b[6], carry[5]);
	one_bit_full_adder OBFA7 (sum[7], cout, a[7], b[7], carry[6]);
endmodule

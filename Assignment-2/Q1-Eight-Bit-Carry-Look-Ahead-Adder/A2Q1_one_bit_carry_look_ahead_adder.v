module one_bit_carry_look_ahead_adder(sum, cout, a, b, cin);
output sum;
output cout;
input a, b, cin;
wire p, g;
assign p = a^b;
assign g = a & b;
assign sum = p^c;
assign cout = (g || (p  &  cin));
endmodule

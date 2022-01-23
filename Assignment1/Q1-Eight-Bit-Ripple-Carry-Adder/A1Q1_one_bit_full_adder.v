module one_bit_full_adder (sum, cout, a, b, cin);
	input a, b, cin;
	output sum, cout;
	
	assign sum = a ^ b ^ cin;
	assign cout = (a & b) | (a & cin) | (b & cin);	
endmodule

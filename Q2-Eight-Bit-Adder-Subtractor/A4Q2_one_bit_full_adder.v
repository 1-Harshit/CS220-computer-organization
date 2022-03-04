module one_bit_full_adder (
    sum, 
    cout, 
    a, 
    b,
    opcode, 
    cin
    );
	input a, b, opcode, cin;
	output sum, cout;
	assign sum = a ^ (opcode ^ b) ^ cin;
	assign cout = (a & (opcode ^ b)) | (a & cin) | ((opcode ^ b) & cin);	
endmodule

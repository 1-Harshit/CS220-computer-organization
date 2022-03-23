`include "A5Q1_gcd.v"
module gcd_tb ();
	reg reset_reg = 1;
	reg clk = 0;
	reg rst = 0;
	reg [7:0] a = 8'b00000011;
	reg [7:0] b = 8'b00000110;
	wire [7:0] gcd;
	always #(10) clk = ~clk;

	gcd GCD1(.clk(clk), .rst(rst), .a(a), .b(b), .c(gcd));

	initial begin
		#15;
		$monitor("GCD: %b[%d]", gcd, gcd);
		$display("a: %b[%d]  b: %b[%d]", a, a, b, b);
		#5000;

		#25 rst = 1;
		#25 rst = 0;
		a = 27; b = 18;
		$display("a: %b[%d]  b: %b[%d]", a, a, b, b);
		#5000

		#25 rst = 1;
		#25 rst = 0;
		a = $random%256; b = $random%256;
		$display("a: %b[%d]  b: %b[%d]", a, a, b, b);
		#5000
		
		#25 rst = 1;
		#25 rst = 0;
		a = $random%256; b = $random%256;
		$display("a: %b[%d]  b: %b[%d]", a, a, b, b);
		#5000
		
		#25 rst = 1;
		#25 rst = 0;
		a = $random%256; b = $random%256;
		$display("a: %b[%d]  b: %b[%d]", a, a, b, b);
		#5000
		
		#25 rst = 1;
		#25 rst = 0;
		a = $random%256-1; b = $random%256+2;
		$display("a: %b[%d]  b: %b[%d]", a, a, b, b);
		#5000
		
		#25 rst = 1;
		#25 rst = 0;
		a = 2; b = 4;
		$display("a: %b[%d]  b: %b[%d]", a, a, b, b);
		#5000;
		
		#25 rst = 1;
		#25 rst = 0;
		a = $random%256; b = $random%256;
		$display("a: %b[%d]  b: %b[%d]", a, a, b, b);
		#5000		

		#25 rst = 1;
		#25 rst = 0;
		a = $random%256; b = $random%256-1;
		$display("a: %b[%d]  b: %b[%d]", a, a, b, b);
		#5000		

		#25 rst = 1;
		#25 rst = 0;
		a = 240; b = 120;
		$display("a: %b[%d]  b: %b[%d]", a, a, b, b);
		#5000

		#25 rst = 1;
		#25 rst = 0;
		a = 220; b = 22;
		$display("a: %b[%d]  b: %b[%d]", a, a, b, b);
		#5000

		#25 rst = 1;
		#25 rst = 0;
		a = 36; b = 48;
		$display("a: %b[%d]  b: %b[%d]", a, a, b, b);
		#5000

		#25 rst = 1;
		#25 rst = 0;
		a = 4; b = 93;
		$display("a: %b[%d]  b: %b[%d]", a, a, b, b);
		#5000
		
		#25 rst = 1;
		#25 rst = 0;
		a = 46; b = 92;
		$display("a: %b[%d]  b: %b[%d]", a, a, b, b);
		#5000

		#25 rst = 1;
		#25 rst = 0;
		a = 64; b = 128;
		$display("a: %b[%d]  b: %b[%d]", a, a, b, b);
		#5000

		$finish;
	end

	
endmodule
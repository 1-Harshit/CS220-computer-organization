`include "./A1Q1_eight_bit_ripple_carry_adder.v"

module eight_bit_adder_top ();

	reg [7:0] a;
	reg [7:0] b;
	reg cin;

	wire [7:0] sum;
	wire cout;

	eight_bit_ripple_carry_adder EBA (sum, cout, a, b, cin);

	initial begin
		$monitor("Time: %4d, %d + %d = %d, cout: %d", $time, a, b, sum, cout);
		repeat(20) begin
			#5
			a = $random % 256; b = $random % 256; cin = $random % 2;
		end
	end
endmodule

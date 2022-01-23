`include "./A1Q1_eight_bit_ripple_carry_adder.v"

module eight_bit_adder_top ();

	reg [7:0] a;
	reg [7:0] b;
	reg cin;

	wire [7:0] sum;
	wire cout;

	eight_bit_ripple_carry_adder EBA (sum, cout, a, b, cin);

	initial begin
		// We've also tested by varrying cin to properly test the module
		$monitor("Time: %4d, %d + %d + %d = %d, cout: %d", $time, a, b, cin, sum, cout);
		repeat(15) begin
			#5
			a = $random % 256; b = $random % 256; cin = $random % 2;
		end
	end
endmodule

`include "./A1Q1_eight_bit_ripple_carry_adder.v"

module eight_bit_adder_tb();

	reg [7:0] a; //the 2 numbers
	reg [7:0] b;
	reg cin;

	wire [7:0] sum; //result
	wire cout;

	eight_bit_ripple_carry_adder EBA (sum, cout, a, b, cin); 

	initial begin
		// We've also tested by varying cin to properly test the module
		$monitor("Time: %4d, %d + %d + %d = %d, cout: %d", $time, a, b, cin, sum, cout);
		repeat(15) begin
			#5
			a = $urandom % 256; b = $urandom % 256; cin = $urandom % 2;
		end
	end
endmodule

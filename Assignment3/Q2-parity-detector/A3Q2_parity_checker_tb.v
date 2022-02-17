`include "A3Q2_parity_checker.v"
module test_bench();
	reg[2:0] seq=3'd0;
	wire out;
	reg reset;
	wire clk;

	clock_module C1(clk);
	parity_checker P1(out,seq,reset,clk);
	
	initial begin
		#3
		// $display("Sequence Result");
		repeat(8) begin //edit here to change number of test cases, change in clock module also below
			#16
			$display("%b %b", seq, out);
			reset=1;
			// $display(" ");
			#2 reset=0;
			seq=seq+1;
		end
	end

endmodule

module clock_module(clk);
	output reg clk=1'b1;
	initial begin
		repeat(8) begin //edit here to change number of test cases
			repeat(6) begin
				#3 clk=~clk;
			end
		end
	end
endmodule
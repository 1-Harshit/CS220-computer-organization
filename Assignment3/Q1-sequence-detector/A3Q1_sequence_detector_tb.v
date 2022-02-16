`include "A3Q1_sequence_detector_full.v"
module test_bench();
	reg[7:0] seq=8'd0;
	wire [7:0] out;
	reg reset;
	wire clk;

	clock_module C1(clk);
	sequence_detector_full S1(out,seq,reset,clk);
	
	initial begin
		$display("Sequence Result");
		repeat(15) begin //edit here to change number of test cases
			#47
			$display("%b %b", seq, out);
			reset=1;
			#1 reset=0;
			seq=seq+1;
		end
	end

endmodule

module clock_module(clk);
	output reg clk=1'b1;
	initial begin
		repeat(15) begin //edit here to change number of test cases
			repeat(16) begin
				#3 clk=~clk;
			end
		end
	end
endmodule
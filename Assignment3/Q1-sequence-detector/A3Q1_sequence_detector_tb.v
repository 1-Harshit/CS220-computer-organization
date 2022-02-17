`include "A3Q1_sequence_detector_full.v"
module test_bench();
	reg[7:0] seq=8'd0;
	wire [7:0] out;
	reg reset;
	wire clk;

	clock_module C1(clk);
	sequence_detector_full S1(out,seq,reset,clk);
	
	initial begin
		#3
		$display("Sequence Result");
		repeat(128) begin //edit here to change number of test cases, change in clock module also below
			#47
			$display("%b %b", seq, out);
			reset=1;
			#1
			reset=0;
			seq=seq+1;
		end
	end

endmodule

module clock_module(clk); //it is the clock
	output reg clk=1'b1;
	initial begin
		repeat(128) begin //edit here to change number of test cases
			repeat(16) begin
				#3 clk=~clk;
			end
		end
	end
endmodule
`include "A3Q1_sequence_detector.v"
module sequence_detector_tb();
	reg clk;
	wire [7:0] out, o;
	reg [7:0] seq;
	wire [3:0] q, i;
	wire d;

	sequence_detector sd (out, clk, seq, q, i, d, o);
	
	initial begin
		clk = 0;
		seq=8'b01101010;
		$monitor("out: %b | seq: %b | %b %d %b %b", out, seq, q, i, d, o);
		repeat(500) begin
			#1 clk = ~clk;
		end
		$finish;
	end
	
endmodule
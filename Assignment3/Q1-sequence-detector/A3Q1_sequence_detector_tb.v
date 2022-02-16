`include "A3Q1_sequence_detector.v"
module sequence_detector_tb();
	reg clk;
	wire [7:0] out;
	reg [7:0] seq;
	reg reset;
	sequence_detector sd (out, seq, reset, clk);
	
	always #1 clk = ~clk;

	initial begin
		clk = 0;
		$monitor("out: %b", out);

		seq=8'b01101010;
		$display("-----\nseq: %b", seq);
		#50;

		reset=1'b1;
		#2 reset=1'b0;
		seq=8'b10101010;
		$display("-----\nseq: %b", seq);
		#50;

		reset=1'b1;
		#2 reset=1'b0;
		seq=8'b10111010;
		$display("-----\nseq: %b", seq);
		#50;
		
		reset=1'b1;
		#2 reset=1'b0;
		seq=8'b01101110;
		$display("-----\nseq: %b", seq);
		#50;

		reset=1'b1;
		#2 reset=1'b0;
		seq=8'b10101010;
		$display("-----\nseq: %b", seq);
		#50;

		reset=1'b1;
		#2 reset=1'b0;
		seq=8'b01010100;
		$display("-----\nseq: %b", seq);
		#50;

		reset=1'b1;
		#2 reset=1'b0;
		seq=8'b00010100;
		$display("-----\nseq: %b", seq);
		#50;

		reset=1'b1;
		#2 reset=1'b0;
		seq=8'b11101000;
		$display("-----\nseq: %b", seq);
		#50;

		reset=1'b1;
		#2 reset=1'b0;
		seq=8'b10100010;
		$display("-----\nseq: %b", seq);
		#50;

		reset=1'b1;
		#2 reset=1'b0;
		seq=8'b10111011;
		$display("-----\nseq: %b", seq);
		#50;

		reset=1'b1;
		#2 reset=1'b0;
		seq=8'b00100100;
		$display("-----\nseq: %b", seq);
		#50;

		reset=1'b1;
		#2 reset=1'b0;
		seq=8'b00101000;
		$display("-----\nseq: %b", seq);
		#50;

		reset=1'b1;
		#2 reset=1'b0;
		seq=8'b01010001;
		$display("-----\nseq: %b", seq);
		#50;

		reset=1'b1;
		#2 reset=1'b0;
		seq=8'b00101011;
		$display("-----\nseq: %b", seq);
		#50;

		reset=1'b1;
		#2 reset=1'b0;
		seq=$random%256;
		$display("-----\nseq: %b", seq);
		#50;

		$finish;
	end
endmodule
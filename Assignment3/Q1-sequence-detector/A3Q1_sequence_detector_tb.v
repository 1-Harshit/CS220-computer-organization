`include "A3Q1_sequence_detector.v"
module sequence_detector_tb();
	reg [7:0] out=8'b00000000;
	reg [7:0] seq=8'd11;
	reg i=0;
	wire o;
	wire clk;
	integer count=7;
	wire[2:0] deb;
	clock_module C1(clk);
	sequence_detector sd (o,deb,i, clk);
	initial begin
		// $monitor("%b %b %b",deb,i,o);
	end
	always @(negedge clk) begin
		i=seq[count];
		#1
		out[count]=o;
		count=count-1;
		if(count==-1) begin
			$display("%b %b", out, seq);
		  count=7;
		end
	end
endmodule

module clock_module(clk);
	output reg clk=1'b1;
	initial begin
		repeat(17) begin
			#3 clk=~clk;
		end
	end
endmodule
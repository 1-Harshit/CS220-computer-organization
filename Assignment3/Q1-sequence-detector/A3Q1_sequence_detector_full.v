`include "A3Q1_sequence_detector_unit.v"
module sequence_detector_full(out,seq,reset,clk);
	output reg [7:0] out=8'b00000000;
	input [7:0] seq;
	input reset;
	input clk;
	
	reg i=0;
	wire o;
	integer count=7;
	wire[2:0] deb;
	sequence_detector_unit sd (o,deb,i, clk,reset);
	initial begin
		// $monitor("%b %b %b",deb,i,o);
	end
	always @(negedge clk) begin
		i=seq[count];
		#1
		out[count]=o;
		count=count-1;
		if(count==-1) begin
			// $display("%b %b", out, seq);
		  count=7;
		end
	end
endmodule

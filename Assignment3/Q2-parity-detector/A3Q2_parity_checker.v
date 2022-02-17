`include "A3Q2_t_flip_flop.v"
module parity_checker(out,seq,reset,clk);
	output reg out;
	input [2:0] seq;
	input reset;
	input clk;
	
	integer count=2;
	reg i;
	wire o;
	t_flip_flop T1(o,i,clk,reset);
	always @(negedge clk) begin
		i=seq[count];
		count=count-1;
		if(count==-1) begin
			// $display("%b %b", out, seq);
		  count=2;
		end
	end
	always @(posedge clk) begin
		out=~o;
	end
endmodule

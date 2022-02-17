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
	always @(negedge clk) begin //we feed inputs at negative edge
		i=seq[count]; //every clock cycle, it feeds one bit of the 3 bit sequence to t_flip_flip
		count=count-1;
		if(count==-1) begin
		  count=2; //resets after 3 bits are done
		end
	end
	always @(posedge clk) begin
		out=o;
	end
endmodule

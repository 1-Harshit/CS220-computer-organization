`include "A3Q1_sequence_detector.v"
module bit_separator(out,seq,clk);
    input[7:0] seq;
    input clk;
	output reg [7:0] out=8'b00000000;

	reg i=0;
	wire o;
	integer count=7;
	wire[2:0] deb;
	sequence_detector sd (o,deb,i, clk);
	always @(negedge clk) begin
		i=seq[count];
		#1
		out[count-1]=o;
		count=count-1;
        // $display("%b %b %b",deb,i,o);
		if(count==-1) begin
			// $display("%b %b", out, seq);
		  count=7;
		end
	end
endmodule
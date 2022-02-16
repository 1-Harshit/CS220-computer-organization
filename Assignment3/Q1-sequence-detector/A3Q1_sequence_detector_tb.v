`include "A3Q1_sequence_detector.v"
module test();
	reg[7:0] seq=8'd0;
	wire [7:0] out;
	sequence_detector_full S1(out,seq);
	initial begin
		repeat(25) begin
			#48
			$display("%b %b", out, seq);
			seq=seq+1;
		end
	end

endmodule
module sequence_detector_full(out,seq);
	output reg [7:0] out=8'b00000000;
	input [7:0] seq;

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
			// $display("%b %b", out, seq);
		  count=7;
		end
	end
endmodule

module clock_module(clk);
	output reg clk=1'b1;
	initial begin
		repeat(25) begin
			repeat(16) begin
				#3 clk=~clk;
			end
		end
	end
endmodule
`include "A3Q1_sequence_detector_unit.v"
module sequence_detector_full(out,seq,reset,clk); //this circuit takes the 8 bit number and feeds it bit by bit to sequence_detector_unit
	output reg [7:0] out=8'd0;
	input [7:0] seq;
	input reset;
	input clk;
	
	reg i=0;
	wire o;
	integer count=7;

	sequence_detector_unit sd (o,i, clk,reset);
	always @(negedge clk) begin
		i=seq[count]; //every clock cycle it feeds one bit of the 8 bit number to the sequence_detector_unit
		#1
		out[count]=o;
		count=count-1;
		if(count==-1) begin //it resets every 8 cycles as our input is 8 bit
		  count=7;
		end
	end
endmodule

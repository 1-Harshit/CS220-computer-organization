`include "A3Q1_d_flip_flop.v"
module sequence_detector (outp, seq, reset, clk);

parameter SEQUENCE=4'b1010;
parameter INPUT_WIDTH=8;

input clk, reset;
input [INPUT_WIDTH-1:0] seq;
reg [INPUT_WIDTH-1:0] out;
output reg [INPUT_WIDTH-1:0] outp;

wire [3:0] q;
reg [3:0] i;
reg d;

d_flip_flop DFF1 (q[3], d, reset, clk);
d_flip_flop DFF2 (q[2], q[3], reset, clk);
d_flip_flop DFF3 (q[1], q[2], reset, clk);
d_flip_flop DFF4 (q[0], q[1], reset, clk);

initial begin
	i=0;
end

always @(posedge reset) begin
	i=0;
	d<=0;
end

always @(negedge clk) begin
	if(i<4) begin
		d<=seq[i];
	end
	else if(i<INPUT_WIDTH) begin
		if(q==SEQUENCE)
			out[i-4] <= 1;
		else
			out[i-4] <= 0;
		d <= seq[i];
		
	end
	else if(i<INPUT_WIDTH+4) begin
		if(q==SEQUENCE)
			out[i-4] <= 1;
		else
			out[i-4] <= 0;
	end
	else begin 
		outp = out;
	end
	i=i+1;
end
	
endmodule
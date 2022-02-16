`include "A3Q1_d_flip_flop.v"
module sequence_detector (outp, clk, seq, q, i, d, out);

parameter SEQUENCE=4'b0101;
parameter INPUT_WIDTH=8;

input clk;
input [INPUT_WIDTH-1:0] seq;
output reg [INPUT_WIDTH-1:0] out;
output reg [INPUT_WIDTH-1:0] outp;

output wire [3:0] q;
output reg [3:0] i;
output reg d;

d_flip_flop DFF1 (q[3], d, clk);
d_flip_flop DFF2 (q[2], q[3], clk);
d_flip_flop DFF3 (q[1], q[2], clk);
d_flip_flop DFF4 (q[0], q[1], clk);

initial begin
	i=0;
end

always @(posedge clk) begin
	if(i<4) begin
		d<=seq[i];
	end
	else if(i<INPUT_WIDTH) begin
		if(q==4'b0101)
			out[i-4] <= 1;
		else
			out[i-4] <= 0;
		d <= seq[i];
		
	end
	else if(i<INPUT_WIDTH+4) begin
		out[i-4] = 0;
	end
	else begin 
		outp = out;
		$finish;
	end
	i=i+1;
end
	
endmodule
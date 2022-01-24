/*
INPUT: q0 - q7
OUTPUT: y0 - y2
The Truth Table:
<-----------INPUT------------>      <-OUTPUT->
MSB>>>>>>>>>>>>>>>>>>>>>>>>>LSB     MSB>>>>>LSB

q7	q6	q5	q4	q3	q2	q1	q0      y2	y1	y0
1	0	0	0	0	0	0	0	    1	1	1
x	1	0	0	0	0	0	0	    1	1	0
x	x	1	0	0	0	0	0	    1	0	1
x	x	x	1	0	0	0	0	    1	0	0
x	x	x	x	1	0	0	0	    0	1	1
x	x	x	x	x	1	0	0	    0	1	0
x	x	x	x	x	x	1	0	    0	0	1
x	x	x	x	x	x	x	1	    0	0	0
*/

module priority_encoder_8_3(out, inp, enable);
output [2:0] out;
input [7:0] inp;
input enable;

assign out[0] = enable && ~inp[0] && (inp[1] || (~inp[2] && (inp[3] || (~inp[4] && (inp[5] || (~inp[6] && (inp[7]))))))); 
assign out[1] = enable && (~inp[0] && ~inp[1] && (inp[2] || inp[3] || (~inp[4] && ~inp[5] && (inp[6] || inp[7]))));
assign out[2] = enable && ~inp[0] && ~inp[1] && ~inp[2] && ~inp[3];

endmodule

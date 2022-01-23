/*
INPUT: y0 - y7
OUTPUT: q0 - q2
The Truth Table:
<-----------INPUT------------>      <-OUTPUT->
MSB>>>>>>>>>>>>>>>>>>>>>>>>>LSB     MSB>>>>>LSB

y7	y6	y5	y4	y3	y2	y1	y0      q2	q1	q0
1	0	0	0	0	0	0	0	    1	1	1
x	1	0	0	0	0	0	0	    1	1	0
x	x	1	0	0	0	0	0	    1	0	1
x	x	x	1	0	0	0	0	    1	0	0
x	x	x	x	1	0	0	0	    0	1	1
x	x	x	x	x	1	0	0	    0	1	0
x	x	x	x	x	x	1	0	    0	0	1
x	x	x	x	x	x	x	1	    0	0	0
*/

module priority_encoder_8_3(q, y);
output reg [2:0] q;
input [7:0] y;
always #5
begin
    if(y[0] == 1'b1)
    begin
        assign q = 3'b000;
    end 
    else if (y[1] == 1'b1)
    begin
        assign q = 3'b001;
    end
    else if (y[2] == 1'b1)
    begin
        assign q = 3'b010;
    end
    else if (y[3] == 1'b1)
    begin
        assign q = 3'b011;
    end
    else if (y[4] == 1'b1)
    begin
        assign q = 3'b100;
    end
    else if (y[5] == 1'b1)
    begin
        assign q = 3'b101;
    end
    else if (y[6] == 1'b1)
    begin
        assign q = 3'b110;
    end
    else if (y[7] == 1'b1)
    begin
        assign q = 3'b111;
    end
    else
    begin
        assign q = 3'bxxx;
    end       
end
endmodule
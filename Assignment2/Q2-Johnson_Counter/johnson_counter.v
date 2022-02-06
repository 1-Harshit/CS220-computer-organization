`include "d_flip_flop.v"
module johnson_counter(q,clk);
    input clk;
    output [0:7] q; //wrote [0:7] so that in test bench,
    //it is printed in the order according to the truth table given in report
    d_flip_flop dff1(.q(q[0]), .clk(clk), .d(~q[7])); //implementing the circuit according to circuit
    d_flip_flop dff2(.q(q[1]), .clk(clk), .d(q[0])); //diagram in report
    d_flip_flop dff3(.q(q[2]), .clk(clk), .d(q[1]));
    d_flip_flop dff4(.q(q[3]), .clk(clk), .d(q[2]));
    d_flip_flop dff5(.q(q[4]), .clk(clk), .d(q[3]));
    d_flip_flop dff6(.q(q[5]), .clk(clk), .d(q[4]));
    d_flip_flop dff7(.q(q[6]), .clk(clk), .d(q[5]));
    d_flip_flop dff8(.q(q[7]), .clk(clk), .d(q[6]));
endmodule

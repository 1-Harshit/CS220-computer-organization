`include "A3Q1_d_flip_flop.v"
module sequence_detector_unit(out,inp,clk,reset);
  output out;
  input inp;
  input clk;
  input reset;

  wire[2:0] k; //internal wire
  d_flip_flop D1(k[0],inp,clk,reset); //following 3 flip flops represent state
  d_flip_flop D2(k[1],k[0],clk,reset);
  d_flip_flop D3(k[2],k[1],clk,reset);
  assign out = ~inp & k[0] &~k[1]&k[2]; //output
endmodule

`include "A4Q1_d_flip_flop.v"
module gray_counter (input pulse, output out);
  reg out = 1'b0;
  wire [2:0] q;
  wire [1:0] q0;
  wire [2:0] q1;
  wire [2:0] q2;

  d_flip_flop dff2(.clk(pulse), .d(q0[1]), .q(q[0]));
  d_flip_flop dff1(.clk(pulse), .d(q1[2]), .q(q[1]));
  d_flip_flop dff0(.clk(pulse), .d(q2[2]), .q(q[2]));

  xor LQ01(q0[0], q[1], q[2]);
  not LQ02(q0[1], q0[0]);

  and LQ11(q1[0], q[0], ~q[2]);
  and LQ12(q1[1], q[1], ~q[0]);
  or LQ13(q1[2], q1[0], q1[1]);

  and LQ21(q2[0], q[0], q[2]);
  and LQ22(q2[1], q[1], ~q[0]);
  or LQ23(q2[2], q2[0], q2[1]);

  always @(negedge pulse) begin
      out = q[2] & ~q[1] & ~q[0];
  end

    
endmodule

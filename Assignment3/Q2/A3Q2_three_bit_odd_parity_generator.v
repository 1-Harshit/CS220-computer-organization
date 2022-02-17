`include "A3Q2_toggle_flip_flop.v"
module three_bit_odd_parity_generator(
    ip,
    op, 
    clk, 
    reset
);
input [2:0] ip;
input clk;
input reset;
output op;
wire parity;
reg t;
integer i;
initial i = 0;
always @ (negedge clk) begin
    t <= ip[i];
    i <= i + 1;
end
always @ (posedge reset) begin
    i <= 0;
end

//t will vary in always block from ip[0] to ip[2] on every posedge
toggle_flip_flop tff(reset, t, clk, parity);
assign op = parity;
endmodule
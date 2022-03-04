`include "./A4Q2_one_bit_full_adder.v"
module eight_bit_adder_subtractor(
    sum,
    overflow,
    a, 
    b, 
    opcode,
);
input [7:0] a;
input [7:0] b;
input opcode;
output [7:0] sum;
output overflow; 
wire [7:0] carry;


one_bit_full_adder fa0(sum[0], carry[0], a[0], b[0], opcode, opcode);
one_bit_full_adder fa1(sum[1], carry[1], a[1], b[1], opcode, carry[0]);
one_bit_full_adder fa2(sum[2], carry[2], a[2], b[2], opcode, carry[1]);
one_bit_full_adder fa3(sum[3], carry[3], a[3], b[3], opcode, carry[2]);
one_bit_full_adder fa4(sum[4], carry[4], a[4], b[4], opcode, carry[3]);
one_bit_full_adder fa5(sum[5], carry[5], a[5], b[5], opcode, carry[4]);
one_bit_full_adder fa6(sum[6], carry[6], a[6], b[6], opcode, carry[5]);
one_bit_full_adder fa7(sum[7], carry[7], a[7], b[7], opcode, carry[6]);
assign overflow = (opcode & (carry[7] ^ carry[6]));

endmodule
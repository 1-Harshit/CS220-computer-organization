`include "A2Q1_look_ahead_adder_unit.v"
module eight_bit_look_ahead_carry_adder(sum, C_out,a,b,cin);
    output [7:0] sum;
    wire [7:0] cout;
    output C_out;
    assign C_out=cout[7];
    input [7:0] a, b;
    input cin;
    wire [7:0] p,g;
    assign p=a^b; //bitwise xor
    assign g=a&b; //bitwise and
    look_ahead_adder_unit u0(cout[0],sum[0],p[0],g[0],cin); 
    look_ahead_adder_unit u1(cout[1],sum[1],p[1],g[1],cout[0]);
    look_ahead_adder_unit u2(cout[2],sum[2],p[2],g[2],cout[1]);
    look_ahead_adder_unit u3(cout[3],sum[3],p[3],g[3],cout[2]);
    look_ahead_adder_unit u4(cout[4],sum[4],p[4],g[4],cout[3]);
    look_ahead_adder_unit u5(cout[5],sum[5],p[5],g[5],cout[4]);
    look_ahead_adder_unit u6(cout[6],sum[6],p[6],g[6],cout[5]);
    look_ahead_adder_unit u7(cout[7],sum[7],p[7],g[7],cout[6]);
endmodule

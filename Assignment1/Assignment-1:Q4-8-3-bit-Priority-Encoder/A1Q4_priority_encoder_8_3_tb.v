`timescale 1ns/1ns
`include "q4.v"
module priority_encoder_8_3_tb;
    wire [2:0] q;
    reg [7:0] y;
    priority_encoder_8_3 uut (.q(q), .y(y));

    initial
    begin
        $dumpfile("q4_tb.vcd");
        $dumpvars(0, priority_encoder_8_3_tb);
        y=8'b11111111;
        #5;
        y=8'b11011101;
        #5;
        y=8'b01100110;
        #5;
        y=8'b00110100; 
        #5;
        y=8'b00101000;
        #5;
        y=8'b10110000;
        #5;
        y=8'b10100000;
        #5;
        y=8'b11000000;
        #5;
        y=8'b10000000;
        #5;
        y=8'b00000000;
        #10;//otherwise the output for the last case won't be visible 
        $finish; 
    end 
endmodule

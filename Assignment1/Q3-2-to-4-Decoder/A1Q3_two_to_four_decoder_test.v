`include "A1Q3_three_to_eight_decoder.v"
module two_to_four_decoder_test();
    reg[2:0] INP=3'd0;
    wire [7:0] OP;
    three_to_eight_decoder d0(OP,INP,1'b1);
    initial begin
        $monitor("%b",OP);
        #5INP=3'd1;
        #5INP=3'd2;
        #5INP=3'd3;
        #5INP=3'd4;
        #5INP=3'd5;
        #5INP=3'd6;
        #5INP=3'd7;
    end
endmodule
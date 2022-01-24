`include "A1Q3_three_to_eight_decoder.v"

module two_to_four_decoder_test();
    reg[2:0] INP=3'd0; //initial case
    wire [7:0] OP;
    
    three_to_eight_decoder d0(OP,INP,1'b1);
    
    initial begin
        $monitor("%b",OP);
        #5 INP=3'd1;
        #5 INP=3'd2;
        #5 INP=3'd3;
        #5 INP=3'd4;
        #5 INP=3'd5;
        #5 INP=3'd6;
        #5 INP=3'd7;
    end
endmodule

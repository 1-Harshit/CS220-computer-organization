`include "A1Q3_two_to_four_decoder.v"
module three_to_eight_decoder(op,inp,enable);
    output [7:0] op;
    input [2:0] inp;
    input enable;
    two_to_four_decoder d1(op[7:4],inp[1:0],inp[2]&&enable);
    two_to_four_decoder d0(op[3:0],inp[1:0],~inp[2]&&enable);
endmodule
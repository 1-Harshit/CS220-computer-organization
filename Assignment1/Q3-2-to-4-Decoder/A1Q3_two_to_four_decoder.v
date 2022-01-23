module two_to_four_decoder(op,inp,enable);
    output [3:0] op;
    input [1:0] inp;
    input enable;
    assign op[0]=~inp[0]&&~inp[1]&&enable;
    assign op[1]=inp[0]&&~inp[1]&&enable;
    assign op[2]=~inp[0]&&inp[1]&&enable;
    assign op[3]=inp[0]&&inp[1]&&enable;
endmodule
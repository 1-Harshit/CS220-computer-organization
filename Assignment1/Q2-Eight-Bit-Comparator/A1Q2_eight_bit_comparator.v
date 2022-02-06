`include "A1Q2_one_bit_comparator.v"
module eight_bit_comparator(out_less, out_equal, out_more, a,b, in_less, in_equal, in_more);
    output out_less,out_equal,out_more;
    input [7:0] a,b; //8 bit inputs
    input in_less, in_equal, in_more; //these are left for debugging and
    wire g[0:7];                      // and develop even bigger comparators from eight bit comparator 
    wire e[0:7];
    wire l[0:7];

    one_bit_comparator c0(l[0],e[0],g[0],a[0],b[0],l[1],e[1],g[1]);
    one_bit_comparator c1(l[1],e[1],g[1],a[1],b[1],l[2],e[2],g[2]);
    one_bit_comparator c2(l[2],e[2],g[2],a[2],b[2],l[3],e[3],g[3]);
    one_bit_comparator c3(l[3],e[3],g[3],a[3],b[3],l[4],e[4],g[4]);
    one_bit_comparator c4(l[4],e[4],g[4],a[4],b[4],l[5],e[5],g[5]);
    one_bit_comparator c5(l[5],e[5],g[5],a[5],b[5],l[6],e[6],g[6]);
    one_bit_comparator c6(l[6],e[6],g[6],a[6],b[6],l[7],e[7],g[7]);
    one_bit_comparator c7(l[7],e[7],g[7],a[7],b[7], in_less, in_equal, in_more);

    assign out_less=l[0]&&~e[0]&&~g[0];
    assign out_more=g[0]&&~e[0]&&~l[0];
    assign out_equal=e[0];
endmodule

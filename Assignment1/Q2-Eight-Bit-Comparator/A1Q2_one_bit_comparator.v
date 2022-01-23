module one_bit_comparator(out_less,out_equal,out_more,a,b,in_less,in_equal,in_more);
    input a,b,in_less,in_equal,in_more;
    output out_less,out_equal,out_more;

    assign out_equal=((a&&b)||(~a&&~b))&&in_equal;
    assign out_less=(~a&&b||in_less)&&~in_more;
    assign out_more=(a&&~b||in_more)&&~in_less;   
endmodule
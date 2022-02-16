module d_flip_flop(q,d,clk,reset);
    output reg q=1'b0;
    input reset;
    
    input d,clk;
        always @(posedge clk) begin
            q=d&~reset;
        end
endmodule

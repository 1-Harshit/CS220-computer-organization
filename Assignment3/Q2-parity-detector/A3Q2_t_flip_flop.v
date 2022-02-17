module t_flip_flop(q,d,clk,reset);
    output reg q=1'b0;
    input reset;
    input d,clk;

    always@(reset) begin
        q=0;
    end

    always @(posedge clk) begin
        if(d==1'b1) begin
            q=~q;
        end
        // $display("%b %b",q,d);
    end
endmodule

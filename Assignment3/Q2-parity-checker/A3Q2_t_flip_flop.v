module t_flip_flop(q,t,clk,reset); //if t is 1, q flips its value, otherwise it is same
    output reg q=1'b1;
    input reset;
    input t,clk;

    always@(reset) begin
        q=1;
    end

    always @(posedge clk) begin
        if(t==1'b1) begin
            q=~q;
        end
    end
endmodule

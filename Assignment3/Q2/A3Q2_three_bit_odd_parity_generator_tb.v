`include "A3Q2_three_bit_odd_parity_generator.v"
module three_bit_odd_parity_generator_tb();
reg [2:0] ip;
reg clk;
reg reset;
wire op;
three_bit_odd_parity_generator opg(ip, op, clk, reset);
always #1 clk = ~clk;
initial begin
        clk = 0;
        reset = 0;
        // $monitor("%4d %b | %b", $time, ip, op);

        ip = 3'b000;
        $display("-----\ninput = %b", ip);
        #100;
        $display("Output: %b", op);
        
        #11; reset = 1;
        reset = 0;
        ip = 3'b001;
        $display("-----\ninput = %b", ip);
        #100;
        $display("Output: %b", op);
        
        #10 reset = 1;
        reset = 0;

        ip = 3'b010;
        $display("-----\ninput = %b", ip);
        #100;
        $display("Output: %b", op);
        
        #10 reset = 1;
        reset = 0;

        ip = 3'b011;
        $display("-----\ninput = %b", ip);
        #100;
        $display("Output: %b", op);
        
        #10 reset = 1;
        reset = 0;

        ip = 3'b100;
        $display("-----\ninput = %b", ip);
        #100;
        $display("Output: %b", op);

        #10 reset = 1;
        reset = 0;

        ip = 3'b101;
        $display("-----\ninput = %b", ip);
        #100;
        $display("Output: %b", op);

        #10 reset = 1;
        reset = 0;

        ip = 3'b110;
        $display("-----\ninput = %b", ip);
        #100;
        $display("Output: %b", op);
        
        #10 reset = 1;
        reset = 0;

        ip = 3'b111;
        $display("-----\ninput = %b", ip);
        #100;
        $display("Output: %b", op);

        $finish;
    end
endmodule
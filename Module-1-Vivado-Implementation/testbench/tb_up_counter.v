
`timescale 1ns / 1ps

module tb_up_counter;

    reg clk;
    reg rst;
    reg enable;

    wire [3:0] count;
    wire slow_clk;

    // Instantiate the counter
    up_counter #(
        .DIV_COUNT(5)
    ) dut (
        .clk(clk),
        .rst(rst),
        .enable(enable),
        .count(count),
        .slow_clk(slow_clk)
    );

    // 10 ns clock period
    always #5 clk = ~clk;

    initial begin
        clk    = 0;
        rst    = 1;
        enable = 0;

        // Apply reset
        #20;
        rst = 0;

        // Enable counting
        #20;
        enable = 1;

        // Simulate for 2000 ns
        #2000;

        $finish;
    end

    // Display signals in simulation console
    initial begin
        $monitor(
            "Time=%0t | rst=%b | enable=%b | slow_clk=%b | count=%d",
            $time, rst, enable, slow_clk, count
        );
    end

endmodule

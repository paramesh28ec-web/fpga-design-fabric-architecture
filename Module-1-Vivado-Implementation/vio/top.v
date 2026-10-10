
module top #(
    parameter DIV_COUNT = 5
)(
    input wire clk
);

    wire rst;
    wire enable;
    wire [3:0] count;
    wire slow_clk;

    // VIO IP instance
    vio_0 vio_inst (
        .clk(clk),

        // Signals monitored by VIO
        .probe_in0(count),
        .probe_in1(slow_clk),

        // Signals controlled by VIO
        .probe_out0(rst),
        .probe_out1(enable)
    );

    // Counter instance
    up_counter #(
        .DIV_COUNT(DIV_COUNT)
    ) counter_inst (
        .clk(clk),
        .rst(rst),
        .enable(enable),
        .count(count),
        .slow_clk(slow_clk)
    );

endmodule

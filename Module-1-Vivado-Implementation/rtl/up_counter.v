
module up_counter #(
    parameter DIV_COUNT = 5
)(
    input  wire       clk,
    input  wire       rst,
    input  wire       enable,
    output reg  [3:0] count,
    output reg        slow_clk
);

    reg [31:0] div_count;

    // Clock divider
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            div_count <= 0;
            slow_clk  <= 0;
        end
        else if (div_count == DIV_COUNT - 1) begin
            div_count <= 0;
            slow_clk  <= ~slow_clk;
        end
        else begin
            div_count <= div_count + 1'b1;
        end
    end

    // 4-bit up counter
    always @(posedge slow_clk or posedge rst) begin
        if (rst)
            count <= 4'b0000;
        else if (enable)
            count <= count + 1'b1;
    end

endmodule

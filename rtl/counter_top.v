`timescale 1ns/1ps

module counter_top #(
    parameter integer WIDTH = 8
) (
    input  wire             clk,
    input  wire             rst,
    input  wire             en,
    output reg  [WIDTH-1:0] count
);

    always @(posedge clk) begin
        if (rst)
            count <= {WIDTH{1'b0}};
        else if (en)
            count <= count + {{(WIDTH-1){1'b0}}, 1'b1};
    end

endmodule

`timescale 1ns/1ps
module decoder2to4(input wire [1:0] sel, input wire en, output reg [3:0] y);
always @* begin
  y = 4'b0000;
  if (en) y[sel] = 1'b1;
end
endmodule

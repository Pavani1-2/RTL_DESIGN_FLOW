`timescale 1ns/1ps
module mux2 #(parameter WIDTH=1) (input wire [WIDTH-1:0] a, b, input wire sel, output wire [WIDTH-1:0] y);
assign y = sel ? b : a;
endmodule

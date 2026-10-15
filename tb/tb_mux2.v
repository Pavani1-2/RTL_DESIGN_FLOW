`timescale 1ns/1ps
module tb_mux2;
reg a,b,sel; wire y; integer i;
mux2 dut(.a(a),.b(b),.sel(sel),.y(y));
initial begin
for(i=0;i<8;i=i+1) begin {sel,b,a}=i; #5; if(y !== (sel ? b : a)) $fatal(1,"MUX mismatch"); end
$display("PASS: mux2 all input combinations"); $finish;
end
endmodule

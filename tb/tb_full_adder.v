`timescale 1ns/1ps
module tb_full_adder;
reg a,b,cin; wire sum,cout; integer i;
full_adder dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial begin
for(i=0;i<8;i=i+1) begin {a,b,cin}=i; #5; if({cout,sum} !== (a+b+cin)) $fatal(1,"Full adder mismatch"); end
$display("PASS: full_adder all input combinations"); $finish;
end
endmodule

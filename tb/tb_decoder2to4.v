`timescale 1ns/1ps
module tb_decoder2to4;
reg [1:0] sel; reg en; wire [3:0] y; integer i;
decoder2to4 dut(.sel(sel),.en(en),.y(y));
initial begin
 en=0; sel=0; #5; if(y!==4'b0000) $fatal(1,"Decoder disabled mismatch");
 en=1;
 for(i=0;i<4;i=i+1) begin sel=i; #5; if(y !== (4'b0001 << i)) $fatal(1,"Decoder mismatch sel=%0d y=%b",i,y); end
 $display("PASS: decoder2to4 all selections"); $finish;
end
endmodule

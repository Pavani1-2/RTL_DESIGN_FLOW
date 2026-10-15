`timescale 1ns/1ps
module tb_sequence_detector_1011;
    reg clk = 0, rst = 1, din = 0;
    wire detected;
    integer errors = 0;

    sequence_detector_1011 dut(.clk(clk), .rst(rst), .din(din), .detected(detected));
    always #5 clk = ~clk;

    task send_bit;
        input bit_value;
        input expected;
        begin
            @(negedge clk); din = bit_value;
            @(posedge clk); #1;
            if (detected !== expected) begin
                $display("FAIL din=%b expected=%b actual=%b", bit_value, expected, detected);
                errors = errors + 1;
            end else $display("PASS din=%b detected=%b", bit_value, detected);
        end
    endtask

    initial begin
        $dumpfile("results/sequence_detector_1011.vcd");
        $dumpvars(0, tb_sequence_detector_1011);
        repeat (2) @(posedge clk);
        @(negedge clk); rst = 0;
        send_bit(1, 0);
        send_bit(0, 0);
        send_bit(1, 0);
        send_bit(1, 1);
        send_bit(0, 0);
        send_bit(1, 0);
        send_bit(1, 1);
        if (errors == 0) $display("ALL SEQUENCE DETECTOR TESTS PASSED");
        else $display("TEST FAILED: %0d errors", errors);
        $finish;
    end
endmodule

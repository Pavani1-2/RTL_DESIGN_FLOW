`timescale 1ns/1ps

module tb_counter_top;
    localparam WIDTH = 4;

    reg clk = 0;
    reg rst = 0;
    reg en = 0;
    wire [WIDTH-1:0] count;
    integer errors = 0;

    counter_top #(.WIDTH(WIDTH)) dut (
        .clk(clk), .rst(rst), .en(en), .count(count)
    );

    always #5 clk = ~clk;

    task check_count;
        input [WIDTH-1:0] expected;
        begin
            if (count !== expected) begin
                $display("ERROR t=%0t expected=%0d got=%0d",
                         $time, expected, count);
                errors = errors + 1;
            end else begin
                $display("OK t=%0t count=%0d", $time, count);
            end
        end
    endtask

    initial begin
        // Synchronous reset
        rst = 1; en = 0;
        @(posedge clk); #1; check_count(0);
        rst = 0;

        // Increment twice
        en = 1;
        @(posedge clk); #1; check_count(1);
        @(posedge clk); #1; check_count(2);

        // Hold while enable is low
        en = 0;
        @(posedge clk); #1; check_count(2);

        // Resume counting
        en = 1;
        @(posedge clk); #1; check_count(3);

        // Reset again
        rst = 1;
        @(posedge clk); #1; check_count(0);
        rst = 0;

        // Check 4-bit wraparound: count 0 through 15, then back to 0
        en = 1;
        repeat (16) @(posedge clk);
        #1; check_count(0);

        if (errors == 0)
            $display("PASS: all counter checks completed");
        else
            $display("FAIL: %0d checks failed", errors);

        $finish;
    end
endmodule

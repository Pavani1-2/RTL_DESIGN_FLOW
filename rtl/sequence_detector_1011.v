// Detects the serial pattern 1011. Overlapping matches are supported.
module sequence_detector_1011 (
    input wire clk,
    input wire rst,
    input wire din,
    output reg detected
);
    localparam S0 = 2'd0, S1 = 2'd1, S10 = 2'd2, S101 = 2'd3;
    reg [1:0] state, next_state;

    always @(posedge clk) begin
        if (rst) begin
            state <= S0;
            detected <= 1'b0;
        end else begin
            state <= next_state;
            detected <= (state == S101) && din;
        end
    end

    always @(*) begin
        case (state)
            S0:   next_state = din ? S1 : S0;
            S1:   next_state = din ? S1 : S10;
            S10:  next_state = din ? S101 : S0;
            S101: next_state = din ? S1 : S10;
            default: next_state = S0;
        endcase
    end
endmodule

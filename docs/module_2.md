# Module 2 — Timing Libraries and Sequential RTL

## Objective
Understand standard-cell timing data and sequential logic coding styles.

## Timing library
A standard-cell `.lib` file can include cell functions, timing arcs, setup/hold constraints, pin capacitance, transition limits, and power tables. Values depend on the process, voltage, and temperature corner.

## D flip-flop with synchronous reset
```verilog
always @(posedge clk) begin
    if (rst)
        q <= 1'b0;
    else
        q <= d;
end
```

Use non-blocking assignments (`<=`) for clocked sequential logic. Blocking assignments (`=`) are commonly used for combinational procedural logic.

## Experiment and evidence
Run simulations before synthesis. Compare actual Yosys logs and statistics, and document tool/library assumptions. Do not invent cell counts or timing values.

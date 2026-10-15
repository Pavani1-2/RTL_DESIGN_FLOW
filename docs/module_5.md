# Module 5 — Synthesis Optimization

## Objective
Observe how synthesis handles redundant logic and RTL coding choices.

## Topics
- Incomplete assignments and latch inference
- Constant and redundant logic removal
- Boolean optimization
- Cell-count/statistics inspection
- RTL versus synthesized-netlist behavior

## Run synthesis
```sh
yosys -s synthesis/mux2.ys
yosys -s synthesis/full_adder.ys
yosys -s synthesis/sequence_detector_1011.ys
```
Inspect warnings and statistics. A latch should only be inferred when intended by the design.

## Deliverables
RTL, testbench, actual simulation output, synthesis log, netlist, and measured comparison based on reports from your environment.

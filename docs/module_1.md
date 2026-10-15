# Module 1 — Verilog RTL Design and Synthesis

## Objective
Understand the design, testbench, simulation, waveform, and synthesis workflow.

## 2-to-1 multiplexer
The design in `rtl/mux2.v` selects input `a` when `sel=0`, and `b` when `sel=1`.

```sh
mkdir -p results
iverilog -g2012 -Wall -s tb_mux2 -o results/mux2.vvp rtl/mux2.v tb/tb_mux2.v
vvp results/mux2.vvp
yosys -s synthesis/mux2.ys
```

## Key concepts
- RTL describes hardware behavior.
- A testbench applies stimulus and checks expected behavior.
- Simulation tests the design for chosen cases.
- Synthesis converts RTL into a logic implementation.
- Waveforms show how signals change over time.

## Deliverables
RTL, testbench, actual simulation transcript, waveform, synthesized netlist, and Yosys statistics.

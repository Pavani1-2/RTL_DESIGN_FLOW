# Classwork — August 23

## Activities
1. Inspect a synthesizable Verilog module.
2. Run Yosys hierarchy checks and synthesis.
3. Inspect the synthesized netlist and statistics.
4. Compare RTL behavior with intended logic.
5. Document warnings and tool/environment assumptions.

## Suggested experiments
Run the counter, MUX, full-adder, and sequence-detector synthesis scripts. Compare statistics reported by your local tool.

```sh
yosys -s synthesis/counter.ys
yosys -s synthesis/mux2.ys
yosys -s synthesis/full_adder.ys
yosys -s synthesis/sequence_detector_1011.ys
```

Save actual Yosys logs, generated netlists, and a comparison table based on reports.

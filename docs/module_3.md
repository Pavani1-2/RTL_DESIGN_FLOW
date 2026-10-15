# Module 3 — Combinational and Sequential Optimization

## Objective
Explore synthesis optimizations while preserving circuit behavior.

## Common techniques
- Constant propagation
- Dead-code removal
- Boolean simplification
- Common-subexpression sharing
- State/register optimization where supported

## Experiment
Run:
```sh
yosys -s synthesis/mux2.ys
yosys -s synthesis/full_adder.ys
```
Inspect hierarchy checks, warnings, cell statistics, and generated netlists.

## Verification
Run the corresponding testbench after every RTL change. Smaller source code does not always mean fewer gates; compare actual synthesis reports.

## Deliverables
RTL, testbench output, waveform where useful, synthesis logs, netlists, and a summary of observed optimization.

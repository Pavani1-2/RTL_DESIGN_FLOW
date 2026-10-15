# RTL Design and Verification Methodology

## Design objective
This project demonstrates a reproducible path from a synthesizable Verilog description to simulation evidence and logic-synthesis reports. The baseline design is a parameterized synchronous counter.

## Design rules
- Use `always @(posedge clk)` for edge-triggered sequential logic.
- Use nonblocking assignments (`<=`) for registers.
- Keep reset behavior explicit and consistent with the specification.
- Parameterize widths instead of hard-coding bus sizes where practical.
- Avoid simulation-only constructs in synthesizable RTL.

## Verification plan
1. Assert reset and check that the count becomes zero on the next rising clock edge.
2. Deassert reset and assert enable; check that the count increments by one per rising edge.
3. Deassert enable; check that the value holds.
4. Assert reset during normal operation and check reset priority.
5. For an N-bit counter, check wraparound from `2**N-1` to zero.

## Simulation workflow
From the repository root, compile with Icarus Verilog:

```powershell
iverilog -g2012 -Wall -s tb_counter_top -o results/counter_sim.vvp rtl/counter_top.v tb/tb_counter_top.v
vvp results/counter_sim.vvp
```

A passing testbench should finish without mismatch messages and should return a successful process status. Save the real terminal output as evidence; do not label an unexecuted simulation as passed.

## Synthesis workflow
Run `yosys -s synthesis/counter.ys` or `./scripts/run_synth.ps1` from PowerShell. Inspect the generated netlist, hierarchy checks, warnings, and cell statistics. Synthesis is distinct from physical design: a synthesized netlist alone does not prove placement, routing, or timing closure.

## Physical-design stages
A typical ASIC flow includes floorplanning, power planning, placement, clock-tree synthesis, routing, timing analysis, and design-rule checks. The exact commands and reports depend on the selected PDK and flow version. Only record a stage as complete when its tool output exists and has been inspected.

## Reproducibility checklist
- Record tool versions and exact commands.
- Keep RTL, testbench, scripts, and documentation in separate folders.
- Preserve logs and reports under `results/`.
- Document warnings and failures instead of hiding them.
- Do not invent area, delay, power, or physical-design values.

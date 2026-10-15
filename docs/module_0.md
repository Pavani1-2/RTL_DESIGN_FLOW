# Module 0 — Setup and Toolchain

## Objective
Prepare a repeatable RTL workflow and check the required tools.

## Tools
- Icarus Verilog (`iverilog`) for compiling testbenches
- VVP (`vvp`) for running simulations
- GTKWave for viewing VCD waveforms
- Yosys for synthesis and cell statistics

## Check installation
Run `iverilog -V`, `vvp -V`, `yosys -V`, and `gtkwave --version` in your terminal. Install any missing tools and ensure they are on PATH.

## Workflow
1. Write synthesizable RTL under `rtl/`.
2. Write a testbench under `tb/`.
3. Compile and run the simulation.
4. Inspect the waveform.
5. Run the matching Yosys script.
6. Save actual logs and generated reports under `results/`.

## Deliverables
Tool versions, RTL, testbench, simulator output, waveform, synthesis log, and statistics.

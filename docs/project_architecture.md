# Project Architecture and Design Flow

## Repository layers

- **RTL (`rtl/`)**: synthesizable Verilog descriptions of digital logic.
- **Verification (`tb/`)**: testbenches that apply stimuli and compare outputs with expected behavior.
- **Synthesis (`synthesis/`)**: Yosys command scripts for hierarchy checking, optimization, synthesis, statistics, and netlist generation.
- **Automation (`scripts/`)**: PowerShell helpers for repeatable simulation and synthesis.
- **Documentation (`docs/`)**: methodology, timing concepts, physical-design stages, and experiment logs.
- **Results (`results/`)**: local tool output; generated files should be reviewed before committing.

## Verification strategy

The counter testbench exercises reset, increment, and hold behavior as implemented in the starter RTL. The MUX testbench enumerates all combinations of its three one-bit inputs. The full-adder testbench enumerates all eight combinations of `a`, `b`, and `cin`, then checks `{cout,sum}` against the arithmetic sum.

## Reproduction steps

From the repository root in PowerShell:

```powershell
.\scripts\run_all_sim.ps1
```

To synthesize:

```powershell
yosys -s synthesis/counter.ys
yosys -s synthesis/full_adder.ys
```

Confirm the required tools are installed and available on `PATH`. Review the actual output and exit status. Simulation and synthesis results should be captured locally and added to the experiment log.

## Limits

This repository is a learning project. Physical implementation is not proven by RTL simulation or synthesis alone; it requires a compatible PDK and a successful run through the selected physical-design flow.

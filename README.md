# RTL Silicon Flow — Original Starter Project

An independently written, compact RTL-to-implementation learning project. The design is a parameterized synchronous counter with synchronous reset and enable. It is intentionally small enough to understand and verify quickly.

> **Status:** RTL and testbench files are supplied. Run the commands below to generate local simulation and synthesis evidence. Physical-design results are not included as pre-generated claims; they require a configured OpenLane/OpenROAD environment and a compatible PDK.

## Architecture

- `rtl/counter_top.v` — counter RTL.
- `tb/tb_counter_top.v` — self-checking testbench.
- `synthesis/counter.ys` — Yosys synthesis script.
- `physical_design/config.json` — starter configuration for an OpenLane 1-style flow; check compatibility with your installed OpenLane version.
- `scripts/` — Windows PowerShell helpers.
- `docs/` — workflow and results log.

## Functional specification

At each rising edge of `clk`:
1. If `rst` is high, the count becomes zero.
2. Else if `en` is high, the count increments by one modulo `2**WIDTH`.
3. Else the count holds its current value.

The default width is 8 bits. Reset is synchronous and active high.

## Fast path on Windows

Install Git for Windows, Icarus Verilog, and Yosys (or use a Linux/WSL environment where they are available). Open PowerShell in this repository.

Run simulation:

```powershell
.\scripts\run_sim.ps1
```

Expected final testbench status if the test passes:

```text
PASS: all counter checks completed
```

Run generic synthesis if `yosys` is on PATH:

```powershell
yosys -s synthesis/counter.ys
```

The synthesis script writes `results/counter_netlist.v` and `results/counter_synthesis_stat.txt`. These outputs are generated locally by the tool and should be reviewed before submission.

## Physical design

A physical-design flow requires more than RTL: a compatible OpenLane/OpenROAD installation, a PDK (for example SKY130), libraries, timing constraints, and a successful run. The supplied `physical_design/config.json` is a starting point, not evidence that physical design has run. Follow `docs/physical_design.md`, then save the actual run logs and reports under `results/physical_design/`.

## Evidence checklist

- [ ] Simulation command and passing output saved under `results/`.
- [ ] Yosys version and synthesis log saved under `results/`.
- [ ] Synthesized netlist and statistics inspected.
- [ ] Physical-design tool version, configuration, and actual reports recorded if a flow is run.
- [ ] Any unavailable or unrun stage is clearly marked as not run.

## Attribution and academic integrity

The RTL, testbench, scripts, and documentation in this starter were written for this project. If you adapt external workshop material, third-party RTL, or flow scripts, preserve their license and attribution. Do not claim unrun simulations or physical-design results.

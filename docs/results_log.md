# Results and Experiment Log

Record only evidence from actual tool runs. Do not mark an experiment passed or add numerical metrics until verified.

| Experiment | Command | Status | Evidence / notes |
|---|---|---|---|
| Counter simulation | `./scripts/run_sim.ps1` | Pending local run | Record simulator output and warnings |
| MUX simulation | `iverilog -g2012 -s tb_mux2 -o results/mux.vvp rtl/mux2.v tb/tb_mux2.v; vvp results/mux.vvp` | Pending local run | Testbench checks all eight input combinations |
| Full-adder simulation | `iverilog -g2012 -s tb_full_adder -o results/fa.vvp rtl/full_adder.v tb/tb_full_adder.v; vvp results/fa.vvp` | Pending local run | Testbench checks all eight input combinations |
| Counter synthesis | `yosys -s synthesis/counter.ys` | Pending local run | Save tool log and cell statistics |
| Full-adder synthesis | `yosys -s synthesis/full_adder.ys` | Pending local run | Save tool log and cell statistics |
| Physical design | Configured OpenLane/OpenROAD flow | Not yet evidenced | Record PDK, tool versions, logs, area and timing reports only after a real run |

## Reproducibility fields
- Date/time:
- OS / environment:
- Icarus Verilog version:
- Yosys version:
- PDK / flow version (if applicable):
- Command and exit status:
- Output log path:
- Warnings / issues:

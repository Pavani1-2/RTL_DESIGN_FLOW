# Results and Experiment Log

This log separates expected behavior from results confirmed by running the tools. Fill in the evidence columns after running each command on the project machine.

## Functional and synthesis experiments

| Experiment | Command | Current status | Expected check / evidence to save |
|---|---|---|---|
| Counter simulation | `./scripts/run_sim.ps1` | Awaiting local run | Reset, enable, increment and hold behavior; save terminal output |
| MUX simulation | `iverilog -g2012 -s tb_mux2 -o results/mux.vvp rtl/mux2.v tb/tb_mux2.v; vvp results/mux.vvp` | Awaiting local run | Check all eight input combinations |
| Full-adder simulation | `iverilog -g2012 -s tb_full_adder -o results/fa.vvp rtl/full_adder.v tb/tb_full_adder.v; vvp results/fa.vvp` | Awaiting local run | Check all eight input combinations |
| Decoder simulation | Run the decoder testbench with Icarus Verilog | Awaiting local run | Check disabled output and all four enabled selections |
| 1011 sequence detector | `./scripts/run_all_sim.ps1` | Awaiting local run | Check detection on 1011 and the second occurrence in 1011011 |
| Counter synthesis | `yosys -s synthesis/counter.ys` | Awaiting local run | Save synthesis log and cell statistics |
| Full-adder synthesis | `yosys -s synthesis/full_adder.ys` | Awaiting local run | Save synthesis log and cell statistics |
| MUX synthesis | `yosys -s synthesis/mux2.ys` | Awaiting local run | Save synthesis log and cell statistics |
| Sequence detector synthesis | `yosys -s synthesis/sequence_detector_1011.ys` | Awaiting local run | Save synthesis log and cell statistics |
| Physical design | Configured OpenLane/OpenROAD flow | Not yet evidenced | Save tool versions, PDK, flow logs, area and timing reports |

## Reproducibility fields

- Date/time:
- OS / environment:
- Icarus Verilog version:
- Yosys version:
- PDK / physical-design flow version (if applicable):
- Exact command:
- Exit status:
- Output log path:
- Warnings or errors:
- Notes:

## Reporting rule

The truth tables and expected sequence-detector behavior in `results/functional_results.md` are predicted from the design specifications. They are not proof of a successful simulation. No measured area, timing, cell count, or physical-design pass status should be entered until supported by actual tool reports.
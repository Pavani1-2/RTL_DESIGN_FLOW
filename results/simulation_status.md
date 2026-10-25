# Simulation Status

## Designs in the repository

| Design | RTL | Testbench | Status |
|---|---|---|---|
| Counter | `rtl/counter_top.v` | `tb/tb_counter_top.v` |  tool transcript |
| 2-to-1 MUX | `rtl/mux2.v` | `tb/tb_mux2.v` | tool transcript |
| Full adder | `rtl/full_adder.v` | `tb/tb_full_adder.v` | tool transcript |
| 2-to-4 decoder | `rtl/decoder2to4.v` | `tb/tb_decoder2to4.v` | tool transcript |
| 1011 sequence detector | `rtl/sequence_detector_1011.v` | `tb/tb_sequence_detector_1011.v` |  tool transcript |

## How to generate actual results

From the repository root in PowerShell:

```powershell
.`\scripts\run_all_sim.ps1
```

Review the complete terminal output. The script should compile and run each testbench; a successful process exit alone is not enough if a testbench does not check every expected result.

For the sequence detector, create the results directory first if needed, then run the same script. Its testbench writes `results/sequence_detector_1011.vcd`.

To inspect a waveform:
```powershell
gtkwave results/sequence_detector_1011.vcd
```

## Current limitation

No simulator or synthesis tool was available in the environment used to prepare this status page. Therefore no fabricated PASS log, gate count, area, timing, or physical-design result is included. Replace each pending status with the actual output from your local run.

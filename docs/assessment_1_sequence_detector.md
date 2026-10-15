# Assessment 1 — 1011 Sequence Detector

## Specification
Detect the serial pattern `1011`. The output asserts for one clock cycle when the final bit is sampled. Overlapping matches are supported.

## Files
- RTL: `rtl/sequence_detector_1011.v`
- Testbench: `tb/tb_sequence_detector_1011.v`
- Synthesis: `synthesis/sequence_detector_1011.ys`

## Simulation
```sh
mkdir -p results
iverilog -g2012 -Wall -s tb_sequence_detector_1011 -o results/sequence_detector_1011.vvp rtl/sequence_detector_1011.v tb/tb_sequence_detector_1011.v
vvp results/sequence_detector_1011.vvp
```
The testbench writes `results/sequence_detector_1011.vcd`; inspect it using GTKWave.

## Synthesis
```sh
yosys -s synthesis/sequence_detector_1011.ys
```

## Results
Add the actual simulator transcript and Yosys statistics after running the commands. Mark the test as passing only if the transcript confirms all checks passed.

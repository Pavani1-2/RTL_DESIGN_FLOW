# Classwork — August 22

## Activities
1. Create a combinational module and identify its ports.
2. Write a testbench with several input combinations.
3. Compile and run with Icarus Verilog.
4. Inspect the VCD waveform in GTKWave.
5. Synthesize with Yosys and inspect cell statistics.

## Exercises in this repository
Verify the 2-to-1 MUX and 2-to-4 decoder.

```sh
mkdir -p results
iverilog -g2012 -Wall -s tb_mux2 -o results/mux2.vvp rtl/mux2.v tb/tb_mux2.v
vvp results/mux2.vvp
iverilog -g2012 -Wall -s tb_decoder2to4 -o results/decoder2to4.vvp rtl/decoder2to4.v tb/tb_decoder2to4.v
vvp results/decoder2to4.vvp
```

Save actual terminal output and waveform screenshots after running the commands.

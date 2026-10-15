$ErrorActionPreference = "Stop"

New-Item -ItemType Directory -Force -Path "results" | Out-Null

iverilog -g2012 -Wall -s tb_counter_top `
  -o results/counter_sim.vvp `
  rtl/counter_top.v tb/tb_counter_top.v

if ($LASTEXITCODE -ne 0) {
  throw "Icarus Verilog compilation failed."
}

vvp results/counter_sim.vvp | Tee-Object -FilePath results/counter_simulation.txt

if ($LASTEXITCODE -ne 0) {
  throw "Simulation process failed."
}

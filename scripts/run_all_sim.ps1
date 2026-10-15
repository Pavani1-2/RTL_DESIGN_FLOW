$ErrorActionPreference = 'Stop'
New-Item -ItemType Directory -Force -Path 'results' | Out-Null

if (-not (Get-Command iverilog -ErrorAction SilentlyContinue)) { throw 'iverilog not found. Install Icarus Verilog and add it to PATH.' }
if (-not (Get-Command vvp -ErrorAction SilentlyContinue)) { throw 'vvp not found. Install Icarus Verilog and add it to PATH.' }

$tests = @(
  @{ Name = 'counter'; Top = 'tb_counter_top'; Sources = @('rtl/counter_top.v','tb/tb_counter_top.v') },
  @{ Name = 'mux2'; Top = 'tb_mux2'; Sources = @('rtl/mux2.v','tb/tb_mux2.v') },
  @{ Name = 'full_adder'; Top = 'tb_full_adder'; Sources = @('rtl/full_adder.v','tb/tb_full_adder.v') }
)
foreach ($test in $tests) {
  $out = "results/$($test.Name).vvp"
  Write-Host "=== Compiling $($test.Name) ==="
  & iverilog -g2012 -Wall -s $test.Top -o $out @($test.Sources)
  if ($LASTEXITCODE -ne 0) { throw "Compilation failed for $($test.Name)" }
  Write-Host "=== Simulating $($test.Name) ==="
  & vvp $out
  if ($LASTEXITCODE -ne 0) { throw "Simulation failed for $($test.Name)" }
}
Write-Host 'All simulation processes completed. Inspect the output above for PASS messages.'

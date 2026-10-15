$ErrorActionPreference = "Stop"
New-Item -ItemType Directory -Force -Path "results" | Out-Null
yosys -s synthesis/counter.ys 2>&1 | Tee-Object -FilePath results/counter_yosys.log
if ($LASTEXITCODE -ne 0) {
  throw "Yosys synthesis failed. Review results/counter_yosys.log."
}

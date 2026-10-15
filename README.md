# RTL Design & Silicon Implementation Flow

<p align="center">
  <strong>Verilog RTL • Functional Verification • Logic Synthesis • Physical Design</strong>
</p>

A structured VLSI learning repository that brings together small RTL designs, self-checking testbenches, synthesis scripts, workflow documentation, and physical-design study notes. The repository is organized to make the design flow easier to follow, reproduce, and present.

## Project at a glance

| Area | Included work |
|---|---|
| RTL design | Parameterized counter, 2:1 multiplexer, full adder, 2:4 decoder, 1011 sequence detector |
| Verification | Separate Verilog testbenches for each design |
| Simulation | PowerShell scripts to compile and run the test suite with Icarus Verilog |
| Synthesis | Yosys scripts for supported RTL modules |
| Documentation | Module guides, classwork notes, assessment, architecture and methodology |
| Physical-design study | Workflow notes, screenshots, and a separate VSDBabySoC post-route STA case study |

## Repository map

```text
RTL_DESIGN_FLOW/
├── rtl/                 # Synthesizable Verilog designs
├── tb/                  # Testbenches
├── synthesis/           # Yosys synthesis scripts
├── scripts/             # Simulation and synthesis helper scripts
├── physical_design/     # Physical-design configuration starter
├── results/             # Functional expectations and status records
├── docs/                # Guides, methodology, screenshots and case studies
├── README.md
└── .gitignore
```

## RTL designs

| Design | Source | Testbench | Purpose |
|---|---|---|---|
| Parameterized counter | [counter_top.v](rtl/counter_top.v) | [tb_counter_top.v](tb/tb_counter_top.v) | Synchronous reset, enable, increment and hold |
| 2:1 multiplexer | [mux2.v](rtl/mux2.v) | [tb_mux2.v](tb/tb_mux2.v) | Select one of two input values |
| Full adder | [full_adder.v](rtl/full_adder.v) | [tb_full_adder.v](tb/tb_full_adder.v) | One-bit binary addition with carry-in and carry-out |
| 2:4 decoder | [decoder2to4.v](rtl/decoder2to4.v) | [tb_decoder2to4.v](tb/tb_decoder2to4.v) | Decode a 2-bit selection when enabled |
| 1011 sequence detector | [sequence_detector_1011.v](rtl/sequence_detector_1011.v) | [tb_sequence_detector_1011.v](tb/tb_sequence_detector_1011.v) | Detect the serial pattern `1011` with overlapping matches |

## Toolchain

| Tool | Role |
|---|---|
| Verilog HDL | RTL design description |
| Icarus Verilog + VVP | Compile and run simulations |
| GTKWave | Inspect generated waveform files |
| Yosys | Logic synthesis and synthesis statistics |
| OpenROAD / OpenLane | Physical-design workflow exploration, where configured |
| Git and GitHub | Source control and documentation |

The physical-design flow depends on a compatible PDK, libraries, constraints, and local tool setup.

## Run simulations

Run these commands from the repository root in PowerShell. Ensure Icarus Verilog is installed and available on your PATH.

```powershell
.\scripts\run_all_sim.ps1
```

The script compiles and runs the testbenches for the listed designs. Read the console output and check each testbench's PASS/FAIL messages; a completed process alone should not be treated as proof that every assertion passed.

To run the counter testbench separately:

```powershell
New-Item -ItemType Directory -Force results | Out-Null
iverilog -g2012 -Wall -s tb_counter_top -o results/counter_sim.vvp rtl/counter_top.v tb/tb_counter_top.v
vvp results/counter_sim.vvp
```

The sequence-detector testbench writes a waveform to `results/sequence_detector_1011.vcd` when the simulation is run from the repository root. Open it with GTKWave if installed:

```powershell
gtkwave results/sequence_detector_1011.vcd
```

## Run synthesis

With Yosys installed and available on your PATH:

```powershell
.\scripts\run_synth.ps1
```

Individual scripts are available under `synthesis/`, including counter, MUX, full-adder, and sequence-detector scripts. Save the actual synthesis output and review the generated statistics for the chosen top-level design.

## Results and evidence

- [Functional expected results](results/functional_results.md) — truth tables and expected behavior for the RTL designs.
- [Simulation status](results/simulation_status.md) — testbench list and instructions for recording execution evidence.
- [Experiment log](docs/results_log.md) — reproducibility fields and status of simulation, synthesis, and physical-design experiments.
- [Physical-design screenshots](docs/module_screenshots.md) — visual learning evidence for implementation stages.
- [Physical-design results notes](docs/physical_design_results.md) — workflow stages and interpretation of physical-design metrics.
- [VSDBabySoC post-route STA case study](docs/vsdbabysoc_postroute_sta.md) — separate report-derived timing analysis across 16 PVT corners.

**Scope note:** The VSDBabySoC timing figures are a separate case study from the small RTL modules in `rtl/`. They are not presented as measured timing results for the counter, MUX, full adder, decoder, or sequence detector.

## Documentation

Start with the [documentation index](docs/README.md), which links to the module guides, sequence-detector assessment, classwork, methodology notes, and physical-design material.

## Design flow

```text
Specification
    ↓
Verilog RTL
    ↓
Testbench development
    ↓
Functional simulation
    ↓
Logic synthesis
    ↓
Reports and implementation analysis
    ↓
Documentation of results and limitations
```

## Reproducibility practices

- Keep RTL, testbenches, and synthesis scripts separate.
- Run commands from the documented working directory.
- Record tool versions, commands, warnings, and exit status.
- Preserve logs and reports when available.
- Distinguish expected results from tool-generated results.
- Do not claim area, timing, utilization, or physical-verification results unless supported by the corresponding reports.

## Future work

- Expand self-checking tests and edge-case coverage.
- Add more combinational and sequential RTL examples.
- Compare synthesis reports across coding approaches.
- Complete a compatible SKY130 physical-design run and preserve its generated reports.
- Improve automated result capture and project documentation.

## References

- [Icarus Verilog](https://steveicarus.github.io/iverilog/)
- [Yosys](https://yosyshq.net/yosys/)
- [GTKWave](https://gtkwave.sourceforge.net/)
- [OpenLane](https://openlane2.readthedocs.io/)
- [OpenROAD](https://openroad.readthedocs.io/)
- [SKY130 documentation](https://skywater-pdk.readthedocs.io/)

---

**Project:** RTL Design & Silicon Implementation Flow  
**HDL:** Verilog  
**Focus:** RTL design, verification, synthesis, and physical-design methodology

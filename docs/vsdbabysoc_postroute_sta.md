# VSDBabySoC Post-Route Multi-Corner Timing Analysis

## Scope

This case study records the post-route timing observations documented for **VSDBabySoC** on the **SkyWater sky130hd** platform using OpenROAD-flow-scripts and the OpenROAD GUI. It is kept separate from the small RTL modules in this repository: the reported timing numbers below are for VSDBabySoC and are **not measured results for the counter, MUX, full adder, decoder, or 1011 sequence detector** in `rtl/`.

## Aim

Inspect the physical-design stages and compare setup and hold slack across 16 process-voltage-temperature (PVT) corners.

## Tools and environment described

- OpenROAD-flow-scripts and OpenROAD GUI
- SkyWater sky130hd platform / PDK
- GitHub Codespaces and noVNC
- Linux terminal and Tcl commands
- Static timing analysis (STA)

The exact tool versions and full run logs were not supplied in the report.

## Methodology

1. Open the design environment and launch the OpenROAD GUI.
2. Inspect the floorplan, macros, constraints, and power network.
3. Inspect standard-cell placement and the VDD power net.
4. Review maximum capacitance, maximum slew, maximum fanout, and hold reports.
5. Inspect the clock-tree synthesis (CTS) database and clock distribution.
6. Inspect routed metal connections and use routing parasitics for timing analysis.
7. Extract worst setup and hold slack from the timing reports for all 16 PVT corners.

## Step-wise observations

| Stage | Observation recorded in the report |
|---|---|
| Floorplanning | Floorplan view and endpoint-slack chart were inspected; no numeric floorplan metric was stated. |
| Placement | Placement layout and VDD net were visible; no numeric placement score was stated. |
| Electrical checks | Capacitance, slew, fanout, and hold reports were reviewed; total violation counts were not supplied. |
| CTS | Clock-tree layout was inspected; no numeric clock-skew value was supplied. |
| Routing | Routed interconnect across multiple metal layers and vias was displayed. |
| Post-route STA | Hold slack was positive for the listed corners; setup violations were reported at several corners. |

## Reported timing results

| Metric | Reported value | Interpretation |
|---|---:|---|
| PVT corners analysed | 16 | Timing compared across operating conditions. |
| Minimum hold slack | 0.19 ns at `ff_n40C_1v95` | Positive reported hold slack at this corner. |
| Hold slack range | 0.19 ns to 1.68 ns | All listed minimum hold-slack values are positive. |
| Worst setup slack | -29.05 ns at `ss_n40C_1v28` | Negative slack indicates a setup timing violation at this corner. |
| Electrical violation counts | Not supplied | No pass/fail count can be inferred from the available report. |

### Main observation

The report indicates that hold timing passes at all 16 listed corners, while setup timing violations occur at several corners. The worst reported setup slack is **-29.05 ns at `ss_n40C_1v28`** and requires critical-path investigation and optimization. The report does not provide enough information to state utilization, routed wire length, congestion, clock skew, or electrical-violation totals.

## Commands shown in the report

These commands assume the matching OpenROAD-flow-scripts workspace and generated files are present. Paths may need to be adapted to the actual environment.

Load the floorplan database:

```tcl
read_db ./results/sky130hd/vsdbabysoc/base/2_floorplan.odb
```

Load constraints and RC configuration:

```tcl
read_sdc ./results/sky130hd/vsdbabysoc/base/2_floorplan.sdc
source ./platforms/sky130hd/setRC.tcl
```

Example shell loop shown for extracting slack summaries from report files:

```bash
for f in *.rpt; do
  echo "$f: $(grep -m1 'worst slack max' "$f") | $(grep -m1 'worst slack min' "$f")"
done
```

The exact report text can vary by OpenROAD version and report format; verify the grep patterns against the actual `.rpt` files before relying on the extracted values.

## Limitations

- Complete per-corner timing values and all raw timing reports are not included here.
- No numeric utilization, cell area, routed wire length, congestion, clock skew, or electrical-violation count is provided.
- Tool versions, complete constraints, and full execution logs are not specified.
- These values describe the VSDBabySoC case study only and must not be copied into the measured-results table for this repository's own RTL modules.

## Suggested next steps for this case study

1. Inspect the worst setup paths at the violating corners.
2. Confirm clock and input/output constraints.
3. Consider logic restructuring, cell sizing, or buffering only after reviewing the critical paths.
4. Re-run post-route STA and compare the same PVT corners after changes.

## Source note

Values and observations on this page were transcribed from the supplied `vlsi_postroute.pdf` report. They are documented as report-derived results, not as a fresh run performed in this repository.

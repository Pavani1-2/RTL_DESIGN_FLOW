# Physical Design Workflow

Physical design converts a technology-mapped netlist into a layout that satisfies implementation constraints. Successful execution depends on the installed flow, compatible PDK, libraries, and constraints.

## Typical stages
1. **Floorplanning:** define die/core area, utilization targets, and macro locations.
2. **Power planning:** build power/ground distribution structures.
3. **Placement:** position standard cells and optimize placement-related timing.
4. **Clock-tree synthesis:** construct clock distribution and manage skew.
5. **Global routing:** estimate routing resources and congestion.
6. **Detailed routing:** create actual signal routes.
7. **Timing analysis:** evaluate setup/hold and constrained paths.
8. **Design-rule checks:** inspect layout against technology rules.

## Evidence to preserve
- Flow configuration and tool versions.
- Complete logs and exit codes.
- Synthesis and implementation netlists.
- Floorplan/placement/routing reports.
- Timing reports and slack.
- Area/utilization reports.
- DRC/LVS reports where supported.

Do not report area, frequency, delay, power, or DRC success without corresponding generated reports. `physical_design/config.json` is a starter configuration and may require changes for the local flow and PDK.

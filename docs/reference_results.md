# Physical-Design Reference Results (External Workshop)

This page records the *types of results* shown in the public RTL_Workshop repository for comparison and study. These are external reference materials, not measurements produced by this repository. Do not present them as results from `RTL_DESIGN_FLOW` unless the corresponding flow is independently run and verified.

## Source repository

- Workshop: https://github.com/madapaamrutha-svg/RTL_Workshop
- Module 1: https://github.com/madapaamrutha-svg/RTL_Workshop/blob/main/PD-Module-1/README.md
- Module 2 — chip floorplanning and power integrity: https://github.com/madapaamrutha-svg/RTL_Workshop/blob/main/PD-Module-2/README.md
- Module 3: https://github.com/madapaamrutha-svg/RTL_Workshop/blob/main/PD-Module-3/README.md
- Module 4: https://github.com/madapaamrutha-svg/RTL_Workshop/blob/main/PD-Module-4/README.md
- Module 5: https://github.com/madapaamrutha-svg/RTL_Workshop/blob/main/PD-Module-5/README.md

## Reference result categories

The workshop documentation describes and illustrates the following physical-design stages and artifacts:

1. **Floorplanning:** die/core boundaries, core utilization, aspect ratio, and placement regions.
2. **Power integrity:** power distribution network (PDN), supply rails, switching-current effects, IR drop, and decoupling-capacitor concepts.
3. **Placement preparation:** pre-placed blocks, placement blockages, and tap-cell insertion.
4. **Technology binding:** SKY130 technology/LEF information and mapping logical cells to physical standard cells.
5. **Timing setup:** SDC clock constraints and clock-period configuration.
6. **Layout inspection:** visual inspection of placement, power structures, cell rows, and routing-related views.
7. **Flow configuration:** OpenLane/OpenROAD settings for a SKY130 standard-cell library.

## Relationship to this repository

The current local RTL examples (counter, 2:1 MUX, full adder, and 2-to-4 decoder) are not the same design as the workshop's `picorv32a` flow. Consequently, numerical area, timing, power, placement, routing, or sign-off results cannot be copied and represented as measurements for these modules.

## How to create genuine results for this project

- Run the RTL testbenches using `scripts/run_all_sim.ps1` and save the console logs.
- Run the Yosys scripts and preserve the generated netlists and statistics.
- To produce physical-design results, select a supported top-level design, install/configure a compatible OpenLane/OpenROAD flow and SKY130 PDK, execute the flow, and preserve its reports and layout screenshots.
- Update `docs/results_log.md` with the exact commands, tool versions, exit status, and actual report paths.

**Reporting rule:** clearly label any borrowed workshop screenshot or metric as an external reference. Only call it a result of this project after reproducing it with this repository's design and tool configuration.

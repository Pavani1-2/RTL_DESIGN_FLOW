# Physical-design run notes

## Important compatibility note

This `config.json` is a starter for an OpenLane 1-style configuration. OpenLane 2 uses a different configuration and invocation model in many installations. Check your installed version and use its matching documentation before running a flow.

## Required environment

- Linux or WSL2 is generally the practical route on a Windows laptop.
- Docker, if required by the chosen OpenLane setup.
- A compatible OpenLane/OpenROAD release.
- A configured PDK and standard-cell libraries (for example SKY130).
- A valid design configuration and timing constraints.

## Suggested workflow

1. Check the installed flow version and its examples.
2. Adapt the configuration to that version.
3. Run the flow using the command prescribed by that installation.
4. Save the full log and reports, not just a screenshot of a successful finish.
5. Record tool versions, PDK, configuration, and warnings.
6. Inspect DRC, LVS (if supported/configured), timing, area, and routing reports.
7. Copy actual reports into `results/physical_design/` and update `docs/results_log.md`.

Do not report a physical-design run as successful until the tool completes and the reports have been inspected.

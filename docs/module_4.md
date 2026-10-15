# Module 4 — Blocking vs Non-Blocking Assignments

## Blocking assignment
The `=` operator updates a procedural variable immediately within the current procedural flow. It is commonly used in combinational `always @(*)` blocks.

## Non-blocking assignment
The `<=` operator schedules an update for the non-blocking assignment region. It is the standard choice for registers in edge-triggered blocks.

## Recommended style
- Combinational logic: use blocking assignments and assign defaults to avoid unintended latches.
- Clocked sequential logic: use non-blocking assignments.
- Avoid multiple procedural drivers for the same register.
- Check reset behavior and sensitivity carefully.

## Evidence
Use a combinational example and a clocked-register example; simulate both and inspect the waveform before synthesis.

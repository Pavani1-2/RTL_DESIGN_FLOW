# Physical Design Results
## Physical-Design Flow

The physical-design workflow covers:

1. Floorplanning
2. Power planning
3. Standard-cell placement
4. Clock-tree synthesis (CTS)
5. Routing
6. Antenna checking and repair
7. Static timing analysis (STA)
8. Parasitic extraction (SPEF)
9. Logic equivalence checking (LEC)
10. Physical verification, including DRC/LVS where supported
11. Configuration and design-space exploration

## Floorplanning
![Floorplanning](https://github.com/user-attachments/assets/ac0877fb-b69b-4be6-983e-550a19eb3485)

## Power Planning
![Power Planning](https://github.com/user-attachments/assets/0d50ac3f-e9c5-43fe-a05e-23882d779087)

## Placement
![Placement](https://github.com/user-attachments/assets/d2610ebf-ec28-4a70-a43a-284c3080ed6b)

## Clock-Tree Synthesis
![Clock Tree Synthesis](https://github.com/user-attachments/assets/f724ebf5-2401-45dd-b132-34c53b278570)

## Routing
![Routing](https://github.com/user-attachments/assets/2f4dc4c1-bb8c-4098-9319-d58cfae02bd7)

## Static Timing Analysis
![Static Timing Analysis](https://github.com/user-attachments/assets/e997a139-61e9-49e2-ac5f-2513f4c75a88)

## Design-Space Exploration
![Design Space Exploration](https://github.com/user-attachments/assets/bfe05bcf-5c64-4b51-b930-442e476e1324)

## What the Metrics Mean

| Metric | Interpretation | Evidence to Record |
|---|---|---|
| Cell area | Total mapped/placed cell area as defined by the report | Synthesis or physical-design report |
| Cell count | Number of cells in the implementation | Tool report |
| Utilization | Fraction of core area occupied by cells | Floorplan report |
| Timing / slack | Whether constrained paths meet timing | STA report and constraints |
| Routing | Status of physical interconnect implementation | Routing logs and reports |
| DRC / LVS | Layout-rule and connectivity checks | Physical verification reports |
| Antenna | Antenna-rule checking and repair status | Flow logs |

The exact metrics depend on the selected design, PDK, libraries, constraints, and tool versions. For this repository's own measured results, run the chosen implementation flow and record its generated logs and reports.

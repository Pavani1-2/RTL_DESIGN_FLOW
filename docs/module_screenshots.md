# Physical Design Modules
## Module 1 — Complete ASIC Physical-Design Flow

Topics: floorplanning, power planning, placement, clock-tree synthesis (CTS), routing, antenna checks, static timing analysis (STA), parasitic extraction (SPEF), logic-equivalence checks, and physical verification.

### Floorplanning
![Floorplanning](https://github.com/user-attachments/assets/ac0877fb-b69b-4be6-983e-550a19eb3485)

### Power Planning
![Power Planning](https://github.com/user-attachments/assets/0d50ac3f-e9c5-43fe-a05e-23882d779087)

### Placement
![Placement](https://github.com/user-attachments/assets/d2610ebf-ec28-4a70-a43a-284c3080ed6b)

### Clock-Tree Synthesis
![Clock Tree Synthesis](https://github.com/user-attachments/assets/f724ebf5-2401-45dd-b132-34c53b278570)

### Routing
![Routing](https://github.com/user-attachments/assets/2f4dc4c1-bb8c-4098-9319-d58cfae02bd7)

### Static Timing Analysis
![Static Timing Analysis](https://github.com/user-attachments/assets/e997a139-61e9-49e2-ac5f-2513f4c75a88)

### Design-Space Exploration
![Design Space Exploration](https://github.com/user-attachments/assets/bfe05bcf-5c64-4b51-b930-442e476e1324)

## Module 2 — Chip Floorplanning and Power Integrity

Topics: core/die dimensions, netlist-to-physical mapping, area and utilization, aspect ratio, pre-placed cells, IP blocks, decoupling capacitors, switching current and voltage drop, tap cells, LEF/technology files, placement blockages, OpenLane configuration, timing constraints, and placement.

![Core and Die Floorplanning](https://github.com/user-attachments/assets/99014082-f6ff-4e35-88ee-ec74ea45e9ad)

![Floorplanning and Power Integrity](https://github.com/user-attachments/assets/7f6fdf41-93b2-4a8a-a023-0f82d896f96b)

![Physical Design](https://github.com/user-attachments/assets/d657d5b0-e0b9-4d39-a04f-93521dcb6056)

## Module 3 — CMOS Inverter, SPICE, and SKY130 Cell Layout

Topics: CMOS inverter transient simulation, input/output waveforms, rise/fall behavior, voltage-transfer characteristics, switching threshold, transistor sizing, standard-cell layout, and correlation between schematic, simulation, and physical layout.

![CMOS Inverter Simulation](https://github.com/user-attachments/assets/49059bca-d76c-4928-a2fa-280ebf9307f5)

![Waveform and Characterization](https://github.com/user-attachments/assets/939cf014-7cdb-481e-9814-b36432bc3de8)

![Inverter Result](https://github.com/user-attachments/assets/f5eef6f2-4ef7-42f5-8e06-9d0101f20d30)

## Module 4 — Timing Analysis, CTS, and Physical Design

Topics: synthesis and cell mapping, post-synthesis statistics, setup/hold analysis, ideal-clock versus propagated-clock timing, slack, clock skew, CTS buffer configuration, placement, and timing closure.

![Physical Design](https://github.com/user-attachments/assets/460b53d1-16d5-4a7f-824b-5758aad39e4e)

![Timing and Placement](https://github.com/user-attachments/assets/e5af02df-e4c8-4eeb-88ed-fdaaa12585bf)

![CTS and Clock Timing](https://github.com/user-attachments/assets/7e80e3b9-9f55-4630-ba6a-898a4e29c2df)

## Module 5 — Routing, DRC, Parasitics, and TritonRoute

Topics: global and detailed routing, maze routing, design-rule checks, wire width and via spacing, route guides, connectivity, TritonRoute, SPEF parasitic extraction, and post-route analysis.

![Routing](https://github.com/user-attachments/assets/db68b38b-d354-4555-bd63-b95fe62f1a29)

![Maze Routing](https://github.com/user-attachments/assets/15e3377e-5072-4200-abb9-38afd8bac285)

![DRC and Layout](https://github.com/user-attachments/assets/bccabd9e-d1c6-434a-9548-b3f874a72dba)

## Results Interpretation

Physical-design reports commonly include cell area, cell count, utilization, timing slack, routing status, parasitic data, DRC, LVS, and antenna checks. Values depend on the design, configuration, PDK, libraries, constraints, and tool versions. Results for this repository's own RTL should be recorded after running the corresponding tools and inspecting their generated reports.

## RTL Implementation

This repository includes Verilog examples (counter, MUX, full adder, and decoder), testbenches, and Yosys scripts. The physical-design workflow can be extended by running a compatible implementation flow and recording its generated reports.

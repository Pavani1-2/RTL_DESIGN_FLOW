# RTL Coding and Timing Concepts

## Combinational logic
Combinational outputs depend on current inputs. Continuous assignments (`assign`) are suitable for simple Boolean equations. A 2:1 multiplexer implements `y = sel ? b : a`; a full adder computes `sum = a XOR b XOR cin` and `cout = ab + a·cin + b·cin`.

## Sequential logic
Sequential circuits store state. Edge-triggered registers update on a clock edge. In Verilog, nonblocking assignments (`<=`) are preferred in clocked processes to model simultaneous register updates. Reset polarity and synchronous/asynchronous behavior must match the design specification.

## Setup and hold timing
Setup time is the minimum interval that data must be stable before the active clock edge. Hold time is the minimum interval data must remain stable after that edge. Timing analysis checks paths against clock constraints and cell/interconnect delays. A timing report, not an RTL-only estimate, is needed to claim timing closure.

## Critical path
The critical path is the constrained path with the smallest timing slack. Logic depth, cell choice, fanout, routing parasitics, and clock uncertainty can affect path delay. Optimization may trade area, delay, and power.

## Verification versus synthesis
Simulation checks behavior for applied test vectors; it does not prove all possible behaviors unless a formal method is used. Synthesis maps RTL into a logic representation. Physical design places and routes cells using a technology-specific flow. These are related but distinct milestones.

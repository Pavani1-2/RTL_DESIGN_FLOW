# Functional Results

These tables are expected functional outcomes derived from the RTL specifications. They are not a captured Icarus Verilog or Yosys terminal log. Add the actual tool transcript after running the testbench on the project machine.

## 1. 2-to-1 Multiplexer

| sel | a | b | Expected y |
|---:|---:|---:|---:|
| 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 0 |
| 0 | 1 | 0 | 1 |
| 0 | 1 | 1 | 1 |
| 1 | 0 | 0 | 0 |
| 1 | 0 | 1 | 1 |
| 1 | 1 | 0 | 0 |
| 1 | 1 | 1 | 1 |

Expected behavior: y follows a when sel=0 and follows b when sel=1.

## 2. Full Adder

| a | b | cin | Expected sum | Expected cout |
|---:|---:|---:|---:|---:|
| 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 | 0 |
| 0 | 1 | 0 | 1 | 0 |
| 0 | 1 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 1 | 0 | 1 |
| 1 | 1 | 0 | 0 | 1 |
| 1 | 1 | 1 | 1 | 1 |

## 3. 2-to-4 Decoder

| en | a1 | a0 | Expected y[3:0] |
|---:|---:|---:|---:|
| 0 | X | X | 0000 |
| 1 | 0 | 0 | 0001 |
| 1 | 0 | 1 | 0010 |
| 1 | 1 | 0 | 0100 |
| 1 | 1 | 1 | 1000 |

Confirm output bit ordering against `rtl/decoder2to4.v` before using this table in a report.

## 4. Counter

Expected behavior for a synchronous reset and enable counter:
- At a rising clock edge with reset asserted, count becomes zero.
- With reset deasserted and enable asserted, count increments by one.
- With enable deasserted, count retains its value.
- Overflow wraps according to the counter width.

## 5. 1011 Sequence Detector

Expected detection sequence for input bits `1, 0, 1, 1`:
- First three sampled bits: detected remains 0.
- Fourth sampled bit completes 1011: detected becomes 1 for one clock cycle.

The supplied testbench also checks a second match in the stream `1011011`.

## Verification status

| Check | Status |
|---|---|
| Expected truth tables documented | Complete |
| RTL simulations executed in this environment | Not run |
| Icarus Verilog transcript captured | Pending local tool run |
| Yosys reports captured | Pending local tool run |
| Physical-design reports captured | Pending flow execution |

Do not label these expected tables as measured simulator output.

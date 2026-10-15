# Functional Results

> **Result type:** Expected functional results derived from the RTL specifications and testbench stimulus. These are not simulator-generated logs. Run the testbenches to confirm the results on your machine.

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

**Expected observation:** When `sel=0`, `y=a`; when `sel=1`, `y=b`.

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

**Expected observation:** `sum = a XOR b XOR cin`; carry is 1 when at least two inputs are 1.

## 3. 2-to-4 Decoder

| en | a1 | a0 | Expected y[3:0] |
|---:|---:|---:|---:|
| 0 | X | X | 0000 |
| 1 | 0 | 0 | 0001 |
| 1 | 0 | 1 | 0010 |
| 1 | 1 | 0 | 0100 |
| 1 | 1 | 1 | 1000 |

**Expected observation:** When enabled, exactly one output bit is high. When disabled, all outputs are low. Confirm output bit ordering against `rtl/decoder2to4.v`.

## 4. Counter

| Condition at rising clock edge | Expected count behavior |
|---|---|
| Reset asserted | Count becomes 0 |
| Reset inactive, enable=1 | Count increments by 1 |
| Reset inactive, enable=0 | Count holds its value |
| Maximum count then enabled | Wraps according to counter width |

**Expected observation:** Reset has priority if that is how the RTL is coded; confirm the implementation in `rtl/counter_top.v`.

## 5. 1011 Sequence Detector

For serial input stream `1, 0, 1, 1`:

| Sampled input | Expected detected |
|---:|---:|
| 1 | 0 |
| 0 | 0 |
| 1 | 0 |
| 1 | 1 |

The testbench also applies stream `1,0,1,1,0,1,1` (`1011011`). Expected detections occur at the fourth and seventh sampled bits, demonstrating that the detector can find a second occurrence after the first.

## Verification status

| Check | Status |
|---|---|
| Expected functional cases documented | Complete |
| Icarus Verilog simulations executed here | Not run |
| Actual simulator console log attached | Pending local run |
| Yosys synthesis reports captured | Pending local run |
| Physical-design metrics captured | Pending flow execution |

**Important:** Do not report expected values as measured results. After running the tools, replace pending statuses only with evidence from the actual output.
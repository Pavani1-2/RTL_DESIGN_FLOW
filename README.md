## 2. Design Architecture

The RTL design follows a synchronous sequential architecture. Its operation is controlled by the clock, reset, and enable signals.

### Main Components

- **Clock signal (`clk`):** Synchronizes counter operations with the rising edge of the clock.
- **Reset signal (`rst`):** Clears the counter to zero when asserted at a rising clock edge.
- **Enable signal (`en`):** Controls whether the counter increments or holds its current value.
- **Counter register (`count`):** Stores the current counter value.
- **Parameterized width (`WIDTH`):** Defines the number of bits used by the counter.

### Operating Sequence

1. The clock provides synchronization for sequential operations.
2. When reset is asserted, the counter is cleared to zero.
3. When reset is inactive and enable is high, the counter increments by one.
4. When both reset and enable are low, the counter retains its previous value.
5. When the maximum representable value is reached, the counter wraps around to zero on the next enabled increment.

This architecture demonstrates synchronous control, register-based storage, conditional state updates, and parameterized RTL design.

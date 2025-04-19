# Logic Module Library

This folder contains core reusable logic modules inspired by SIMPL Windows logic symbols.

## Modules

- **AND.dsl** — Output goes high only when all inputs are high
- **NOT.dsl** — Inverts a single digital input
- **Interlock.dsl** — Latching input selector (cassette button style)
- **Toggle.dsl** — Flips output state on each rising edge
- **SetResetLatch.dsl** — Classic SR latch
- **Delay.dsl** — Delays output after rising edge

All modules use `param` where applicable for flexibility and can be connected using `connect`.

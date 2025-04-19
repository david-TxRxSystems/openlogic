# Keypad Module

Sends lighting scene or ramp commands over the Lighting$ bus.

## Parameters

| Name        | Type     | Description                                |
|-------------|----------|--------------------------------------------|
| Area        | integer  | Scene area target                          |
| Buttons     | integer  | Number of buttons supported (1–8)          |
| RampDir[i]  | string   | "up" or "down" for hold behavior per button|

## Input Signals

- `Button[i]`: triggers `[A:x,S:y]`
- `Hold[i]`: emits `[A:x,RAMPUP]` or `[A:x,RAMPDOWN]`
- `Release[i]`: emits `[A:x,RAMPSTOP]`

## Output Signals

- `Lighting$`: String bus for scene and ramp messaging

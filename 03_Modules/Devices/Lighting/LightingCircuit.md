# Lighting Circuit Module (Proportional Ramp)

Responds to lighting commands and fades to target levels over a time proportional to the change, based on the specified RampTime.

## Parameters

| Name      | Type    | Description                                |
|-----------|---------|--------------------------------------------|
| Area      | integer | Area ID this circuit belongs to            |
| CircuitID | integer | Unique circuit ID                          |
| Name      | string  | Human-readable circuit name                |
| RampTime  | float   | Time in seconds to fade from 0% to 100%    |

## Commands

| Message              | Description                                 |
|----------------------|---------------------------------------------|
| `[A:x,S:y]`          | Fade to level stored in scene y             |
| `[A:x,RAMPUP]`       | Fade to 100% from current level             |
| `[A:x,RAMPDOWN]`     | Fade to 0% from current level               |
| `[A:x,RAMPSTOP]`     | Stop any current ramping                    |

## Ramp Behavior

- Ramp time is proportional to level change.
- Example: from 40% to 100% with RampTime = 2s → actual ramp duration = 1.2s.
- Ramps in 100ms intervals at calculated step sizes.

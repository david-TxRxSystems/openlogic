# Lighting Module

Handles scene selection, dimming, and power for lighting zones.

## Inputs

- `SceneSelect[4]` — Choose a preset scene
- `On`, `Off` — Control power state
- `DimUp`, `DimDn` — Adjust brightness

## Outputs

- `DimLevel` — Analog level (0–100)
- `SceneFB[4]` — Pulses when a scene is selected
- `IsOn` — True if DimLevel > 0

# Lighting UI Module

Handles scene button interactions and user-driven scene editing for a specified area.

## Parameters

| Name | Type    | Description                    |
|------|---------|--------------------------------|
| Area | integer | The Area ID this UI controls   |

## Inputs

- `SceneButton[i]` — Tap to recall a scene
- `SceneHold[i]` — Hold to enter scene editor
- `SceneRelease[i]` — Optional end of hold
- `SaveScene` — Save current circuit levels as scene

## Outputs

- `Lighting$` — Sends control and discovery messages
- `DiscoveryIn$` — Input from circuits, parsed to populate UI

## Behavior

- Sends `[A:x,S:y]` for basic scene activation
- Sends `[A:x,DISCOVER]` on long press
- Sends `[A:x,SCENE:y,SAVE]` when user saves the current edits

# Lighting$ Protocol Specification

Defines the message-based protocol used between keypad, UI, and lighting modules.

## Command Types

| Message Format              | Description                                  |
|-----------------------------|----------------------------------------------|
| `[A:x,S:y]`                 | Trigger Scene y for Area x                   |
| `[A:x,RAMPUP]`              | Begin manual ramp-up                         |
| `[A:x,RAMPDOWN]`            | Begin manual ramp-down                       |
| `[A:x,RAMPSTOP]`            | Stop ramping                                 |
| `[A:x,DISCOVER]`            | Request info from all circuits in Area x     |
| `[A:x,SCENE:y,SAVE]`        | Instruct circuits to save current level      |

## Discovery Response Format

```text
[A:x,CIRCUIT:id,LEVEL:value,NAME:"Name"]
```

## Scene Storage

Each circuit stores scene levels in a file:

`/config/lighting/AreaX/CY.scenes.json`

```json
{
  "Scene1": 100,
  "Scene2": 70,
  "Scene3": 40,
  "Scene4": 0
}
```

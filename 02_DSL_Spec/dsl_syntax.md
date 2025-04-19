# 📘 DSL Syntax Overview

OpenLogic uses a clean, declarative syntax inspired by SIMPL+, designed for structured signal-based logic programming.

## 🧮 Signal Types

```dsl
DIGITAL_INPUT
PowerOn,
MuteToggle;

ANALOG_INPUT
VolumeLevel;

DIGITAL_OUTPUT
SystemOn,
MuteFB;

ANALOG_OUTPUT
VolumeFB;
```

## ⚙️ Parameters

```dsl
param DeviceID = 42
param FadeTime = 2.0
```

## 🧠 Modifiers

- `pulse` — pulse output signal once
- `wait` — pause logic execution for duration
- `emit` — send value
- `on rising(...)`, `on falling(...)`, `on change(...)` — event triggers


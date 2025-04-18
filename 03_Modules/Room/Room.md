# Room Module — OpenLogic Core

This module serves as a smart room state broker. It **reflects inputs from other logic modules** and **outputs structured room state** for use in UI feedback or inter-module logic.

---

## 🧭 Purpose

- No internal control logic (no UI buttons processed)
- Updates outputs based on inputs from:
  - Audio module
  - Matrix router
  - Thermostat
  - Lighting/shading
  - Occupancy/presence system

---

## 🔌 Inputs

| Name             | Type     | From Module           |
|------------------|----------|------------------------|
| `SelectedSourceIn` | analog   | Matrix / AV control    |
| `VolumeLevelIn`  | analog   | Audio module           |
| `MuteStateIn`    | digital  | Audio module           |
| `AVModeIn$`      | string   | AV control logic       |
| `ShadePosIn`     | analog   | Shading logic          |
| `CurrentTempIn`  | analog   | Sensor module          |
| `SetPointIn`     | analog   | Thermostat             |
| `HVACModeIn$`    | string   | Thermostat             |
| `FanSpeedIn`     | analog   | HVAC                   |
| `NowPlayingIn$`  | string   | Media info             |
| `IsOccupiedIn`   | digital  | Occupancy detection    |

---

## 📤 Outputs

| Name             | Type     | Description |
|------------------|----------|-------------|
| `RoomPower`      | digital  | Set internally: true when a source is active |
| `CurrentSource`  | analog   | Echo of `SelectedSourceIn` |
| `VolumeFB`       | analog   | Echo of `VolumeLevelIn` |
| `MuteFB`         | digital  | Echo of `MuteStateIn` |
| `AVMode$`        | string   | Echo of `AVModeIn$` |
| `ShadePos`       | analog   | Echo of `ShadePosIn` |
| `CurrentTemp`    | analog   | Echo of `CurrentTempIn` |
| `SetPoint`       | analog   | Echo of `SetPointIn` |
| `HVACMode$`      | string   | Echo of `HVACModeIn$` |
| `FanSpeed`       | analog   | Echo of `FanSpeedIn` |
| `NowPlaying$`    | string   | Echo of `NowPlayingIn$` |
| `IsOccupied`     | digital  | Echo of `IsOccupiedIn` |
| `To_UI$`         | string   | Optional formatted feedback output |

---

## 🔁 Logic

- `RoomPower` is calculated as `SelectedSourceIn > 0`
- All outputs reflect input state

---

## 🛠 Notes

- Designed to be reusable across multiple rooms
- May be extended later with UI binding or scheduler link

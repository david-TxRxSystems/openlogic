# Audio Module — OpenLogic Core

The `Audio` module manages core audio functionality including power, volume, mute, source selection, and EQ control.

---

## 🔌 Inputs

| Name              | Type     | Purpose                              |
|-------------------|----------|--------------------------------------|
| `PowerOn`         | digital  | Turns audio system on                |
| `PowerOff`        | digital  | Turns audio system off               |
| `VolUp`           | digital  | Increases volume                     |
| `VolDn`           | digital  | Decreases volume                     |
| `MuteToggle`      | digital  | Toggles mute state                   |
| `SourceSelect[i]` | digital  | Selects audio source (index 1–36)    |
| `BassAdjust`      | analog   | Adjusts bass EQ value                |
| `MidAdjust`       | analog   | Adjusts mid EQ value                 |
| `TrebleAdjust`    | analog   | Adjusts treble EQ value              |

---

## 📤 Outputs

| Name              | Type     | Description                         |
|-------------------|----------|-------------------------------------|
| `AudioPower`      | digital  | True if system is on                |
| `MuteFB`          | digital  | Current mute state                  |
| `VolumeLevel`     | analog   | Current volume level                |
| `SelectedSource`  | analog   | Currently selected source           |
| `BassFB`          | analog   | Current bass EQ setting             |
| `MidFB`           | analog   | Current mid EQ setting              |
| `TrebleFB`        | analog   | Current treble EQ setting           |

---

## 🔁 Internal Logic

- Maintains `Volume`, `MuteFlag`, `SourceIndex`, `Bass`, `Mid`, `Treble`
- Edge triggers for controls (e.g. `on rising(VolUp)`)
- `change` events for analog EQ sliders

---

## 🔧 Use Cases

- UI feedback for Room modules
- Binding to external audio hardware
- Supports future extensions like preset scenes or input switching


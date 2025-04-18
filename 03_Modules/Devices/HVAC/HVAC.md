# HVAC Module — OpenLogic Core

The `HVAC` module handles control and feedback for heating, cooling, fan speed, and temperature setpoints. Designed for room-based climate control and compatible with UI feedback.

---

## 🔌 Inputs

| Name               | Type     | Description                              |
|--------------------|----------|------------------------------------------|
| `ModeSelect[i]`    | digital  | Select HVAC mode (0=Off, 1=Heat, 2=Cool, 3=Auto) |
| `SetPointUp`       | digital  | Increase setpoint                         |
| `SetPointDn`       | digital  | Decrease setpoint                         |
| `FanSpeedSelect[i]`| digital  | Select fan speed (0=Auto, 1=Low, 2=Med, 3=High) |
| `SetPointAnalog`   | analog   | Direct analog override of setpoint        |

---

## 📤 Outputs

| Name         | Type     | Description                          |
|--------------|----------|--------------------------------------|
| `CurrentTemp`| analog   | Current ambient temperature (external input) |
| `SetPoint`   | analog   | Current target temperature           |
| `HVACModeFB` | analog   | Current HVAC mode index              |
| `FanSpeedFB` | analog   | Current fan speed index              |

---

## 🧠 Internal Logic

- Setpoint is clamped between 10 and 30°C
- HVAC mode and fan speed track feedback as analog enums
- External modules (like sensors) should assign `CurrentTemp`

---

## 🧩 Integrations

- Connect `SetPoint`, `HVACModeFB`, and `FanSpeedFB` to Room/ UI modules
- Link `CurrentTemp` to a sensor module
- Integrate with Home Assistant via bridge modules

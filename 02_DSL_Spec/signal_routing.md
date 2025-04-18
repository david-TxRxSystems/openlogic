# Signal Routing & Wiring — OpenLogic DSL

Signal routing connects modules together, binds external devices to logic, and maps outputs to UI or feedback systems.

---

## 🔧 Module Instantiation

Declare reusable logic modules like `GenericRoom`, `HVACController`, etc.

```dsl
module GenericRoom LivingRoom
module HVACController HVAC
```

---

## 🔌 Signal Connections

Connect output signals to input signals:

```dsl
connect Button1 -> LivingRoom.Mute
connect HA_TempSetpoint -> HVAC.Setpoint
connect HVAC.TempFeedback -> LivingRoom.RoomTemp
```

---

## 🧰 External Inputs & Outputs

Declare externally bound signals (e.g., UI, MQTT, sensors):

```dsl
external digital Button1
external analog HA_TempSetpoint
external string RoomName$
```

---

## 🔁 Constant Assignments

Assign constant values to signals:

```dsl
connect true -> LivingRoom.PowerOn
connect 42 -> HVAC.DefaultSetpoint
connect "Living Room" -> LivingRoom.RoomName$
```

---

## 🪪 Aliases

Expose signals to external systems with a custom name:

```dsl
alias LivingRoom.To_UI$ as "ui-out"
alias HVAC.Setpoint as "ha/hvac/set"
alias LivingRoom.VolumeLevel as "mqtt/audio/volume"
```

---

## 📦 Group Routing (planned)

```dsl
connect Matrix.Source[1..4] -> LivingRoom.Source[1..4]
```

---

## 🔐 Scoping and Namespacing

Modules are referenced by their instance name. Signals are scoped like:

```dsl
LivingRoom.VolumeLevel
HVAC.CurrentTemp
```

> This makes it easy to build large, structured systems from reusable logic blocks.

---

## ✅ Summary

| Keyword     | Purpose                             |
|-------------|-------------------------------------|
| `module`    | Instantiate a logic unit            |
| `connect`   | Wire signals together               |
| `external`  | Bind to physical/input systems      |
| `alias`     | Map signal names to external labels |
| constants   | Assign static signal values         |

---

Signal routing is the backbone of OpenLogic system composition.

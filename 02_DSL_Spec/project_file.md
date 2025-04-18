# OpenLogic Project File Syntax

The OpenLogic project file (e.g., `main.dsl`) defines the full structure of a running system: modules, signals, wiring, and external integration points.

---

## 📁 Basic Layout

```dsl
project OpenLogicDemo {
  include "modules/GenericRoom.dsl"
  include "modules/HVACController.dsl"

  module GenericRoom LivingRoom
  module HVACController HVAC

  external digital Button1
  external analog HA_TempSetpoint

  connect Button1 -> LivingRoom.Mute
  connect HA_TempSetpoint -> HVAC.Setpoint
  connect HVAC.TempFeedback -> LivingRoom.RoomTemp

  alias LivingRoom.To_UI$ as "ui/livingroom/out"
}
```

---

## 🧱 Top-Level Keywords

| Keyword     | Description |
|-------------|-------------|
| `project`   | Names the project and defines the root scope |
| `include`   | Loads external DSL files (modules) |
| `module`    | Instantiates a module |
| `external`  | Declares an input/output from the outside world |
| `connect`   | Wires signals between modules and sources |
| `alias`     | Maps signal names for external systems |

---

## 🗂 File Layout Example

```plaintext
OpenLogic/
├── main.dsl
├── modules/
│   ├── GenericRoom.dsl
│   ├── HVACController.dsl
```

---

## 🔁 Grouped Connections (Future Syntax)

```dsl
connect Matrix.Source[1..4] -> LivingRoom.Source[1..4]
```

---

## ✅ Summary

The project file serves as the "wiring diagram" of your entire OpenLogic system — analogous to the SIMPL signal layout, but in declarative code form.


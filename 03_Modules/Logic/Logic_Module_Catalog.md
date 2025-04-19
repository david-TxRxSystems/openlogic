# 🧠 OpenLogic Logic Module Catalog

This is a complete reference of core logic modules inspired by SIMPL Windows, recreated in OpenLogic DSL.  
These reusable modules live in `/03_Modules/Logic/` and form the building blocks of smart home logic programming.

---

## 🔁 Boolean Logic

| Module         | Description                                    |
|----------------|------------------------------------------------|
| `AND`          | True when **all** inputs are high              |
| `OR`           | True when **any** input is high                |
| `NOT`          | Inverts a single digital input                 |
| `NAND`         | NOT of AND                                     |
| `NOR`          | NOT of OR                                      |
| `XOR`          | True if **odd** number of inputs are high      |
| `EdgeDetector` | Outputs pulse on rising/falling edges          |
| `PulseStretcher`| Extends a digital pulse                       |

---

## 🔒 Latching & Memory

| Module            | Description                                      |
|-------------------|--------------------------------------------------|
| `Toggle`          | Toggles output state on each rising edge         |
| `SetResetLatch`   | Basic S-R latch logic                            |
| `Latch`           | Samples input value on clock                     |
| `Interlock`       | One-hot latch (like cassette recorder buttons)   |

---

## ⏱️ Timers

| Module              | Description                                |
|---------------------|--------------------------------------------|
| `OneShotTimer`      | Pulse output for fixed duration             |
| `RetriggerableTimer`| Resets timer on new trigger                 |
| `VariableDelay`     | Delay using analog input                    |
| `Oscillator`        | On/off wave generator with Enable control   |
| `Delay`             | Delays pulse for fixed time                 |

---

## 🔢 Counters

| Module           | Description                             |
|------------------|-----------------------------------------|
| `BinaryCounter`  | Counts up, wraps at max                 |
| `UpDownCounter`  | Bidirectional counter with min/max      |
| `RingCounter`    | Cycles one-hot output bit               |

---

## 🔀 Routing

| Module             | Description                                   |
|--------------------|-----------------------------------------------|
| `CrosspointSwitch` | Dynamic input/output routing matrix           |
| `DigitalSelector`  | Routes selected digital input to output       |
| `AnalogSelector`   | Routes selected analog input to output        |

---

## 🧮 Analog Processing

| Module         | Description                                 |
|----------------|---------------------------------------------|
| `AnalogSum`    | Adds multiple analog inputs                 |
| `AnalogCompare`| Outputs GT/LT/EQ from two analog signals    |
| `Scaler`       | Remaps value range (e.g., 0–100 to 0–255)   |
| `AnalogRamp`   | Smoothly ramps to a target value            |
| `AnalogLimit`  | Clamps analog value to min/max range        |

---

Each module uses:
- `param` blocks for configuration
- `input` / `output` for signal structure
- `emit`, `pulse`, `wait`, and control logic using OpenLogic DSL

---

> This catalog is auto-generated from the OpenLogic module library. Use it to explore, document, and assemble powerful control logic.

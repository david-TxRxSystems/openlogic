# Core Modules — OpenLogic DSL

This document outlines the planned modules that make up the OpenLogic smart home control system. These are categorized for clarity and maintainability.

---

## 🎛️ Room Modules

| Module        | Description |
|---------------|-------------|
| `Room`        | Full-featured logic module for AV, volume, source, and feedback in a room. |
| `ChildRoom`   | Subzone logic module that inherits or links to a parent room. |
| `RoomUIBinder`| Binds UI input/output signals to a specific room instance. |
| `RoomScheduler`| Triggers room state changes based on time or presence. |

---

## 📱 UI Modules

| Module        | Description |
|---------------|-------------|
| `PhoneUI`     | Minimal mobile interface with essential control per room. |
| `TabletUI`    | Large touch panel interface with full-room + global control. |
| `WebUI`       | Browser-based dashboard for whole-home status and settings. |
| `RemoteUI`    | Directional/TV remote-style interface for source selection, volume, etc. |
| `UIAdapter`   | Translates UI actions into system signals and vice versa. |

---

## 🔧 Device Interface Modules

| Module           | Description |
|------------------|-------------|
| `Thermostat`     | Controls HVAC system — setpoint, temperature, mode, fan. |
| `ACZone`         | Logic wrapper for HVAC subzones and damper control. |
| `LightingDimmer` | Controls lighting brightness (0–100%) via analog signals. |
| `LightingKeypad` | Scene or zone-based control from a wall keypad. |
| `SensorInput`    | Handles digital sensors: motion, window, PIR, etc. |
| `RelayOutput`    | Simple ON/OFF control (screens, fans, contactors). |

---

## 🔗 Logic & Utility Modules

| Module            | Description |
|-------------------|-------------|
| `MatrixRouter`    | Routes audio/video sources to destinations. |
| `VolumeController`| Manages volume logic and mute state. |
| `SceneController` | Recalls lighting and AV presets. |
| `TimeScheduler`   | Triggers logic blocks based on real time (or calendar). |
| `PresenceManager` | Tracks occupancy at room or system level. |
| `PowerSequencer`  | Ensures safe startup/shutdown of devices in sequence. |
| `FailoverMonitor` | Detects offline devices and triggers alerts or backups. |

---

## 🌐 I/O + Integration Modules

| Module           | Description |
|------------------|-------------|
| `MQTTAdapter`    | Binds internal signals to MQTT topics for device control/status. |
| `HAAdapter`      | Integrates with Home Assistant (REST/WebSocket/MQTT). |
| `IRInterface`    | Sends IR command strings to physical emitters. |
| `SerialBridge`   | Maps signals to and from a serial port or serial device. |
| `AudioBridge`    | Interfaces with amps, DSPs, or switchers. |
| `UIBridge`       | Communicates with browser-based UI runtime. |

---

## ✅ Next Steps

- Create folder: `/03_Modules/Room/Room.dsl`
- Define standard inputs/outputs for all core modules
- Build signal dictionary and naming conventions

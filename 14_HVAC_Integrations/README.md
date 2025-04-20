# 🌡️ HVAC Integration Bridges

This folder contains hardware and protocol bridge modules to connect OpenLogic to real-world HVAC systems.

## Bridges Included

- `BacnetBridge.dsl`
- `ModbusBridge.dsl`
- `CoolMasterNetBridge.dsl`
- `NestBridge.dsl`
- `HeatmiserBridge.dsl`

Each bridge handles:
- Temperature feedback
- Setpoint commands
- Mode control (Heat/Cool/Off/Auto)

These modules are wired to `/03_Modules/HVAC/` logic modules.

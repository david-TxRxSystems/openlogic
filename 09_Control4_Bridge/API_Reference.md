# 🌐 Control4 API Reference

## Authentication

- Control4 systems use a local authentication method (username/password)
- Most communication is done via `c4soap` (WebSocket or TCP)

## Known Integration Methods

- `c4soap` reverse-engineered protocol
- Lua driver SDK (requires Composer)
- WebSocket event stream from Director (undocumented)
- REST-like commands (for some third-party drivers)

## Example Commands

- Power toggle: `{"command": "Device.Power.On", "device": 42}`
- Set dimmer level: `{"command": "Lighting.Level.Set", "device": 105, "level": 70}`

⚠️ All endpoints are unofficial and subject to change.

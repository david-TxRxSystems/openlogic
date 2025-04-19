# 🧩 Home Assistant Bridge

This folder contains the integration layer between OpenLogic and Home Assistant (HA).

## Features

- Communicates with HA via REST API (http://localhost:8123)
- Uses long-lived access token for authentication
- Sends commands to light, switch, climate, etc.
- Polls or listens for state updates (future: WebSocket)
- Bridges HA devices to OpenLogic signals

## Files

- `HomeAssistantBridge.dsl`: core DSL interface
- `API_Reference.md`: REST commands used

# 💡 Lutron HomeWorks QS Bridge

This folder contains the integration layer for Lutron HomeWorks QS via the Telnet Integration Protocol.

## Features

- Control lighting circuits, shades, and scenes
- Receive feedback from dimmers, sensors, and keypads
- Support for real-time two-way communication
- Based on Crestron SIMPL-style integration modules

## Files

- `LutronBridge.dsl`: Core telnet command interface
- `LutronDimmer.dsl`: Circuit-level logic handler
- `LutronKeypad.dsl`: Maps keypad buttons and feedback
- `API_Reference.md`: Telnet command documentation

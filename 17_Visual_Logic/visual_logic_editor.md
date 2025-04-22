# Visual Logic Editor – Concept Notes

This document outlines the design principles and planned features for the OpenLogic browser-based visual logic editor.

---

## 🎯 Goals

- Offer a powerful drag-and-drop logic editor for integrators
- Maintain 1:1 parity between visual and code-based `.dsl` logic
- Enable beginners to explore OpenLogic without writing code
- Make signal routing, wiring, and module structure visual and intuitive

---

## 🧱 Core Features

### Canvas View
- Each module appears as a block with labeled inputs/outputs
- Inputs on the left, outputs on the right
- Connections drawn as lines between ports

### Signal Types
- Color-coded for digital, analog, string
- Hover to view signal name and type
- Click to edit signal bindings or rename

### Module Library
- Sidebar listing all available modules
- Drag-and-drop to add to canvas
- Filter by type: Core, Room, Audio, HVAC, Custom

### Code View Toggle
- Switch to text mode for `.dsl` editing
- Bi-directional sync with canvas
- Warning system for syntax errors or signal mismatch

---

## 🔄 Runtime Integration

- Run simulation from visual editor (future)
- Real-time feedback: pulse animation on signal lines
- Manual signal trigger buttons for testing

---

## 🗂 File Handling

- Saved projects stored as `.dsl` and `.json` for canvas layout
- Module snapshots shown in UI as preview cards
- Undo/redo history for logic edits

---

## 🔧 Future Ideas

- Visual "wizard" for creating new modules
- Logic gate symbols (AND, OR, etc) shown with icons
- Interactive signal debugging overlays
- WebRTC/live collaboration editing (like Figma for logic)

---

## 🤝 Compatibility

- Editor runs in browser (desktop-first)
- Mobile/touch support later
- Hosted via `docs/` folder or optional local Flask server

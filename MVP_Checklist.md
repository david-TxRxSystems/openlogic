# ✅ OpenLogic MVP Checklist

This checklist defines the Minimum Viable Product (MVP) scope for OpenLogic — a fully open, integrator-friendly smart home control platform.

---

## ✅ Core Modules

- [x] `LightingCircuit` — Handles scene logic, ramping, discovery, and scene saving
- [x] `Keypad` — Triggers scene and ramp messages via button events
- [x] `LightingUI` — Triggers discovery, edit, and save logic for lighting scenes

---

## ✅ Communication Protocols

- [x] `Lighting$` protocol defined and documented
- [x] Discovery format for circuit querying
- [x] Scene save protocol message
- [x] Routed signal model for all lighting modules

---

## ✅ DSL Infrastructure

- [x] `param`, `input`, `output`, `on`, `function` syntax implemented
- [x] External parameter loading from `.json`
- [x] Grouped signal blocks
- [x] Conditional/event blocks with `rising`, `change`, etc.

---

## ⚙️ Runtime / Simulator

- [ ] Basic interpreter or engine for `.dsl` files (Python preferred)
- [ ] Support for time-based functions like `rampTo`, `pulse`, etc.
- [ ] Runtime signal context (signal bus)
- [ ] Test harness for modules

---

## 🖥️ UI Integration

- [ ] Web or GTK-based scene editor frontend
- [ ] Slider support to simulate circuit level adjustment
- [ ] Push "Save Scene" command back to circuits

---

## 🌉 Integration (Home Assistant)

- [ ] Home Assistant bridge module (`LightingHA`)
- [ ] Map OpenLogic signals to HA entities
- [ ] MQTT or REST integration stub

---

## 🧱 Project Infrastructure

- [x] Git-based Obsidian vault
- [x] Task automation via Todoist
- [x] GitHub repo + dark-themed landing page
- [x] Mastodon presence + weekly post script
- [x] Discord server with onboarding

---

## 📦 Example Project

- [ ] `main.dsl` that links Keypad → LightingUI → LightingCircuit
- [ ] Sample `.params.json` for each module
- [ ] Example scene file (`Scene1`, `Scene2`, etc.)

---

### Progress Key

| Symbol | Meaning |
|--------|---------|
| ✅     | Complete |
| ⚙️      | In Progress |
| ❌     | Not Started |

---

> This checklist is updated as we work toward a functioning MVP system that can run lighting logic, simulate scenes, and integrate with Home Assistant.

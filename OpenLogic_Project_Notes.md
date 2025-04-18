## OpenLogic Project — Development Log

This document captures the ongoing design, architecture, and development of the OpenLogic smart home control system, based on the ideas discussed in the full conversation with the assistant.

---

### 🎯 Vision

OpenLogic is a professional-grade, open-source smart home OS intended to replace proprietary platforms like Crestron. It is:

- Modular
    
- Declarative
    
- Built around a clean, modern DSL
    
- Compatible with Home Assistant and other I/O platforms
    
- Designed to be visual-programming friendly in the future
    

---

### 🧱 Current Foundations

**DSL Architecture:**

- Signal declarations using grouped syntax (e.g. `input digital ...`)
    
- Event blocks: `when`, `on rising`, `on change`, `while`, `pulse`, `wait`
    
- Module definitions with clean input/output interface
    
- Feedback model: Room modules act as state reflectors, not logic controllers
    

**Room Module:**

- Inputs: receive state from other modules (e.g. Audio, HVAC, Presence)
    
- Outputs: publish structured room state (e.g. `VolumeFB`, `MuteFB`, `NowPlaying$`, etc.)
    
- Internal variable `RoomPower` calculated from `SelectedSourceIn`
    
- Declarative, clean, no embedded control logic
    

**Audio Module:**

- Handles local audio logic including: `Power`, `Source`, `Volume`, `Mute`, and basic EQ (`Bass`, `Mid`, `Treble`)
    
- Inputs from UI or control modules (e.g. `VolUp`, `VolDn`, `MuteToggle`, `Source[i]`)
    
- Outputs structured feedback signals like `VolumeLevel`, `MuteFB`, `SelectedSource`, and `EQ settings`
    
- Future-ready for extension to device binding (e.g. amp, DSP control)
    

**Project DSL:**

- Uses a `main.dsl` style entry point
    
- Includes `module` declarations, `connect` wiring, `external` signal definitions, and `alias` mappings
    

**Signal Modifiers:**

- `persist`, `readonly`, `trigger`, `external`, `virtual`, `log`, `alias`
    

**Routing & Wiring:**

- Signals connected declaratively with `connect` statements
    
- Supports constants and future plans for ranges (e.g. `[1..4]`)
    

---

### 🛠 Tooling Plan

**Phase 1: DSL + Runtime Engine**

**Phase 2: Logic Module Library**

**Phase 3: Project System**

**Phase 4: UI Runtime + Designer (Later)**

---

### ✅ Today’s Progress

- Redefined Room module as a pure state model
    
- Formalized outputs like `MuteFB`, `VolumeFB`, `NowPlaying$`, etc.
    
- Defined matching input signals from other logic modules
    
- Created DSL + Markdown spec
    
- Identified role of Room as a state broker for other modules
    
- Deferred UI builder until DSL/runtime is stable
    
- Defined Audio module scope: Power, Source, Volume, Mute, EQ (Bass, Mid, Treble)
    

---

### 💤 Next Session TODO

---

### 📌 Task Progress Tracker

This section helps us track task completion directly in Obsidian using checkboxes.

**Phase 1: DSL + Runtime Engine**

**Phase 2: Logic Module Library**

**Phase 3: Project System**

**Phase 4: UI Runtime + Designer (Later)**

---

Stay sharp, well-rested, and ready to build something amazing tomorrow. 💡
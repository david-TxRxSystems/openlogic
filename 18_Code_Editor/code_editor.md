# Browser-Based Code Editor – Concept Notes

This document outlines the design and functionality goals for the OpenLogic in-browser code editor interface.

---

## 🎯 Purpose

- Provide integrators and developers with a full-featured browser-based DSL code editor
- Offer advanced syntax highlighting, linting, and real-time error detection
- Seamlessly integrate with the visual logic editor
- Enable logic editing on any device without needing a local IDE

---

## ✨ Core Features

### Syntax Highlighting
- Support `.dsl` files with theme-aware highlighting
- Recognize keywords, signal types, blocks, and comments

### Code Validation
- Real-time linting and error feedback
- Highlight undefined signals, syntax mistakes, or circular references

### Autocomplete & Snippets
- Smart autocompletion for signal names, keywords, modules
- Reusable snippets for module templates and logic blocks

### Split View Support
- Side-by-side view with logic diagram or live signal tracing
- Edit + preview UI designs in parallel

### File Tree
- Project folder tree on the left
- Click to open/edit modules, configs, JSON, etc.

---

## 🔁 DSL ↔ Canvas Sync

- Auto-sync changes with visual logic editor
- Highlight wiring changes when signals are renamed or re-routed
- Option to "lock" modules from visual changes

---

## 🧩 Integration

- Based on Monaco Editor (used in VS Code)
- Styled to match OpenLogic dark/light theme
- Works inside browser, Electron app, or mobile browser

---

## 🛠️ Developer Tools

- Logs pane for runtime debugging and print output
- Download/export single file or full `.tar.gz` archive
- Git integration for push/pull/update (future)

---

## 🚧 Future Capabilities

- Multi-user editing with live collaboration
- Offline editing mode with local sync
- Code versioning with module diffs

---

This editor will become a key part of the OpenLogic programming environment — powerful, lightweight, and 100% browser-native.

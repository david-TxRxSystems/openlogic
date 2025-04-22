# Community Module Library

This document outlines the vision and functionality of the OpenLogic Community Module Library — a shared ecosystem of logic modules, bridges, and device drivers created by integrators and developers.

---

## 🎯 Purpose

- Encourage reuse of well-designed modules
- Reduce friction for adding support for new devices
- Foster an open ecosystem where contributors can share and improve logic
- Provide discoverability for common integrations

---

## 📦 Module Types

- **Logic Modules** (Timers, Interlocks, Parsers, etc)
- **Device Drivers** (TVs, Projectors, Audio Systems, etc)
- **Bridges** (Home Assistant, Sonos, Lutron, etc)
- **UI Components** (Touch layouts, remote control interfaces)
- **Utilities** (Text formatters, state machines, time handlers)

---

## 🌍 Module Metadata

Each module includes a metadata file (YAML or JSON) with:

```yaml
name: "SonyProjectorIP"
version: "1.0.2"
author: "@alexhomecontrol"
description: "Control Sony projectors over IP"
categories: ["AV", "Projector", "Sony"]
license: "MIT"
compatibility: ["OpenLogic >=0.4.0"]
tags: ["IR", "TCP", "power", "input"]
```

---

## 📂 Directory Structure

```
CommunityLibrary/
├── SonyProjectorIP/
│   ├── SonyProjectorIP.dsl
│   └── metadata.yaml
├── HeatmiserBridge/
│   ├── Heatmiser.dsl
│   └── metadata.yaml
```

---

## 🔍 Browsing & Discovery

- UI-based search within OpenLogic
- Filter by category, tag, manufacturer, etc.
- Show version, readme, inputs/outputs preview

---

## 💡 Publishing Modules

Users can:
- Create a GitHub repo or fork from OpenLogic base
- Submit via CLI tool or web UI (“Submit Module” form)
- Pull Request reviewed and merged into `CommunityLibrary/`

---

## 📥 Installation

- From the visual editor: click “Add to Project”
- From CLI: `openlogic add-module sony.projector`
- Modules added to local `03_Modules/` folder with their metadata

---

## 🔒 Licensing & Moderation

- Modules must specify an open-source license
- Review process ensures quality and avoids duplicates
- Community voting/feedback system planned

---

## 🚀 Future Enhancements

- GitHub Actions for module validation/linting
- Module dependency resolution
- Auto-update tool for keeping modules current

---

This community module system is key to scaling OpenLogic — enabling integrators to share solutions and evolve the platform together.

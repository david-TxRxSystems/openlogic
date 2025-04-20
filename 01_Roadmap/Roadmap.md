# 📍 OpenLogic Roadmap (Updated 2025-04-20)

## ✅ Completed Milestones

- DSL syntax defined with signal grouping and event blocks
- Runtime signal model (core concept)
- Obsidian vault and GitHub project structure
- Visual + text-based Obsidian notes auto-synced with roadmap
- Todoist integration with cron-based sync
- Landing page with banners, dark mode, branding
- Mastodon automation and Discord community scaffolded
- Core modules scaffolded:
  - Room, AudioZone, HVACZone, UI_Module
- Logic symbol library rebuild in progress (SIMPL+ inspired)
- Crestron Home bridge scaffolded
- Media server integration scaffolded: Plex, Emby, Jellyfin
- HVAC integration bridges: BACnet, Modbus, Nest, CoolMasterNet, etc.
- AV bridge split: `/15_Audio_Bridges/` and `/16_Video_Bridges/`
- Spotify integration scaffolded for Spotify Connect

## 🚧 Current Focus

- Begin implementing logic inside all core modules
- Connect bridges to Room/Zone modules
- Define reusable logic utilities (VolumeFade, SceneRecall, etc.)
- Wire up example `main.dsl` for simulation/testing
- Document bridge APIs and signal wiring strategies

## 🛠 Next Milestones

- Develop UI control logic for scene editing and ramp timing
- Create `LightingKeypad.dsl` and connect to Lighting$ bus
- Add signal routing and event triggers for logic flow
- Refine DSL interpreter/parser (AST model)
- Build internal test harness

## 🌐 Planned Integrations

- Expand media controls (Roon? Apple Music? Community-driven)
- Video-over-IP bridges: JustAddPower, Wyrestorm, NVX
- Support for advanced network audio (Dante/AES67 optional)
- Build simple test UIs (CLI or browser view of signal states)

## 🎯 MVP Goals

- Room + Audio + Lighting fully functional
- UI editing and feedback in place
- One-touch scene editing + saving
- Run + simulate with a minimal test runtime

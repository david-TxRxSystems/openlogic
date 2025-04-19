# 🛣️ OpenLogic Project Roadmap

_Last updated: April 2025_

This roadmap tracks all major milestones, modules, and integrations planned or completed for the OpenLogic Smart Home OS.

---

## ✅ Core Foundations

- [x] Project vision and goals documented
- [x] GitHub repository initialized
- [x] Markdown structure for Obsidian
- [x] DSL syntax specification (signals, events, routing)
- [x] Visual programming goals outlined
- [x] Git, Todoist, and Morgen integration

---

## ✅ Core Modules

- [x] Room Module
- [x] Audio Module
- [x] UI Module
- [x] HVAC Module
- [x] Lighting Circuit Module
- [x] Lighting Keypad Module
- [x] Scene Editor + JSON persistence
- [x] Signal modifiers and routing system

---

## ✅ Logic Symbol Library

- [x] Boolean Logic (AND, OR, NOT, etc.)
- [x] Timers (OneShot, Retriggerable, Oscillator)
- [x] Counters (Binary, UpDown, Ring)
- [x] Analog Processing (Sum, Compare, Scale, Limit)
- [x] Signal Routing (Selectors, Crosspoints)
- [x] Logic Module Catalog

---

## ✅ Lighting System Bridges

| System          | Modules                                    | Status |
|-----------------|---------------------------------------------|--------|
| Lutron HWQS     | Bridge, Dimmer, Keypad, API Docs            | ✅ Done |
| Dynalite        | Bridge, Dimmer, Keypad, Preset Mode         | ✅ Done |
| Generic Lighting| Scene logic, JSON storage, manual ramping   | ✅ Done |

---

## ✅ Control System Bridges

| System          | Modules                                    | Status |
|-----------------|---------------------------------------------|--------|
| Crestron Home   | Bridge scaffold + API docs                  | ✅ Done |
| Control4        | Bridge scaffold + API docs                  | ✅ Done |
| Savant          | Not started                                 | 🔲 Planned |

---

## 🧩 Integration Platform Support

- [x] Home Assistant bridge planned
- [x] Web UI with scene editing (partially prototyped)
- [ ] MQTT or WebSocket runtime engine
- [ ] Python interpreter backend
- [ ] Main `main.dsl` wiring template

---

## 🧠 MVP Milestones

- [x] Define MVP feature set
- [x] MVP checklist and Todoist sync
- [ ] Complete `main.dsl` test config
- [ ] Launch preview of first working logic loop

---

## 🌍 Outreach and Community

- [x] Landing page (GitHub Pages)
- [x] Custom branding, logo, banners
- [x] Mastodon setup + automated posts
- [x] Discord server + onboarding posts
- [ ] Bot for dev updates
- [ ] Docs site and CLI installer

---

## 🧰 Next Steps

- [ ] Finish lighting runtime wiring
- [ ] Begin test runtime interpreter (simulator)
- [ ] Finish Home Assistant bridge
- [ ] UI module feedback rendering
- [ ] Visual logic editor proof-of-concept


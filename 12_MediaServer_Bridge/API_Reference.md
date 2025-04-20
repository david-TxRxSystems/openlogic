# 🎬 Plex / Emby / Jellyfin API Reference

This file will catalog known REST API endpoints used to integrate each media server into OpenLogic.

---

## Plex API Highlights

- `GET /library/sections` — list media libraries
- `GET /library/metadata/{id}` — fetch item metadata
- `GET /status/sessions` — now playing data
- `GET /player/playback` — control connected players
- Headers require `X-Plex-Token`

---

## Emby / Jellyfin Highlights

- `GET /Users/{userId}/Items` — library items
- `POST /Sessions/{sessionId}/Playing` — control playback
- `GET /Sessions` — active playback sessions
- Full open API via Swagger UI at `/swagger`

---

## Common Tasks

| Task                  | Endpoint Example                            |
|-----------------------|---------------------------------------------|
| List Movies           | `/library/sections/{id}/all`                |
| Get Metadata          | `/library/metadata/{id}`                    |
| Play Media            | `/player/playback/playMedia`               |
| Pause/Resume          | `/player/playback/pause`, `/playback/play` |
| Get Now Playing       | `/status/sessions` or `/Sessions`          |


# 🌐 Crestron Home API Reference

This file documents the API endpoints used for integration.

## Authentication

- Local API typically requires HTTPS and user login
- Port: `44300` (default for REST interface)

## Example Endpoints

- `GET /lighting/rooms` — list lighting areas
- `POST /lighting/room/{id}/scene/{sceneId}/activate`
- `GET /temperature/zones` — list thermostats
- `POST /temperature/zone/{id}/setpoint`

*More endpoints to be added as they are reverse-engineered or discovered.*

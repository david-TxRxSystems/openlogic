# 🌐 Home Assistant API Reference

## Authentication

- Use long-lived token from HA user profile
- Include in header: `Authorization: Bearer <TOKEN>`

## Control Endpoints

- Turn on a light:
  `POST /api/services/light/turn_on`  
  Payload: `{ "entity_id": "light.kitchen" }`

- Set brightness:
  `{ "entity_id": "light.kitchen", "brightness": 150 }`

- Read state:
  `GET /api/states/light.kitchen`

Future: Use HA WebSocket API for real-time updates

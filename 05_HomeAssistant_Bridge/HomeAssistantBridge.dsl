module HomeAssistantBridge {
  param Host = "http://localhost:8123"
  param AuthToken = "your_long_lived_access_token"

  input digital TurnOn[32], TurnOff[32]
  input analog SetLevel[32]

  output digital StateFB[32]
  output analog LevelFB[32]

  // Example usage:
  // TurnOn[1] -> send POST to /api/services/light/turn_on
  // LevelFB[1] <- read from /api/states/light.living_room
}

module NorthCommanderBridge {
  param IP = "192.168.1.54"
  param APIKey = "your_northcommander_api_key"

  input analog SetPoint
  output analog CurrentTemp
  input enum HVACMode { OFF, HEAT, COOL, AUTO }
  output enum SystemModeFB { OFF, HEAT, COOL, AUTO }

  // Future: Use North Commander REST + MQTT for control and feedback
}

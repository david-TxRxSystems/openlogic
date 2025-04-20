module NestBridge {
  param AccessToken = "your_google_token"
  param DeviceID = "device_id"

  input analog SetPoint
  output analog CurrentTemp
  input enum HVACMode { OFF, HEAT, COOL, AUTO }
  output enum SystemModeFB { OFF, HEAT, COOL, AUTO }

  // Future: Use Google SDM API
}

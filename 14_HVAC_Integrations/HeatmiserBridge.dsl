module HeatmiserBridge {
  param IP = "192.168.1.53"
  param DeviceID = 1

  input analog SetPoint
  output analog CurrentTemp
  input enum HVACMode { OFF, HEAT, COOL, AUTO }
  output enum SystemModeFB { OFF, HEAT, COOL, AUTO }

  // Future: Heatmiser REST or JSON-over-TCP control
}

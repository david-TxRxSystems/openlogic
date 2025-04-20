module CoolMasterNetBridge {
  param IP = "192.168.1.52"
  param APIKey = "your_key_here"

  input analog SetPoint
  output analog CurrentTemp
  input enum HVACMode { OFF, HEAT, COOL, AUTO }
  output enum SystemModeFB { OFF, HEAT, COOL, AUTO }

  // Future: REST API integration for CoolMasterNet
}

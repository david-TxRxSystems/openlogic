module IntesisBridge {
  param Host = "192.168.1.55"
  param Port = 3310
  param DeviceID = 1

  input analog SetPoint
  output analog CurrentTemp
  input enum HVACMode { OFF, HEAT, COOL, AUTO }
  output enum SystemModeFB { OFF, HEAT, COOL, AUTO }

  // Future: Support for IntesisBox serial/IP protocol for HVAC
}

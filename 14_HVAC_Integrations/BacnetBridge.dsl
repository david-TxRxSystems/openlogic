module BacnetBridge {
  param DeviceIP = "192.168.1.50"
  param UnitID = 1

  input analog SetPoint
  output analog CurrentTemp
  input enum HVACMode { OFF, HEAT, COOL, AUTO }
  output enum SystemModeFB { OFF, HEAT, COOL, AUTO }

  // Future: Map BACnet read/write commands
}

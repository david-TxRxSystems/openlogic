module ModbusBridge {
  param Host = "192.168.1.51"
  param Port = 502
  param UnitID = 1

  input analog SetPoint
  output analog CurrentTemp
  input enum HVACMode { OFF, HEAT, COOL, AUTO }
  output enum SystemModeFB { OFF, HEAT, COOL, AUTO }

  // Future: Map Modbus registers to read/write
}

module WyrestormBridge {
  param ControllerIP = "192.168.1.202"

  input analog SourceSelect
  input digital PowerOn, PowerOff
  output analog ActiveSource
  output digital OnlineStatus

  // Future: Control over NetworkHD API
}

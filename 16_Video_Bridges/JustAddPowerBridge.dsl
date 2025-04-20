module JustAddPowerBridge {
  param ControllerIP = "192.168.1.201"

  input analog SourceSelect
  input digital PowerOn, PowerOff
  output analog ActiveSource
  output digital OnlineStatus

  // Future: REST API commands to control video matrix
}

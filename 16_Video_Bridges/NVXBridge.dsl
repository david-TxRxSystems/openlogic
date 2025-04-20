module NVXBridge {
  param EndpointIP = "192.168.1.203"
  param EncoderID = 1
  param DecoderID = 2

  input analog SourceSelect
  input digital PowerOn, PowerOff
  output analog ActiveSource
  output digital OnlineStatus

  // Future: Use Crestron NVX REST API or endpoint control
}

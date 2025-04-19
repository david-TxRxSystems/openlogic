module DynaliteBridge {
  param SystemIP = "192.168.1.103"
  param Port = 50000
  param Mode = "passthrough"  // "passthrough" or "direct"

  input integer Area
  input integer Preset
  input digital TriggerScene

  input integer Channel
  input analog SetLevel
  input digital SendLevel

  output analog FeedbackLevel[64]

  on rising(TriggerScene) do
    if Mode == "passthrough" then
      // Send: Preset,<Area>,<Preset>
      // e.g., "Preset,1,2"
      emit log => "Send Preset," + Area + "," + Preset
    end
  end

  on rising(SendLevel) do
    if Mode == "direct" then
      // Send: Channel,<Area>,<Channel>,<Level>
      emit log => "Send Channel," + Area + "," + Channel + "," + SetLevel
    end
  end
}

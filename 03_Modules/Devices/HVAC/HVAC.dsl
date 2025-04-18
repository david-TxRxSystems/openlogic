// HVAC Module

module HVAC {
  // Inputs
  input digital
    ModeSelect[4],        // 0=Off, 1=Heat, 2=Cool, 3=Auto
    SetPointUp,
    SetPointDn,
    FanSpeedSelect[4];    // 0=Auto, 1=Low, 2=Medium, 3=High

  input analog
    SetPointAnalog;       // Optional direct setpoint override

  // Outputs
  output analog
    CurrentTemp,
    SetPoint,
    HVACModeFB,
    FanSpeedFB;

  // Internal variables
  var analog TempSetPoint = 21
  var analog HVACMode = 0
  var analog FanSpeed = 0

  // Mode selection
  on rising(ModeSelect[i]) do
    set HVACMode = i
    emit HVACModeFB => HVACMode
  end

  // Fan speed selection
  on rising(FanSpeedSelect[i]) do
    set FanSpeed = i
    emit FanSpeedFB => FanSpeed
  end

  // Setpoint adjustment
  on rising(SetPointUp) do
    if TempSetPoint < 30 then
      set TempSetPoint = TempSetPoint + 1
      emit SetPoint => TempSetPoint
    end
  end

  on rising(SetPointDn) do
    if TempSetPoint > 10 then
      set TempSetPoint = TempSetPoint - 1
      emit SetPoint => TempSetPoint
    end
  end

  on change(SetPointAnalog) do
    set TempSetPoint = SetPointAnalog
    emit SetPoint => TempSetPoint
  end

  // External input for current temp can be connected externally
}

// Keypad Module

module Keypad {
  param
    Area
    Buttons
    RampDir[8]  // "up" or "down"

  input digital
    Button[8],
    Hold[8],
    Release[8];

  output string Lighting$

  on rising(Button[i]) do
    emit Lighting$ => "[A:" + Area + ",S:" + i + "]"
  end

  on rising(Hold[i]) do
    if RampDir[i] == "up" then
      emit Lighting$ => "[A:" + Area + ",RAMPUP]"
    else
      emit Lighting$ => "[A:" + Area + ",RAMPDOWN]"
    end
  end

  on rising(Release[i]) do
    emit Lighting$ => "[A:" + Area + ",RAMPSTOP]"
  end
}

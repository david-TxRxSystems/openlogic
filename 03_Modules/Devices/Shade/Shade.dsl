// Shade Module

module Shade {
  input digital
    ShadeUp,
    ShadeDn,
    Preset[4];

  output analog
    ShadePos;

  output digital
    IsMoving;

  var analog Position = 0

  on rising(Preset[i]) do
    set Position = i * 25
    emit ShadePos => Position
    pulse IsMoving
  end

  on rising(ShadeUp) do
    if Position < 100 then
      set Position = Position + 10
      emit ShadePos => Position
      pulse IsMoving
    end
  end

  on rising(ShadeDn) do
    if Position > 0 then
      set Position = Position - 10
      emit ShadePos => Position
      pulse IsMoving
    end
  end
}

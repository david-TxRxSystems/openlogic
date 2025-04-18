// Lighting Module

module Lighting {
  input digital
    SceneSelect[4],
    On,
    Off,
    DimUp,
    DimDn;

  output analog
    DimLevel;

  output digital
    SceneFB[4],
    IsOn;

  var analog Level = 0

  on rising(SceneSelect[i]) do
    set Level = 25 * i
    emit DimLevel => Level
    pulse SceneFB[i]
    if Level > 0 then emit IsOn => true else emit IsOn => false
  end

  on rising(On) do
    set Level = 100
    emit DimLevel => Level
    emit IsOn => true
  end

  on rising(Off) do
    set Level = 0
    emit DimLevel => Level
    emit IsOn => false
  end

  on rising(DimUp) do
    if Level < 100 then
      set Level = Level + 10
      emit DimLevel => Level
    end
  end

  on rising(DimDn) do
    if Level > 0 then
      set Level = Level - 10
      emit DimLevel => Level
    end
  end
}

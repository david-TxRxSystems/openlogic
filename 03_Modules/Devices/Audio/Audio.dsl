// Audio Module

module Audio {
  // Inputs
  input digital
    PowerOn,
    PowerOff,
    VolUp,
    VolDn,
    MuteToggle,
    SourceSelect[36];

  input analog
    BassAdjust,
    MidAdjust,
    TrebleAdjust;

  // Outputs
  output digital
    AudioPower,
    MuteFB;

  output analog
    VolumeLevel,
    SelectedSource,
    BassFB,
    MidFB,
    TrebleFB;

  // Internal state
  var analog Volume = 40
  var digital MuteFlag = false
  var analog SourceIndex = 0
  var analog Bass = 0
  var analog Mid = 0
  var analog Treble = 0

  // Volume logic
  on rising(VolUp) do
    if Volume < 100 then
      set Volume = Volume + 1
      emit VolumeLevel => Volume
    end
  end

  on rising(VolDn) do
    if Volume > 0 then
      set Volume = Volume - 1
      emit VolumeLevel => Volume
    end
  end

  // Mute
  on rising(MuteToggle) do
    toggle MuteFlag
    emit MuteFB => MuteFlag
  end

  // Power
  on rising(PowerOn) do
    emit AudioPower => true
  end

  on rising(PowerOff) do
    emit AudioPower => false
  end

  // Source selection
  on rising(SourceSelect[i]) do
    set SourceIndex = i
    emit SelectedSource => i
  end

  // EQ
  on change(BassAdjust) do
    set Bass = BassAdjust
    emit BassFB => Bass
  end

  on change(MidAdjust) do
    set Mid = MidAdjust
    emit MidFB => Mid
  end

  on change(TrebleAdjust) do
    set Treble = TrebleAdjust
    emit TrebleFB => Treble
  end
}

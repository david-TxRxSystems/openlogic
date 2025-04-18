// Room Module — Finalized Signal Layout

module Room {
  // Inputs (from other logic modules)
  input analog
    SelectedSourceIn,
    VolumeLevelIn,
    ShadePosIn,
    CurrentTempIn,
    SetPointIn,
    FanSpeedIn;

  input digital
    MuteStateIn,
    IsOccupiedIn;

  input string
    AVModeIn$,
    HVACModeIn$,
    NowPlayingIn$;

  // Outputs (to UI or other modules)
  output analog
    CurrentSource,
    VolumeFB,
    ShadePos,
    CurrentTemp,
    SetPoint,
    FanSpeed;

  output digital
    MuteFB,
    IsOccupied;

  output string
    AVMode$,
    HVACMode$,
    NowPlaying$,
    To_UI$;

  // Internal state
  var digital RoomPower = false

  // RoomPower logic
  on change(SelectedSourceIn) do
    set RoomPower = (SelectedSourceIn > 0)
  end

  // Feedback mapping
  on change(SelectedSourceIn) do set CurrentSource = SelectedSourceIn end
  on change(VolumeLevelIn) do set VolumeFB = VolumeLevelIn end
  on rising(MuteStateIn) do set MuteFB = true end
  on falling(MuteStateIn) do set MuteFB = false end
  on change(AVModeIn$) do set AVMode$ = AVModeIn$ end
  on change(ShadePosIn) do set ShadePos = ShadePosIn end
  on change(CurrentTempIn) do set CurrentTemp = CurrentTempIn end
  on change(SetPointIn) do set SetPoint = SetPointIn end
  on change(HVACModeIn$) do set HVACMode$ = HVACModeIn$ end
  on change(FanSpeedIn) do set FanSpeed = FanSpeedIn end
  on change(NowPlayingIn$) do set NowPlaying$ = NowPlayingIn$ end
  on change(IsOccupiedIn) do set IsOccupied = IsOccupiedIn end
}

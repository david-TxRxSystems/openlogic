module AnalogRamp {
  input analog Target
  param RampTime = 2.0
  output analog Out

  var analog Current = 0

  on change(Target) do
    let delta = abs(Target - Current)
    if delta == 0 then return
    let steps = 10 * (RampTime * (delta / 100.0))
    let stepSize = (Target - Current) / steps
    repeat steps times every 100ms {
      set Current = Current + stepSize
      emit Out => Current
    }
    set Current = Target
    emit Out => Target
  end
}
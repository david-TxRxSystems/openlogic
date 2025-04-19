module PulseStretcher {
  input digital In
  output digital Out
  param Duration = 0.5

  on rising(In) do
    emit Out => true
    wait Duration then emit Out => false
  end
}
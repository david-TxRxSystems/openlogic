module Toggle {
  input digital Clock
  output digital State

  var bool current = false

  on rising(Clock) do
    set current = !current
    emit State => current
  end
}
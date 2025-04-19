module SetResetLatch {
  input digital Set, Reset
  output digital State

  var bool current = false

  on rising(Set) do
    set current = true
    emit State => current
  end

  on rising(Reset) do
    set current = false
    emit State => current
  end
}
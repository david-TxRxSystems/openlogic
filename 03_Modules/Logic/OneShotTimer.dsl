module OneShotTimer {
  input digital Trigger
  param Duration = 1.0
  output digital Output

  on rising(Trigger) do
    emit Output => true
    wait Duration then emit Output => false
  end
}
module RetriggerableTimer {
  input digital Trigger
  param Duration = 1.0
  output digital Output

  var int pulse_id = 0

  on rising(Trigger) do
    set pulse_id = pulse_id + 1
    let id = pulse_id
    emit Output => true
    wait Duration then
      if id == pulse_id then emit Output => false
    end
  end
}
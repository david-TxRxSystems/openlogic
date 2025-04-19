module Latch {
  input digital Clock, Data
  output digital Q

  var bool state = false

  on rising(Clock) do
    set state = Data
    emit Q => state
  end
}
module BinaryCounter {
  input digital Clock, Reset
  param Max = 255
  output analog Count

  var integer current = 0

  on rising(Reset) do
    set current = 0
    emit Count => current
  end

  on rising(Clock) do
    set current = (current + 1) % (Max + 1)
    emit Count => current
  end
}
module RingCounter {
  input digital Clock, Reset
  param Count = 4
  output digital Out[Count]

  var integer pos = 1

  on rising(Reset) do
    set pos = 1
    for i in 1..Count do
      emit Out[i] => (i == pos)
    end
  end

  on rising(Clock) do
    set pos = (pos % Count) + 1
    for i in 1..Count do
      emit Out[i] => (i == pos)
    end
  end
}
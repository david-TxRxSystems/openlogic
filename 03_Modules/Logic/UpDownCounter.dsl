module UpDownCounter {
  input digital Up, Down, Reset
  param Min = 0
  param Max = 255
  output analog Count

  var integer current = 0

  on rising(Reset) do
    set current = Min
    emit Count => current
  end

  on rising(Up) do
    if current < Max then
      set current = current + 1
      emit Count => current
    end
  end

  on rising(Down) do
    if current > Min then
      set current = current - 1
      emit Count => current
    end
  end
}
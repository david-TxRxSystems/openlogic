module AnalogLimit {
  input analog In
  param Min = 0
  param Max = 100
  output analog Out

  on change(In) do
    let result = In
    if result < Min then result = Min
    if result > Max then result = Max
    emit Out => result
  end
}
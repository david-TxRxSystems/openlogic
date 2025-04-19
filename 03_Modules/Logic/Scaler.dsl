module Scaler {
  input analog In
  param InMin = 0
  param InMax = 100
  param OutMin = 0
  param OutMax = 255
  output analog Out

  on change(In) do
    let scale = (In - InMin) / (InMax - InMin)
    let result = OutMin + scale * (OutMax - OutMin)
    emit Out => result
  end
}
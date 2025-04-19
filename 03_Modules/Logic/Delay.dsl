module Delay {
  input digital In
  param Duration = 1.0
  output digital Out

  on rising(In) do
    wait Duration then
      emit Out => true
      wait 100ms then emit Out => false
    end
  end
}
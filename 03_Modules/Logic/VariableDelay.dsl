module VariableDelay {
  input digital In
  input analog DelayTime
  output digital Out

  on rising(In) do
    wait DelayTime then
      emit Out => true
      wait 100ms then emit Out => false
    end
  end
}
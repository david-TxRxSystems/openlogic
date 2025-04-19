module Oscillator {
  input digital Enable
  param HighTime = 0.5
  param LowTime = 0.5
  output digital Out

  var bool running = false

  on rising(Enable) do
    if not running then
      set running = true
      loop {
        if not running then break
        emit Out => true
        wait HighTime
        emit Out => false
        wait LowTime
      }
    end
  end

  on falling(Enable) do
    set running = false
    emit Out => false
  end
}
module DynaliteKeypad {
  param Buttons = 8
  param Area = 1

  output digital ButtonPress[Buttons]

  input digital SimButtonPress[Buttons]

  // These simulated inputs represent events from Dynalite
  on rising(SimButtonPress[i]) do
    pulse ButtonPress[i]
  end
}

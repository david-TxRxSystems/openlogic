module LutronKeypad {
  param IntegrationID = 1
  param Buttons = 6

  output digital ButtonPress[Buttons]
  output digital ButtonRelease[Buttons]

  input digital SimButtonPress[Buttons]
  input digital SimButtonRelease[Buttons]

  // These simulated inputs represent telnet feedback:
  // ~DEVICE,<IntegrationID>,1,<ButtonNumber>
  // Integration parser would decode and pulse these
  on rising(SimButtonPress[i]) do
    pulse ButtonPress[i]
  end

  on rising(SimButtonRelease[i]) do
    pulse ButtonRelease[i]
  end
}

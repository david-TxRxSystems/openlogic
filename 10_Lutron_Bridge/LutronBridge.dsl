module LutronBridge {
  // Parameters for system connection
  param SystemIP = "192.168.1.102"
  param Port = 23
  param Username = "lutron"
  param Password = "integration"

  // Inputs for controlling outputs
  input analog SetLevel[64]    // Output levels (0–100%)
  input digital ShadeUp[16], ShadeDown[16], ShadeStop[16]

  // Inputs for scene triggers
  input digital ActivateScene[32]

  // Outputs for feedback
  output analog LevelFB[64]
  output digital ButtonPressFB[32]
  output digital OccupancyFB[16]

  // Note: This module will communicate via Telnet to Lutron HWQS
  // using the official Integration Protocol (see API_Reference.md)
}

// Lighting Circuit Module with Proportional Ramp

module LightingCircuit {
  param
    Area
    CircuitID
    Name
    RampTime  // Time to fade from 0 to 100

  input string Lighting$
  output analog Level

  var analog CurrentLevel = 0
  var analog TargetLevel = 0
  var bool IsRamping = false

  on change(Lighting$) do
    if Lighting$.startsWith("[A:" + Area + ",S:") then
      let sceneNum = parseScene(Lighting$)
      let level = loadSceneLevel(sceneNum)
      set TargetLevel = level
      startRamp()
    else if Lighting$ == "[A:" + Area + ",RAMPUP]" then
      set TargetLevel = 100
      startRamp()
    else if Lighting$ == "[A:" + Area + ",RAMPDOWN]" then
      set TargetLevel = 0
      startRamp()
    else if Lighting$ == "[A:" + Area + ",RAMPSTOP]" then
      set IsRamping = false
    end
  end

  function parseScene(msg) returns integer {
    return toInt(msg.split("S:")[1].replace("]", ""))
  }

  function loadSceneLevel(scene) returns integer {
    let filename = "/config/lighting/Area" + Area + "/C" + CircuitID + ".scenes.json"
    return json(filename)["Scene" + scene]
  }

  function startRamp() {
    let delta = abs(TargetLevel - CurrentLevel)
    if delta == 0 then return

    let steps = 10 * (RampTime * (delta / 100.0))  // 10Hz update rate
    let stepSize = (TargetLevel - CurrentLevel) / steps

    set IsRamping = true

    repeat steps times every 100ms {
      if not IsRamping then break
      set CurrentLevel = CurrentLevel + stepSize
      emit Level => round(CurrentLevel)
    }

    set IsRamping = false
    set CurrentLevel = TargetLevel
    emit Level => round(CurrentLevel)
  }

  function abs(x) returns analog {
    if x < 0 then return -x else return x
  }

  function round(x) returns integer {
    return floor(x + 0.5)
  }
}

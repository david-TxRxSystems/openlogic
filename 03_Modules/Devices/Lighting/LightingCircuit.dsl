// Lighting Circuit Module with Save and Discover

module LightingCircuit {
  param
    Area
    CircuitID
    Name
    RampTime

  input string Lighting$
  output analog Level
  output string Discovery$

  var analog CurrentLevel = 0
  var analog TargetLevel = 0
  var bool IsRamping = false

  on change(Lighting$) do
    if Lighting$.startsWith("[A:" + Area + ",S:") then
      let sceneNum = parseScene(Lighting$)
      let level = loadSceneLevel(sceneNum)
      set TargetLevel = level
      startRamp()
    else if Lighting$ == "[A:" + Area + ",RAMPUP]") then
      set TargetLevel = 100
      startRamp()
    else if Lighting$ == "[A:" + Area + ",RAMPDOWN]") then
      set TargetLevel = 0
      startRamp()
    else if Lighting$ == "[A:" + Area + ",RAMPSTOP]") then
      set IsRamping = false
    else if Lighting$ == "[A:" + Area + ",DISCOVER]") then
      emit Discovery$ => "[A:" + Area + ",CIRCUIT:" + CircuitID + ",LEVEL:" + CurrentLevel + ",NAME:\"" + Name + "\"]"
    else if Lighting$.startsWith("[A:" + Area + ",SCENE:") and Lighting$.endsWith(",SAVE]") then
      let sceneNum = parseSaveScene(Lighting$)
      saveSceneLevel(sceneNum, CurrentLevel)
    end
  end

  function parseScene(msg) returns integer {
    return toInt(msg.split("S:")[1].replace("]", ""))
  }

  function parseSaveScene(msg) returns integer {
    return toInt(msg.split("SCENE:")[1].split(",")[0])
  }

  function loadSceneLevel(scene) returns integer {
    let filename = "/config/lighting/Area" + Area + "/C" + CircuitID + ".scenes.json"
    return json(filename)["Scene" + scene]
  }

  function saveSceneLevel(scene, level) {
    let filename = "/config/lighting/Area" + Area + "/C" + CircuitID + ".scenes.json"
    let data = json(filename)
    set data["Scene" + scene] = level
    write(filename, data)
  }

  function startRamp() {
    let delta = abs(TargetLevel - CurrentLevel)
    if delta == 0 then return

    let steps = 10 * (RampTime * (delta / 100.0))  // 10Hz
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

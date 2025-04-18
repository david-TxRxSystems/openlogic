# OpenLogic DSL — Generic Room (Updated Syntax)

This version uses grouped signal blocks, inspired by Crestron's SIMPL+ format, for cleaner and more efficient declarations.

## 📡 Signal Declarations

```dsl
input digital
  PowerOff,
  VolUp,
  VolDn,
  Mute,
  Source[36];

output digital
  MuteFB;

output analog
  VolumeLevel,
  SelectedSource;

output string
  To_UI$;
```

## 🧠 Internal Variables

```dsl
var analog CurrentVol     = 40
var digital MuteFlag      = false
var analog SourceIndex    = 0
```

## ⚙️ Event Blocks (WHEN)

```dsl
when VolUp do
    if CurrentVol < 100 then
        set CurrentVol = CurrentVol + 1
        emit VolumeLevel => CurrentVol
        emit To_UI$ => "VOL=" + CurrentVol
    end
end

when VolDn do
    if CurrentVol > 0 then
        set CurrentVol = CurrentVol - 1
        emit VolumeLevel => CurrentVol
        emit To_UI$ => "VOL=" + CurrentVol
    end
end

when Mute do
    toggle MuteFlag
    emit MuteFB => MuteFlag
    emit To_UI$ => "MUTE=" + (MuteFlag ? "ON" : "OFF")
end

when PowerOff do
    set CurrentVol = 0
    emit VolumeLevel => 0
    emit To_UI$ => "PWR=OFF"
end
```

## 🎛️ Source Selection Logic

```dsl
when Source[i] do
    set SourceIndex = i
    emit SelectedSource => i
    emit To_UI$ => "SRC=" + i
end
```

## 🧱 Module Definition

```dsl
module GenericRoom {
    input digital
      PowerOff,
      VolUp,
      VolDn,
      Mute,
      Source[36];

    output digital
      MuteFB;

    output analog
      VolumeLevel,
      SelectedSource;

    output string
      To_UI$;
}
```

---

> ✅ Next: Confirm you're happy with this block-style signal model, then we can expand into things like `ROUTE`, `ON RISING`, or macros.

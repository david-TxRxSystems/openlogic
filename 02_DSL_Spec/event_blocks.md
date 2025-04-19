# ⚡ Event Blocks

OpenLogic logic is driven by signal-based events.

## 🔁 Basic Event Examples

```dsl
on rising(PowerOn) do
  emit SystemOn => true
end

on falling(MuteToggle) do
  pulse MuteFB
end

on change(VolumeLevel) do
  emit VolumeFB => VolumeLevel
end
```

## 🔂 Supported Events

- `rising(signal)` — rising edge
- `falling(signal)` — falling edge
- `change(signal)` — any value change
- `while condition` — loop as long as true
- `if`, `else if`, `else` — conditional blocks
- `wait <duration>` — time delay

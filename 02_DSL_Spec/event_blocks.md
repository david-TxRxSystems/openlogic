# Event Blocks — OpenLogic DSL (Extended)

This section covers advanced event types and time-based logic used in OpenLogic's logic engine.

---

## 🔄 `on change(...)`

Triggers when an analog or string signal changes value.

```dsl
on change(VolumeLevel) do
  emit To_UI$ => "VOL=" + VolumeLevel
end
```

**Use for:**
- Analog level tracking (e.g., volume, dimmer)
- String-based updates (e.g., room name)

**SIMPL+ equivalent:**
```c
CHANGE (VolumeLevel)
{
  // send string, update feedback, etc.
}
```

---

## ⏱ `wait`

Pauses execution for a specific time (milliseconds).

```dsl
when StartPulse do
  pulse LED
  wait 1000ms
  pulse LED
end
```

**SIMPL+ equivalent:**
```c
Pulse(LED);
Delay(1000);
Pulse(LED);
```

---

## ⚡️ `pulse`

Pulses a digital signal ON briefly (e.g., 50ms).

```dsl
pulse Relay1
```

Optional duration:

```dsl
pulse Relay1 for 250ms
```

**SIMPL+ equivalent:**
```c
Pulse(Relay1);
Pulse(Relay1, 250); // (if custom delay used)
```

---

## 🧪 Advanced Example

```dsl
on rising(VolUp) do
  set VolumeLevel = VolumeLevel + 1
  emit To_UI$ => "VOL=" + VolumeLevel
end

on change(VolumeLevel) do
  log "Volume now: " + VolumeLevel
end

when Mute do
  toggle MuteState
  pulse MuteFB
end

while HVAC_ON do
  pulse Heartbeat
  wait 5000ms
end
```

---

## ✅ Summary

| Keyword     | Description |
|-------------|-------------|
| `when`      | Fires on any digital change |
| `on rising` | 0 → 1 trigger |
| `on falling`| 1 → 0 trigger |
| `on change` | Analog or string change |
| `while`     | Condition-based loops |
| `pulse`     | Short ON pulse to a signal |
| `wait`      | Delay (ms) between steps |

---

This foundation covers 95% of common smart home control use cases.

> Next: We can build out timing modifiers, debounce, or edge guard logic.

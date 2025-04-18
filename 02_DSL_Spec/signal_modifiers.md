# Signal Modifiers — OpenLogic DSL

Signal modifiers are optional keywords that describe behavior, persistence, or scope of a signal. They allow for advanced control without bloating logic syntax.

---

## ✳️ Supported Modifiers

### `persist`
Preserves a signal's value across restarts by saving it to disk.

```dsl
persist analog VolumeLevel = 40
persist digital MuteFlag
```

### `readonly`
Signal value can only be updated externally (e.g. from MQTT, UI, or REST API).

```dsl
readonly string RoomName$ = "Lounge"
readonly analog Brightness
```

### `trigger`
Only activates a `when` block on a **rising edge** (0 → 1), not level change.

```dsl
trigger digital PIR_Motion
```

### `external`
Indicates a signal is bound to an external I/O system (Home Assistant, etc.)

```dsl
external analog CurrentTemp
external digital PowerFB
```

### `virtual`
Signal is internal to the module or logic engine and never exposed outside.

```dsl
virtual digital DebugFlag
```

### `log`
Signal changes are logged to the system log (for debugging/auditing).

```dsl
log analog AudioLevel
log digital PowerState
```

### `alias`
Provides a custom name for a signal when exposed externally (MQTT, UI, etc.)

```dsl
alias string To_UI$ as "ui-out"
alias digital PowerState as "room/power"
```

---

## ✅ Combining Modifiers

You can combine multiple modifiers:

```dsl
persist external analog VolumeLevel = 50
readonly alias string RoomName$ as "room/name"
```

---

## 🧪 Notes

- `persist` requires a runtime persistence backend (JSON, SQLite, etc.)
- `trigger` modifies event behavior, not signal storage
- `alias` is used during runtime binding or message generation

---

This spec will evolve as we build more runtime features.

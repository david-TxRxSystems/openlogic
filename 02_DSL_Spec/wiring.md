# 🧵 Wiring and Routing

## 🔗 Signal Connections

Use `connect` blocks (planned) or module outputs as inputs to others.

```dsl
Room.Output1 => Audio.Input1
```

## 🔀 Cross-module routing

Use `CrosspointSwitch`, `Selector`, or `EventTrigger` to structure logic-driven flow.


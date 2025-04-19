# 🌐 Dynalite Protocol Reference

## Connection

- Port: 50000 (TCP)
- Protocol: DyNet (text-based commands)

## Commands

- `Channel,<Area>,<Channel>,<Level>` – set channel to level (0–255)
- `Preset,<Area>,<Preset>` – activate scene/preset in area
- Feedback: available depending on gateway and polling setup

## Example

- `Channel,1,5,128` – sets Area 1, Channel 5 to 50%
- `Preset,1,2` – activates scene 2 in Area 1

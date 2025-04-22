# Setup Wizard Flow

The Setup Wizard helps integrators quickly create a working OpenLogic project through a guided step-by-step UI.

## Step 1: Project Initialization

- Prompt user for Project Name
- Define Floors
- Define Rooms and Sub-Zones
- For each room, select:
  - Room Name
  - Room Type: Audio, Lighting, HVAC, Shades
  - Device Role: Keypad, UI Touchscreen, etc.

## Step 2: Auto-Generation of Modules

- Creates one Room module per room
- Adds additional logic modules based on checkboxes:
  - Audio → AudioModule.dsl
  - HVAC → HVACModule.dsl
  - UI → TouchUI module stub

## Step 3: Summary & Deployment

- Display summary of modules and generated signals
- Option to immediately deploy or open visual logic editor

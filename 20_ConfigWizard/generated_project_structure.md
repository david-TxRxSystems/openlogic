# Generated Project Structure

After running the setup wizard, OpenLogic generates the following file structure:

## Root Folder

- `main.dsl` — Top-level project file wiring rooms and modules

## Module Folder (`/03_Modules/`)

- `Room_LivingRoom.dsl`
- `Audio_LivingRoom.dsl`
- `HVAC_Bedroom.dsl` (only if selected)

## UI Folder (`/04_UI_Designer/`)

- `Touch_LivingRoom.dsl`
- `Tablet_UI.dsl`

## Config Folder (`/06_Deployment/` or `/20_ConfigWizard/`)

- Stores runtime parameters and area/scene mapping
- JSON parameter files for each module

## Docs Folder

- Markdown specs, logic documentation, version notes

PROJECT OpenLogic_Main

# Include room and subsystem modules
INCLUDE "03_Modules/Room_LivingRoom.dsl"
INCLUDE "03_Modules/Audio_LivingRoom.dsl"
INCLUDE "03_Modules/Room_Bedroom.dsl"
INCLUDE "03_Modules/HVAC_Bedroom.dsl"
INCLUDE "04_UI_Designer/Tablet_UI.dsl"

# Connect Room-level protocol buses to UI and subsystems
# These are lightweight and use string-based messaging (e.g., Lighting$, Audio$)
CONNECT TabletUI.Room$ TO Room_LivingRoom.Room$
CONNECT TabletUI.Room$ TO Room_Bedroom.Room$

# Audio and HVAC subsystems connected directly to room logic signals
CONNECT Room_LivingRoom.AudioSource TO Audio_LivingRoom.SetSource
CONNECT Audio_LivingRoom.SourceFB TO Room_LivingRoom.AudioSourceFB

CONNECT Room_Bedroom.SetPoint TO HVAC_Bedroom.SetPoint
CONNECT HVAC_Bedroom.TempFB TO Room_Bedroom.CurrentTemp
CONNECT HVAC_Bedroom.ModeFB TO Room_Bedroom.HVACModeFB

# Feedback wiring to UI for visualization
CONNECT Room_LivingRoom.Room$ TO TabletUI.Room$
CONNECT Room_Bedroom.Room$ TO TabletUI.Room$

# UI might receive feedback directly from Audio/HVAC for display
CONNECT Audio_LivingRoom.VolumeFB TO TabletUI.VolumeBar
CONNECT HVAC_Bedroom.TempFB TO TabletUI.RoomTemp

# Global protocol buses
CONNECT Room_LivingRoom.Lighting$ TO TabletUI.Lighting$
CONNECT Room_Bedroom.Lighting$ TO TabletUI.Lighting$

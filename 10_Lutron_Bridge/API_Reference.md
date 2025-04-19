# 🌐 Lutron HomeWorks QS Integration Protocol

This document outlines the serial/Telnet protocol used by Lutron for integration.

## Connection

- Port: `23` (Telnet)
- Username: `lutron`
- Password: `integration`

## Example Commands

### Set Lighting Level
```
#OUTPUT,5,1,100
```

### Shade Movement
```
#OUTPUT,15,1,100     (raise)
#OUTPUT,15,1,0       (lower)
#OUTPUT,15,4,0       (stop)
```

### Scene Trigger
```
#AREA,2,3            (Area ID 2, scene 3)
```

### Keypad Feedback
```
~DEVICE,6,1,3        (Button press/release)
```

### Lighting Feedback
```
~OUTPUT,5,1,75       (Level feedback)
```

More detail: Lutron Integration Protocol Rev. G or later.

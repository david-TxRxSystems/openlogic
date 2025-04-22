# How to Build 2-Way Device Drivers in OpenLogic DSL

This guide walks you through building 2-way device integrations using SIMPL+-style string handling in OpenLogic DSL. This enables you to communicate with serial, TCP/IP, or protocol-based third-party devices.

---

## 🧰 1. Module Structure

Each device driver is a module that receives serial input, parses it, and emits control strings.

```dsl
MODULE MyDeviceDriver

  STRING_INPUT Incoming;
  STRING_OUTPUT Outgoing;

  DIGITAL_INPUT PowerOn;
  DIGITAL_INPUT PowerOff;

  DIGITAL_OUTPUT PowerFB;

  LOGIC
    PUSH PowerOn:
      EMIT Outgoing = FORMAT$("POWER ON\r");

    PUSH PowerOff:
      EMIT Outgoing = FORMAT$("POWER OFF\r");

    CHANGE Incoming:
      IF FIND(Incoming, "POWER=ON") >= 0:
        SET PowerFB = true;

      IF FIND(Incoming, "POWER=OFF") >= 0:
        SET PowerFB = false;

END
```

---

## 🔍 2. Available String Functions

| Function        | Description                                      |
|-----------------|--------------------------------------------------|
| `FIND(s1, s2)`  | Returns position of `s2` in `s1` or -1 if not found |
| `MID$(s, start, length)` | Extract substring from `s`               |
| `LEFT$(s, n)`   | First `n` characters of string `s`               |
| `RIGHT$(s, n)`  | Last `n` characters of string `s`                |
| `LEN(s)`        | Returns length of string `s`                     |
| `FORMAT$(...)`  | Assembles strings using values or parameters     |

---

## ✉️ 3. Emitting Protocol Commands

Use `FORMAT$()` to build structured messages dynamically:

```dsl
EMIT Outgoing = FORMAT$("<AREA:%d,SCENE:%d>", Area, Scene);
```

Escaping special characters like carriage return:

```dsl
EMIT Outgoing = FORMAT$("VOL+\r");
```

---

## 📥 4. Parsing Feedback

Parse incoming strings and drive feedback signals:

```dsl
CHANGE Incoming:
  IF FIND(Incoming, "ACK") >= 0:
    SET AckLED = true;

  IF FIND(Incoming, "ERR") >= 0:
    SET ErrorLED = true;

  IF FIND(Incoming, "SOURCE=HDMI1") >= 0:
    SET SourceFB = "HDMI1";
```

Use `MID$` or `RIGHT$` to extract parameter values if needed.

---

## 🧪 5. Debugging Tips

- Add logging to trace what strings are seen:
```dsl
CHANGE Incoming:
  LOG("Received: " + Incoming);
```

- Add pulse-based LED outputs to test signal flow

---

## 🧱 6. Common Use Cases

- Projectors, matrix switchers, scalers
- Lighting controllers (Lutron, Dynalite, DALI bridges)
- Audio devices with RS232 or IP
- Infrared-over-IP translators

---

## 🛠 7. Advanced Techniques (coming soon)

- Rolling buffers for byte-wise protocols
- Checksum validation
- Persistent TCP socket modules

---

You're now ready to write drivers just like you would in SIMPL+, but with all the power of open source and a modern toolchain.

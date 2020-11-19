# 🎹 ARDUINO UNO BASED MIDI KEYBOARD WITH VELOCITY V0.0

The documentation of the code is currently being made(for the moment only the README here the code is not annoted yet) as well as the code improved.

:warning: the easiest way will always to buy a midi-keyboard

Up to 88 Key curently tested for 61 key without major issues.

This git is made to propose some(I hope) helpfull ressources to make a MIDI Keyboard wich take in charge the velocity using an arduino-uno and some multiplexer(74HC4051). This my first:
- ARDUINO based project.
- [ARDUINO library](https://github.com/Rathur421/MIDI-KEYBOARD/tree/Master/PCB/circuit).
- [PCB conception](https://github.com/Rathur421/MIDI-KEYBOARD/tree/Master/Arduino_Code/lib).

so please be gentle


The file for the arduino shield conception are [here](https://github.com/Rathur421/MIDI-KEYBOARD/tree/Master/PCB/circuit). The file were created using [Kicad](https://kicad.org/).

## How the electronics works

To complete

## How the code works

The code use principally the library [VeloceKey](###Well-how-does-the-VeloceKey-library-works?)

### Well how does the VeloceKey library works?

This library is made to be intuitive for the user as each physical key of the keyboard correspond to a VeloceKey object in the program.

The VeloceKey object is built around a state byte.

0       | 0       | 0       | 0       | 0                     | 0                              | 0                 | 0
--------|---------|---------|---------|-----------------------|--------------------------------|-------------------|---------------------------
useless | useless | useless | useless | velocity switch state | velocity switch previous state | main switch state | main switch previous state

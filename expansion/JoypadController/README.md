# Sega Megadrive Joypad Card

This card provides two DB9 ports for connecting standard 3-button Sega Megadrive/Genesis joypads.

A Sega pad multiplexes its buttons across a handful of pins, switched by the SELECT line - reading Up/Down/Left/Right and its face buttons in two passes rather than needing a pin per button. Both the Left and Right lines being pulled low at the same time is how the host detects that a pad is actually connected to a port.

A Xilinx XC9536PC44 CPLD drives the SELECT line for both ports and latches the resulting button states through a 74LS574 octal latch so they can be read by the host as memory-mapped registers, with 74LS125 buffers isolating the pad inputs from the expansion bus. A JTAG header is provided for programming the CPLD.

## Y Ddraig 6809 hardware

### CPU, RAM and ROM

The CPU used is the [Motorola 6809](https://en.wikipedia.org/wiki/Motorola_6809) running at 2 MHz.

ROM is supplued by a 32K EEPROM, and there is 512K of banked RAM with 32K visible at any time. The RAM is organised in 16K pages which can be switched in and out to use the full 512K.

## Hardware
* MC68B09 @ 2Mhz
* 32K Flash Memory (2 x 16K banks)
* 512M SRAM (16K fixed, Banked in 16K blocks)
* 2 x RS232 Serial ports
* 2 x Joystick ports
* Commodore 64 Keyboard
* Yamaha YM2203 sound
* Yamaha V9958 graphics
* Real-time clock
* SD card for storage
* C64 compatible IEC bus
* Expansion slot


### Memory map
```
0x0000 +------------------+
       |  16K RAM (fixed) |
0x4000 +------------------+
       |     Bank RAM     |
0x8000 +------------------+
       |  Expansion Slot  |
0xA000 +------------------+
       |       I/O        |
0xC000 +------------------+
       |      16K ROM     |
0xFFFF +------------------+
```

The ROM can be switched between to 16K ROMs, not entirly sure that's a useful feature just yet as it may require any system functions to be duplicated between the banks.


| Device | Start Address | End Address | Size |
|-|-|-|-|
| RAM - FIXED	| 0x0000 |	0x3FFF |	16K |
| RAM - BANKED | 0x4000 | 0x7FFF | 16K
| EXPANSION | 0x8000 | 0xBFFF | 8K |
| IO - BANK SELECT | 0xA000 | 0xA01F | 32B |
| IO - INTERRUPTS | 0xA020 | 0xA03F | 32B |
| IO - SERIAL | 0xA040 | 0xA05F | 32B |
| IO - KEYBOARD | 0xA060 | 0xA07F | 32B |
| IO - VIDEO | 0xA080 | 0xA09F | 32B |
| IO - SOUND | 0xA0A0 | 0xA0BF | 32B |
| IO - 65C22 VIA | 0x0C0 | 0xA0DF | 32B |
| IO - RTC | 0xA0E0 | 0xA0FF | 32B |
| ROM	| 0xC000 | 0xFFFF | 16K |

### System I/O

#### Bank Select (0xA000)
_(Write Only)_
| 7 | 6 | 5 | 4 | 3 | 2 | 1 | 0 |
|-|-|-|-|-|-|-|-|
| x | x | ROMSEL | RAM4 | RAM3 | RAM2 | RAM1 | RAM0 |

##### Interrupt status (0xA020)
_(Read Only)_
| 7 | 6 | 5 | 4 | 3 | 2 | 1 | 0 |
|-|-|-|-|-|-|-|-|
| x | EXP1 | EXP2 | SND | VDP | VIA | KBD | SER |

EXP1, EXP2 - Expansion port interrupts
SND - YM2203 Sound chip
VDP - V9958 Video
VIA - 65C22 VIA
KBD - Keyboard
SER - Serial port

#### Keyboard

##### Read Data (0xA060)
_(Read Only)_
Read character code from the keyboard

##### Read Status (0xA061)
_(Read Only)_
| 7 | 6 | 5 | 4 | 3 | 2 | 1 | 0 |
|-|-|-|-|-|-|-|-|
| x | x | x | x | x | x | FIFO FULL | FIFO EMPTY |

Active low


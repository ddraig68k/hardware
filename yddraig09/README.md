## Y Ddraig 6809 hardware

### CPU, RAM and ROM

The CPU used is the [Motorola 6809](https://en.wikipedia.org/wiki/Motorola_6809) running at 2 MHz.

ROM is supplued by an 16K EEPROM, and there is 256K of RAM with 40K visible at any time. The RAM is organised in 8K pages which can be switched in and out to use the full 256K.

## Hardware
* M6809 @2Mhz
* 16K ROM
* 256K RAM
* 2 x RS232 Serial ports
* 2 x Joystick ports
* PS/2 Keyboard
* Yamaha YM2203 sound
* Yamaha V9958 graphics
* Real-time clock
* SD card slot
* C64 compatable IEC bus


### Memory map
```
+--------------+ 0x0000
|    8K RAM    |
|    (fixed)   |
+--------------+ 0x2000
|    8K RAM    |
|   (bank 0)   |
+--------------+ 0x4000
|    8K RAM    |
|   (bank 1)   |
+--------------+ 0x6000
|    8K RAM    |
|   (bank 2)   |
+--------------+ 0x8000
|    8K RAM    |
|   (bank 3)   |
+--------------+ 0xA000
|    8K I/O    |
+--------------+ 0xC000
|  16K EEPROM  |
+--------------+ 0xFFFF
```





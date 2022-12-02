# CAD files for Y Ddraig

This repository contains the Schematics and any other relevant files for a [Motorola 68000 computer](https://ddraig68k.com) in KiCAD 6 format. The files for the main computer boards as well as any of the expansion boards are present in the repository.

The libraries used in the project are contained in the ddraig-libs folder inside the repo, to use them in KiCAD, go to Configure Paths and add a custom path DDRAIGLIB which points to the ddraig-libs folder.

## Y Ddraig

Welsh for *The Dragon*, Y Ddraig is my [Motorola 68000](https://en.wikipedia.org/wiki/Motorola_68000) computer. 

![Y Ddraig](/artwor/)
| **Specifications** |
|-|
|68000 CPU running at 10Mhz.|
|512K EEPROM |
|1M of Static RAM|
|8M Dynamic RAM|
|2 Serial ports|
|Parallel port|
|PS/2 keyboard and mouse|
|IDE interface|
|Real-time clock|
|4 Expansion slots|

<br />

# Design Files

**NOTE:** Not all the boards have been fully tested, ones in the "Untested designs" section are yet to be proven so if you use any parts of the design, use with caution.

## Tested and working designs

![Y Ddraig main pcb](/artwork/images/YDdraigFront.jpg)


**Expansion Cards**

* [YM2151 Audio card](expansion/AudioYM2151)

* [TMS9918 Graphics card](expansion/GfxTMS9918)

* [V9958 Graphics card](expansion/GfxV9958)

* [V9990 Graphics card](expansion/GfxV9990)

* [Sega Megadrive joypad card](expansion/JoypadController)

<br/>

## Untested designs

[YM2612 Audio card](expansion/AudioYM2612)

[RTL8019 Ethernet card](expansion/Eth8019)

[Floppy Disk controller card](expansion/FloppyDiskController)

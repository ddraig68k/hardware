# Updated for KiCAD 6

Design fiels have been updated for KiCAD 6. Access to the KiCAD 5 versions of the files can be found here: [hardware_kicad5](https://github.com/ddraig68k/hardware_kicad5). Any fixed to the designs will be made in both projects.  


# CAD files for Y Ddraig
This repository will contain the Schematics and board files for my [68K based computer](https://ddraig68k.com).

In KiCAD, go to Configure Paths and add a custom path DDRAIGLIB which points to the ddraig-libs folder inside the repo

These files are untested. The design was initially created in [Proteus](https://www.labcenter.com/). I am in the process of transferring the designs from Proteus to [KiCAD](https://www.kicad.org/) so the designs are currently untested and not guaranteed to work. Once I have had the PCBs manufactured and the boards tested, I will mark them as safe. Until then if you use any part of the design keep that fact in mind


## Tested and working designs

[Y Ddraig main pcb](yddraig)


Expansion Cards

* [YM2151 Audio card](expansion/AudioYM2151)

* [TMS9918 Graphics card](expansion/GfxTMS9918)

<br/>

## Untested designs

[YM2612 Audio card](expansion/AudioYM2612)

[RTL8019 Ethernet card](expansion/Eth8019)

[Floppy Disk controller card](expansion/FloppyDiskController)


[V9958 Graphics card](expansion/GfxV9958)

[V9990 Graphics card](expansion/GfxV9990)

[Sega Megadrive joypad card](expansion/JoypadController)


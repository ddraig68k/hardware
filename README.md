# CAD files for Y Ddraig
This repository will contain the Schematics and board files for my [68K based computer](https://ddraig68k.com).

## Warning
These files are untested. The design was initially created in [Proteus](https://www.labcenter.com/pcb/). I am in the process of transferring the designs from Proteus to KiCAD so the designs are currently untested and not guaranteed to work. Once I have had the PCBs manufactured and the boards tested, I will mark them as safe. Until then if you use any part of the design keep that fact in mind

This repository uses a git submodules for the ddriag component library  so make sure to use the `--recursive` flag when cloning the repository
```bash
$ git clone --recursive https://github.com/SteveMoody73/ddraig68k-kicad.git
```

If you accidentally clonewithout using ``--recursive``  run the following command
```bash
$ git submodule update --init --recursive
```

In KiCAD, go to Configure Paths and add a custom path DDRAIGLIB which points to the ddraig-libs folder inside the repo

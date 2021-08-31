## Y Ddraig hardware

### CPU, RAM and ROM

The CPU used by Y Ddraig is the [Motorola 68000](https://en.wikipedia.org/wiki/Motorola_68000) running at 10 MHz. The 68000 has a 16-bit data bus and 24-bit address bus internally runs as a full 32-bit machine. The 68000 has 8 general purpose data registers *D0-D7* and 8 address registers *A0-A7*. The address register A7 is also used as a special purpose register holding the *stack pointer*.

There is 512K of EEPROM available supplied by two 256K x 8-bit SST39SF020 devices for the ODD and EVEN addresses.

RAM is provided by two 512K x 8-bit AS6C4008 Static RAM devices giving a total of 1024K of available memory. There is also the option of adding an additional Dynamic RAM to expand the memory up to a total of 9MB.

### Memory Mapping

As the 68000 is a memory mapped device the address decoding is handled by a Xilinx XC95C108 CPLD. In addition to the address decoding the CPLD is also used as the DRAM controller.

The memory map is as follows:

| Device | Start Address | End Address |
|-|-|-|
| Static Ram | 0x000000 | 0x0FFFFF |
| Dynamic RAM | 0x100000 | 0x900000 |
| Slot1 Data | 0xA00000 | 0xAFFFFF |
| Slot2 Data | 0xB00000 | 0xBFFFFF |
| Slot3 Data | 0xC00000 | 0xCFFFFF |
| Slot4 Data | 0xD00000 | 0xDFFFFF |
| DUART | 0xF7F000 | 0xF7F0FF |
| PIT | 0xF7F100 | 0xF7F1FF |
| KBD | 0xF7F200 | 0xF7F2FF |
| IDE | 0xF7F300 | 0xF7F3FF |
| RTC | 0xF7F400 | 0xF7F4FF |
| Slot1 | 0xF7F500 | 0xF7F5FF |
| Slot2 | 0xF7F600 | 0xF7F6FF |
| Slot3 | 0xF7F700 | 0xF7F7FF |
| Slot4 | 0xF7F800 | 0xF7F8FF |
| ROM | 0xF80000 | 0xFFFFFF |

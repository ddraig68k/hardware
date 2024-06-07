# YM2151 V2 Sound Card

This second version of the [YM2151 Sound Card](/YM2151-Sound/) extends the capabilites of the original. In addition to the YM2151, two Oki MSM6258 chips for dual ADPCM audio channels.





The 68008 memory map
| Device | Start Address | End Address |
|-|-|-|
| Static Ram    | 0x000000 | 0x07FFFF |
| ROM           | 0x100000 | 0x107FFF |
| STATUS_LATCH	| 0x200000 | 0x200000 |
| REG_LATCH	    | 0x200001 | 0x200001 |
| DATA_LATCH	| 0x200002 | 0x200002 |
| DUART	        | 0x200100 | 0x2001FF |
| YM2151	    | 0x200200 | 0x2002FF |
| MSM6295 1	    | 0x200300 | 0x2003FF |
| MSM6295 2	    | 0x200400 | 0x2004FF |


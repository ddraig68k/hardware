# YM2151 Sound Card

The YM2151 is a Yamaha FM synthesis chip with 8 channels, each of which has 4 operators. The YM2151 was used in many Arcade games, including games like Outrun and Ghouls 'n Ghosts.

![YM2151 Sound Card](/artwork/images/YM2151Card.jpg)

The YM2151 has a digital output so requires a YM3012 10-bit 2-channel DAC to generate the analoge output. The output of the DAC is fed into a [TPA3122D2](https://www.ti.com/product/TPA3122D2) 15-W Amplifier.

A [LTC6903](https://www.analog.com/en/products/ltc6903.html#product-overview) 1kHz – 68MHz Programmable Oscillator is used to generate the clock for the YM2151. I chose to use a programmable oscillator here rather than a fixed frequency crystal was mainly to be able to play back VGM and other music files. Depending on the system, the frequency can be different so it could be useful to vary the clock. My music writing skills are lacking so alternative sources of music are always beneficial.

A Xilinx XC95144XL is used is used for decoding logic and as a SPI controller for the LTC6903. Although the XC95144XL is a 3.3V part, it has 5V tolerant I/O and it seems to interface with the 68000 expansion bus without issue. The 3.3V output seems to drive the 5V signals correctly so I can avoid having to add 3.3V to 5V buffers. While I wouldn't recommend this approach for a mass produced design, it seems to work on a on-off situation at least.

A quick test of playing some VGM music.

[<img src="https://img.youtube.com/vi/DkEkwPIz1iw/maxresdefault.jpg" width="50%">](https://youtu.be/DkEkwPIz1iw)


# Dual SID Audio Card

The [MOS 6581/8580 SID](https://en.wikipedia.org/wiki/MOS_Technology_SID) is the sound chip used in the Commodore 64, with 3 independent oscillators, multiple waveforms, ADSR envelopes and a multi-mode filter giving it its distinctive sound.

This card has two SID sockets, each jumper-selectable between the original 6581 and the later 8580 variant, since the two chips have different characteristics - the 8580 cleaned up some of the 6581's non-linearities and runs from a 9V analog supply rather than the 6581's 12V. The board provides both rails, with an L7809 regulator supplying the 9V needed by the 8580.

A Xilinx XC9536PC44 CPLD handles address decoding and chip select generation for both SID sockets. Each SID has its own volume potentiometer for mixing before the two channels are combined into a single audio output, with a separate analog supply and ground plane to help keep noise out of the signal.

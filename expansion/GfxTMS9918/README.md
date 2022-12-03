# TMS9918 Video card

The TMS9918A is capable of a 256x192 pixel display with a 15 colour palette. It has 16K of video memory and 4 different video modes.

![TMS9918 Video Card](/artwork/images/gfx-tms9918.jpg)

From the [Sega Retro](https://segaretro.org/TMS9918) site:

>There are 4 different screen modes available in the TMS9918A (as mentioned before, the TMS9918 lacks mode Graphic II):
>
>Mode 0 (Text): 40×24 characters monochrome. As the display is 256 pixels width, the character set is only 6 pixels wide. This mode doesn't support sprites, nor a separate border color setting.
>
>Mode 1 (Graphic 1): 32×24 characters (256×192 bitmap), where for each 8 characters in the character set the foreground and background color can be set. The chars "0"-"7" for example all have the same attributes.
>
>Mode 2 (Graphic 2): 32×24 characters (256×192 bitmap), with a 2-color limitation for each 8 pixel wide line inside a character.
>
>Mode 3 (Multicolor): 64×48 mode, very blocky and rarely used. Each 'pixel' can have its own color defined though, hence the name. Its sprites still have the same resolution as in screen modes 1 and 2.
>
>The TMS9918 has a fixed 16-color palette (actually 15 colors + transparent). 

The TMS9918A was designed to use DRAM, but I have used the design by [Leonardo Miliani](https://www.leonardomiliani.com/en/2019/lm80c-tms9918a/) that allows SRAM to be used instead.

The TMS9918 can also display up to 32 sprites (4 per scanline).

![TMS9918 text mode](/artwork/images/gfx-tms9918-text.jpg)

[Plasma effect on the TMS9918](https://www.youtube.com/watch?v=u6DVTGFEivY)


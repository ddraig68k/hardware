# VGA Graphics Card

Unlike the other graphics expansion cards, which are each built around a dedicated video chip from the 1980s/90s, this card generates video directly from a Xilinx Spartan-6 XC6SLX9-TQG144 FPGA, giving full control over the display timing and pixel generation logic instead of relying on a fixed-function chip.

An IS61WV102416FBLL 1M x 16-bit SRAM provides the frame/video memory for the FPGA. Configuration is loaded from a W25Q64JVSSIM SPI flash at power-up, so the board doesn't need to be reprogrammed each time it starts, though the FPGA can also be programmed directly over JTAG during development.

Since the FPGA core runs at a lower voltage than the rest of the board, an LD1117S12TR regulator supplies the 1.2V core rail, while buffer/level-shifting logic (74LS125, 74LS157, SN74LVC8T245) bridges the 3.3V FPGA I/O to the 5V expansion bus. Video is output through a standard DE15 VGA connector.

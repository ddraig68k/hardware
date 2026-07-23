# RTL8019 Ethernet Card

The Realtek RTL8019AS is a fully integrated, single-chip [NE2000](https://en.wikipedia.org/wiki/NE2000)-compatible Ethernet controller with an 8/16-bit ISA-style bus interface and an integrated packet buffer, which makes it straightforward to attach to a simple non-DMA host bus like the 68000's.

A Xilinx XC9536PC44 CPLD provides the address decoding and glue logic between the expansion bus and the RTL8019AS, including the IOCS16B signalling used to negotiate 8/16-bit bus width with the host, as on ISA NE2000 cards.

The card has an RJ45 jack with integrated magnetics for the 10BASE-T connection, link/activity LEDs, and a JTAG header for programming the CPLD.

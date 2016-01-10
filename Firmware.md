---
layout: default
title: HDMI2USB misoc firmware
published: true
tags: firmware, firmware-misoc
redirect_from: "/firmware-misoc/"
---

# HDMI2USB - Firmware

## Quick Links

 * [Firmware Repository](https://github.com/timvideos/HDMI2USB-misoc-firmware)
 * [Report a bug](https://github.com/timvideos/HDMI2USB-misoc-firmware/issues/new)
 * [misoc + migen website](https://m-labs.hk/gateware.html)


## History

The HDMI2USB firmware was originally developed by
[Jahanzeb Ahmad](https://github.com/jahanzeb) using hand coded VHDL/Verilog and with
cores from [OpenCores](OpenCores.org) and the
[Xilinx LogiCORE IP Core Generator](http://www.xilinx.com/ise/products/coregen_overview.pdf). 
This firmware (called the [Jahanzeb firmware](../firmware-jahanzeb)) **was
replaced** by the "MiSoC Firmware" starting middle of 2015. You can find a 
[comparison between the two firmware here](../firmware-compare).

This page talks about using the **MiSoC Firmware**.





## Getting Started

 * TODO Put instructions here.


## Setting up Developer Environment

 * [Follow these instructions](https://github.com/timvideos/HDMI2USB-misoc-firmware)

## Status

atlys_base:

  * BaseSoC working (CPU + DDR2 + UART)
  * MiniSoC working (BaseSoC + 10/100Mbps Ethernet MAC handled by the CPU)

atlys_hdmi2ethernet:

  * EtherboneSoC working (BaseSoC + 10/100Mbps HW Ethernet UDP/IP stack and Etherbone)
  * VideomixerSoC working (EtherboneSoC + HDMI in + Framebuffer + Hdmi out)
  * HDMI2EthernetSoC working (VideomixerSoC + JPEG encoder + UDP streamer)

atlys_hdmi2usb:

  * VideomixerSoC working (MiniSoC + HDMI in + Framebuffer + Hdmi out)
  * HDMI2USB working (VideomixerSoCerSoC + JPEG encoder + USB streamer)


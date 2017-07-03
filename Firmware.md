---
layout: default
title: HDMI2USB misoc firmware
published: true
tags: firmware, firmware-misoc
redirect_from: "/firmware-misoc/"
redirect_from: "/firmware-litex/"
---

# HDMI2USB - Firmware

This page talks about using the **MiSoC Firmware**, see the [History](#history)
section for more information about the different firmware versions.


## Quick Links

 * [Firmware Repository](https://github.com/timvideos/HDMI2USB-misoc-firmware)
 * [Report a bug](https://github.com/timvideos/HDMI2USB-misoc-firmware/issues/new)
 * [misoc + migen website](https://m-labs.hk/gateware.html)


## Getting Started

If you are user, look at the 'Flashing prebuilt firmware' section.
If you are a developer, look at 'Setting up a Developer Environment' section
below. 

### Flashing prebuilt firmware
```
sudo add-apt-repository --yes --update ppa:timvideos/fpga-support
sudo apt install hdmi2usb-mode-switch  hdmi2usb-udev
git clone https://github.com/timvideos/HDMI2USB-firmware-prebuilt.git  
cd HDMI2USB-firmware-prebuilt/opsis/firmware/testing
hdmi2usb-modeswitch --flash-gateware --flash-gateware opsis_hdmi2usb-hdmi2usbsoc-opsis.bin
```
[problems and solutions](flash-gateware)

### Setting up Developer Environment

To setup a developer environment
[follow the 'Getting Started' instructions in the TimVideos/HDMI2USB-litex-firmware repo](https://github.com/timvideos/HDMI2USB-litex-firmware/blob/master/getting-started.md).

## Status

[What works on what boards](status)

## History

The HDMI2USB firmware was originally developed by
[Jahanzeb Ahmad](https://github.com/jahanzeb) using hand coded VHDL/Verilog and with
cores from [OpenCores](OpenCores.org) and the
[Xilinx LogiCORE IP Core Generator](http://www.xilinx.com/ise/products/coregen_overview.pdf).
This firmware (called the [Jahanzeb firmware](../firmware-jahanzeb)) **was
replaced** by the "MiSoC Firmware" starting middle of 2015. You can find a
[comparison between the two firmware here](../firmware-compare).

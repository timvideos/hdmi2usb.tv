---
layout: default
title: HDMI2USB misoc firmware
published: true
tags: firmware, firmware-misoc
redirect_from: "/firmware-misoc/"
redirect_from: "/firmware-litex/"
---

# HDMI2USB - Firmware

This page talks about using the **LiteX Firmware** which is the firmware currently
used in production.

See the [History](#history) section for more information about the older
firmware versions.

<br>
<br>
<br>
<br>
<br>
<br>

## Quick Links

 * [Firmware Repository](https://github.com/timvideos/HDMI2USB-litex-firmware)
 * [Report a bug](https://github.com/timvideos/HDMI2USB-litex-firmware/issues/new)
 * [Wiki](https://github.com/timvideos/HDMI2USB/wiki)
 * [Mailing List](https://groups.google.com/forum/#!forum/hdmi2usb) [[Join](https://groups.google.com/forum/#!forum/hdmi2usb/join)]
 * [IRC Channel](http://webchat.freenode.net/?nick=hdmi2usb-user.&channels=%23timvideos)

<br>
<br>
<br>
<br>
<br>
<br>

## Getting Started

 * If you are user, look at the ['Flashing prebuilt firmware'](#flashing-prebuilt-firmware) section.

 * If you are a developer, look at ['Setting up a Developer Environment'](#setting-up-a-developer-environment) section
below. 

<br>
<br>
<br>
<br>
<br>
<br>

### Flashing prebuilt firmware

<br>

[Instructions on flashing](https://github.com/timvideos/HDMI2USB/wiki/Flashing-Firmware) your [Numato Opsis](https://github.com/timvideos/HDMI2USB/wiki/Flashing-Firmware#numato-opsis) or [Digilent Atlys](https://github.com/timvideos/HDMI2USB/wiki/Flashing-Firmware#digilent-atlys) with [prebuilt firmware can be found on the Wiki](https://github.com/timvideos/HDMI2USB/wiki/Flashing-Firmware).

<br>

<a href="https://github.com/timvideos/HDMI2USB/wiki/Flashing-Firmware" style="font-size: larger;">Click here to goto flashing instructions on the wiki.</a>

<br>
<br>
<br>
<br>
<br>

### Setting up Developer Environment

To setup a developer environment
[follow the 'Getting Started' instructions in the TimVideos/HDMI2USB-litex-firmware repo](https://github.com/timvideos/HDMI2USB-litex-firmware/blob/master/getting-started.md).

<br>
<br>
<br>
<br>


## History

The HDMI2USB firmware was originally developed by
[Jahanzeb Ahmad](https://github.com/jahanzeb) using hand coded VHDL/Verilog and with
cores from [OpenCores](OpenCores.org) and the
[Xilinx LogiCORE IP Core Generator](http://www.xilinx.com/ise/products/coregen_overview.pdf).

This firmware (called the [Jahanzeb firmware](../firmware-jahanzeb)) **was
replaced** by the "MiSoC Firmware" starting middle of 2015. The "MiSoC Firmware" was
renamed to the "LiteX Firmware" after we started using 
[Enjoy Digital's](http://enjoy-digital.fr/) 
[soft fork or MiSoC called LiteX](https://github.com/enjoy-digital/litex). (We use
the term "MiSoC" and "LiteX" interchangably through the documentation.)

You can find a [comparison between the two firmware here](../firmware-compare).

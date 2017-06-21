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

 * TODO Put instructions here.

If you are a developer, look at 'Setting up a Developer Environment' section
below. If you are user, look at the 'Flashing prebuilt firmware' section.

### Flashing prebuilt firmware

[The HDMI2USB project provides prebuilt binaries in the
TimVideos/HDMI2USB-firmware-prebuilt repo.](https://github.com/timvideos/HDMI2USB-firmware-prebuilt).

You will need to install the
[HDMI2USB-mode-switch tool](https://github.com/timvideos/HDMI2USB-mode-switch).

Install the tool following the instructions in the repo. On Linux you will
probably need to install the udev rules in the repo or via your systems package
manager (possibly using a TimVideos PPA - TODO: Put link here).

You can then update / upgrade using the tool. The `--help` output should
provide info on the possible options.

For now you will have to manually download firmware from the repo.
TODO: Eventually we hope the mode-switch tool will automatically download
firmware from the repo.

TODO: Can someone please write better, more comprehensive user update
instructions.


### Setting up Developer Environment

To setup a developer environment
[follow the 'Getting Started' instructions in the TimVideos/HDMI2USB-litex-firmware repo](https://github.com/timvideos/HDMI2USB-litex-firmware/blob/master/getting-started.md).

TODO: Currently installing the method for flashing the prebuilt firmware can
interfere with the developer setup. Figure out how to fix this.

## Status

TODO: Can someone update the status info here.


## History

The HDMI2USB firmware was originally developed by
[Jahanzeb Ahmad](https://github.com/jahanzeb) using hand coded VHDL/Verilog and with
cores from [OpenCores](OpenCores.org) and the
[Xilinx LogiCORE IP Core Generator](http://www.xilinx.com/ise/products/coregen_overview.pdf).
This firmware (called the [Jahanzeb firmware](../firmware-jahanzeb)) **was
replaced** by the "MiSoC Firmware" starting middle of 2015. You can find a
[comparison between the two firmware here](../firmware-compare).

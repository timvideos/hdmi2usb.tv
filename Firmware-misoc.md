---
layout: default
title: HDMI2USB misoc firmware
published: true
tags: firmware, firmware-misoc
---

# HDMI2USB - MiSoC Firmware

## Getting Set Up

1. Follow MiSoC Quick start guide [https://github.com/m-labs/misoc](https://github.com/m-labs/misoc)

2. Clone [https://github.com/timvideos/HDMI2USB-misoc-firmware](https://github.com/timvideos/HDMI2USB-misoc-firmware) into same directory as misoc

3. Follow instructions to build the gateware and software; in the HDMI2USB-misoc-firmware directory:
<pre>make help</pre>


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


## Links

  * [https://github.com/timvideos/HDMI2USB-misoc-firmware](https://github.com/timvideos/HDMI2USB-misoc-firmware)

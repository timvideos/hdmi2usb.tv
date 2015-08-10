---
layout: post
title:  "Announcing the Numato Opsis board"
date:   2015-07-01 10:00:00
categories: hardware opsis
---

The [TimVideos project](http://code.timvideos.us/) and [Numato
Lab](http://numato.com/) are pleased to announce the Numato "Opsis" open video
platform. The Opsis platform is an exciting new FPGA based open hardware,
specifically designed for the needs of the HDMI2USB project.

With dual inputs and dual outputs, which can all be controlled independently,
the board removes the need for extra matrix switching hardware, reducing
complexity of recording set up.

The HDMI2USB firmware is also designed to provide a large amount debugging
information which is all programmatically available by a virtual serial port.
The Opsis board enables even further support by including full control over all
pins, including hot plug, enabling "virtual disconnection" without having to
unplug and re-plug cables.

The TimVideos project is already experimenting with the new functionality
available through the Opsis board and is currently investigating new features
like streaming video directly via Gigabit Ethernet or capturing live to a local
SD card.

The Opsis board has also been targeted at people interested and involved with
video creation, manipulation and research. The Opsis board's features enables a
wide range of video related applications and is designed not only for
development but to become the core of your intelligent digital video system.
Potential integration applications include everything from a simple "smart"
video matrix to live video manipulation in visual art installations. 

Overall, the new [Opsis board]() has the following differences with the 
[Atlys board]() used for prototyping.

 * Has DDR3 memory instead of DDR2, increasing the memory bandwidth.

 * Has a Spartan S6LX45T with the GTP broken out to DisplayPort headers.

 * Has a PCI-Express style expansion connector instead of the expensive VHDCI
   connector, allow much cheaper expansion boards.

 * Has all the extra pins on the FX2, increasing the potential USB interface
   options.

 * Has control over all the HDMI functionality, including hot plug and CEC
   functionality.

 * Removes parts we don’t need such as the audio, buttons, switches and LEDs.

 * Mounts in any ITX style computer case.

 * Adds UTMI USB (as well as the Cypress FX2).

 * Adds MicroSD connector.

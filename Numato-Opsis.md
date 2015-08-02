---
layout: default
title: Numato Opsis
published: true
tags: hardware, numato-opsis
---

# Numato Opsis

The Numato Opsis is the first HDMI2USB production board developed specifically for the HDMI2USB project (as part of the TimVideos project).

The board is entirely open; both the firmware that runs on the device, and the schematics for the device.  This board is currently not available from TimVideos but we are running a crowdsourcing campaign to get these manafactured.

![Numato Opsis](../img/numato-opsis.jpg)


## Getting Started

 **NOTE: These boards are not currently available to purchase, but please support our crowdsourced campaign to get these produced!**

  * Purchase a board, by backing the campaign [TODO: add link]
  * Load the firmware (see [Firmware](../firmware)).
  * Test and use the device.  (see [Numato Opsis - Using](../digilent-atlys-using)).

## Useful Resources

  * [https://github.com/timvideos/HDMI2USB-numato-opsis-hardware](https://github.com/timvideos/HDMI2USB-numato-opsis-hardware)
  * [https://github.com/timvideos/HDMI2USB-numato-opsis-sample-code](https://github.com/timvideos/HDMI2USB-numato-opsis-sample-code)

## Technical Specifications

<table class="boards">
 <tr class="name">
   <td>&nbsp;</td>
   <td class="opsis"><h3>Numato Opsis</h3></td>
 </tr>
 <tr class="open">
   <td>&nbsp;</td>
   <td class="opsis">
<a href="https://github.com/timvideos/HDMI2USB-numato-opsis-hardware"
   alt="Fully Open Source, complete schematic and PCB avaliable.">
  <img src="/img/open-hardware.png">
</a>
   </td>
 </tr>

 <tr>
   <th>Cost</th>
   <td class="opsis">$USD TBA</td>
 </tr>

 <tr>
   <th>FPGA</th>
   <td class="opsis">Xilinx Spartan-6 LX45<b>T</b> FPGA</td>
 </tr>
 <tr>
   <th>Memory</th>
   <td class="opsis">128Mbyte DDR3</td>
 </tr>
 <tr>
   <th>Video Interfaces</th>
   <td class="opsis">
<ul>
 <li>2 x HDMI Input<a href="#opsis-hdmi" class="footnote">[4]</a>, </li>
 <li>2 x HDMI Output<a href="#opsis-hdmi" class="footnote">[4]</a>, </li>
 <li class="unsupported">1 x DisplayPort Input,</li>
 <li class="unsupported">1 x DisplayPort Output</li>
</ul>
   </td>
 </tr>
 <tr>
   <th>Comms</th>
   <td class="opsis">
<ul>
 <li>30Mbyte/s FX2 Cypress,</li>
 <li>Gigabit Ethernet,</li>
 <li class="unsupported">USB 2.0 OTG</li>
</ul>
   </td>
 </tr>
 <tr>
   <th>Storage</th>
   <td class="opsis">XXMbyte SPI Flash, <span class="unsupported">SD Card (unsupported)</span></td>
 </tr>
 <tr>
   <th>Audio</th>
   <td class="opsis">None</td>
 </tr>
 <tr>
   <th>Expansion</th>
   <td class="opsis">1 x <a href="">TimVideos FPGA Expansion Connector</a></td>
 </tr>
 <tr>
   <th>Power Supply</th>
   <td class="opsis">12V @ 1A</td>
 </tr>
</table>
{::nomarkdown}
{:/nomarkdown}

## Common questions:
TODO: Tim fill out for accuracy, this is just copied from the Atlys page for consistency

### Is the board capable of encoding analogue signals - DVI-A or VGA with a DVI plug?

The base board only supports digital signals (mainly because the development board we are using also only supports digital signals). It supports HDMI, DVI and DisplayPort (in their many connector forms).

The board includes a powerful extension port which we will be developing daughterboards for. We currently have a VGA daughterboard in development, but yet to actually get anything like results yet.

### Does it produce compressed video or raw video?

It produces both;
 * mjpeg compressed video - Best for capture from a continuous source such as a camera.
 * raw video - Best for capture of non-continuous or text heavy sources, such as a presenter's slides.

Both are full 1024x768 or 720p resolution (depending on if the input is DVI or HDMI).

The problem is that USB2.0 doesn't have enough bandwidth for raw video at 30fps, so if you want the higher frame rate you have to use the mjpeg compression mode.

At the moment raw mode is about 10-15fps while the target for mjpeg mode is a full 30fps/25fps (but we only get around 20ish at the moment, but that is a software problem with our  JPEG encoder core we hope to solve rather than a hardware issue).

The jpeg compression quality is controlled via a setting.

### Can this board record two simultaneous separate cameras, or a camera and a laptop?

No, again USB 2.0 doesn't have enough bandwidth for recording two streams at once. When we move to USB 3.0 this might become possible.

It can work as a matrix type device. It has two independent inputs (which can come from different sources) and two linked outputs (ie they must display the same output).

The idea would be:

<pre>
 Presenter's computer ----> HDMI Input 1 /          \ HDMI Output 1 ---> Speaker confidence screen
                                         | HDMI2USB |
 Podium computer      ----> HDMI Input 2 \          / HDMI Output 2 ---> In room projector
</pre>

This allows you to switch the in room projector to display something when not presenting. It could have details about the room (IE name, what is up next, etc) or something similar.

### What kind of USB device does it present to the host?

The device appears as:

  * UVC Webcam - This device is very common (pretty much every web-cam under the sun uses this format) and well supported under Linux.

  * CDC Serial Port - This device allows you to control the various options of the HDMI2USB and get status about which ports have active inputs, get hot plug events and such.

<br>
<br>

##### Footnotes

{::nomarkdown}
<div class="footnotes">
 <ul>

  <li>[4]: <a name="opsys-hdmi"></a>
On the Numato Opsis board, all the HDMI pins are under the FPGA control. This
means the board support hot plug detection and control and also CEC support
(which is missing from the firmware).
  </li>

 </ul>
</div>
{:/nomarkdown}


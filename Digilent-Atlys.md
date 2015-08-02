---
layout: default
title: Digilent Atlys
published: true
tags: hardware, digilent-atlys
---

# Digilent Atlys

The Digilent Atlys was the original prototyping platform for developing the
HDMI2USB firmware and continues to be a supported platform.

![Digilent Atlys](../img/digilent-atlys.jpg)

## Getting Started

  * Purchase a board (links below).
  * Load the firmware (see [Firmware](../firmware)).
  * Test and use the device.  (see [Digilent Atlys - Using](../digilent-atlys-using)).

## Useful Resources

  * [http://www.digilentinc.com/atlys/ - US$419](http://www.digilentinc.com/atlys)
  * [http://www.amazon.com/Atlys-Spartan - US $414.95](http://www.amazon.com/Atlys-Spartan%C2%AE-6-FPGA-Development-Kit/dp/B004OT8CKS)
  * [Recommended Conference Adapter Kit](https://docs.google.com/document/d/1WUU2sMINPfkzTkTPN2GTO8S1OIEZxjjl9zPdAyQJ6CI/pub)
  * [Additional information in the HDMI2USB wiki](https://github.com/timvideos/HDMI2USB/wiki)

## Technical Specifications

<span class="unsupported">Features listed in grey are currently unsupported by the firmware.</span>

<table class="boards">
 <tr class="open">
   <td>&nbsp;</td>
   <td class="atlys">
    <img src="/img/not-open-hardware.png">
   </td>
 </tr>

 <tr>
   <th>FPGA</th>
   <td class="atlys">Xilinx Spartan-6 LX45 FPGA</td>
 </tr>
 <tr>
   <th>Memory</th>
   <td class="atlys">128Mbyte DDR2</td>
 </tr>
 <tr>
   <th>Video Interfaces</th>
   <td class="atlys">
<ul>
  <li>2 x HDMI Input<a href="#atlys-hdmi-input" class="footnote">[1]</a>,</li>
  <li>HDMI Output<a href="#atlys-hdmi-output-1" class="footnote">[2]</a>,</li>
  <li>micro-HDMI Output<a href="#atlys-hdmi-output-1" class="footnote">[3]</a></li>
</ul>
   </td>
 </tr>
 <tr>
   <th>Comms</th>
   <td class="atlys">
<ul>
 <li>30Mbyte/s FX2 Cypress,</li>
 <li>Gigabit Ethernet,</li>
 <li>UART,</li> 
 <li class="unsupported">USB v1.1 Keyboard/Mouse interface</li>
</ul>
   </td>
 </tr>
 <tr>
   <th>Storage</th>
   <td class="atlys">16Mbyte SPI Flash</td>
 </tr>
 <tr>
   <th>Audio</th>
   <td class="atlys unsupported">AC-97 Codec (unsupported)</td>
 </tr>
 <tr>
   <th>Expansion</th>
   <td class="atlys">1 x Digilent VHDCI, 1 x PMOD<a href="#atlys-pmod" class="footnote">[5]</a></td>
 </tr>
 <tr>
   <th>Power Supply</th>
   <td class="atlys">5V @ 4A</td>
 </tr>
</table>

## Common questions:

### Is the board capable of encoding analogue signals - DVI-A or VGA with a DVI plug?

The base board only supports digital signals (mainly because the development board we are using also only supports digital signals). It supports HDMI and DVI (in their many connector forms).

The board includes a powerful extension port which we will be developing daughter boards for. We currently have a VGA daughter board in development, but yet to actually get anything like results yet.

### Does it produce compressed video or raw video?

It produces both;
 * mjpeg compressed video - Best for capture from a continuous source such as a camera.
 * raw video - Best for capture of non-continuous or text heavy sources, such as a presenter's slides.

Both are full 1024x768 or 720p resolution (depending on if the input is DVI or HDMI).

The problem is that USB2.0 doesn't have enough bandwidth for raw video at 30fps, so if you want the higher frame rate you have to use the mjpeg compression mode.

At the moment raw mode is about 10-15fps while the [MJPEG] mode runs at 30fps or 25fps (dependent on capture source frequency).

The [MJPEG] compression quality is controlled via a setting.

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
  <li>[1]: <a name="atlys-hdmi-input"></a>
The Atlys board has the hot plug pin hard wired, hot plug detection and control
is not supported on this board. The CEC pin is also unconnected.
  </li>

  <li>[2]: <a name="atlys-hdmi-output1"></a>
  </li>

  <li>[3]: <a name="atlys-hdmi-output2"></a>
  </li> 

  <li>[5]:<a name="atlys-pmod"></a>
The PMOD header on the Atlys board is shared with the micro-HDMI connector.
Only one can be in use at any one time.
  </li>

 </ul>
</div>
{:/nomarkdown}


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

<table class="board">
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


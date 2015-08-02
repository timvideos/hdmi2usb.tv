---
layout: default
title: Numato Opsis
published: true
tags: hardware, numato-opsis
---

# Numato Opsis

The Numato Opsis is the first HDMI2USB production board developed specifically for the HDMI2USB project (as part of the TimVideos project).

The board is entirely open; both the firmware that runs on the device, and the schematics for the device.  This board is currently not available from TimVideos but we are running a crowdsourcing campaign to get these manufactured.

![Numato Opsis](../img/numato-opsis.jpg)


## Getting Started

TODO: Put getting started instructions here.

## Useful Resources

TODO: Put some links to useful resources here.

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


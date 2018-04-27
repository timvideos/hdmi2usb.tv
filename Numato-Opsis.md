---
layout: default
title: Numato Opsis
published: true
tags: hardware, numato-opsis
---

# Numato Opsis

The Numato Opsis is the first HDMI2USB production board developed specifically for the HDMI2USB project (as part of the TimVideos project).

The board is entirely open; both the firmware that runs on the device, and the schematics for the device.

<a href="https://numato.com/product/numato-opsis-fpga-based-open-video-platform">The board can now be ordered from Numato Labs</a>

<iframe src="https://player.vimeo.com/video/138276604" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen style="height:281px; width: 500px;"></iframe>


## Getting Started

  * Purchase a board from
    [Numato Labs](https://numato.com/product/numato-opsis-fpga-based-open-video-platform)
    or directly from [Numato.com](http://numato.com).
  * Load the firmware (see [Firmware](../firmware)).
  * Test and use the device.  (see [Numato Opsis - Using](../digilent-atlys-using)).

## Useful Resources

  * [Numato Opsis Docs](https://opsis.hdmi2usb.tv) ([source](https://github.com/timvideos/HDMI2USB-numato-opsis-docs))
  * [Hardware Design Repository](https://github.com/timvideos/HDMI2USB-numato-opsis-hardware)
  * [Sample Code Repository](https://github.com/timvideos/HDMI2USB-numato-opsis-sample-code)

## Technical Specifications

<table class="board">
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
   <td class="opsis">$USD 349</td>
 </tr>

 <tr>
   <th>FPGA</th>
   <td class="opsis">Xilinx Spartan-6 LX45<b>T</b> FPGA</td>
 </tr>
 <tr>
   <th>Memory</th>
   <td class="opsis">256Mbyte DDR3</td>
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
   <td class="opsis">1 x <a href="/tofe">Tim's Open FPGA Expansion Connector (TOFE)</a></td>
 </tr>
 <tr>
   <th>Power Supply</th>
   <td class="opsis">12V @ 2A</td>
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


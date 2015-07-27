---
layout: default
title: HDMI2USB - Open hardware for conference, meeting and user group recording!
published: true
tags: home
---

# HDMI2USB

The HDMI2USB project aims to develop open hardware for conference, meeting and
user group recording.

# Boards

## Actively Supported

<table class="boards">
 <tr class="name">
   <td>&nbsp;</td>
   <td class="atlys"><h3>Digilent Atlys</h3></td>
   <td class="opsis"><h3>Numato Opsis</h3></td>
 </tr>
 <tr class="open">
   <td>&nbsp;</td>
   <td class="atlys">
    <img src="/img/not-open-hardware.png">
   </td>
   <td class="opsis">
<a href="https://github.com/timvideos/HDMI2USB-numato-opsis-hardware"
   alt="Fully Open Source, complete schematic and PCB avaliable.">
  <img src="/img/open-hardware.png">
</a>
   </td>
 </tr>
 <tr class="links">
   <th>Links</th>
   <td class="atlys">
<a href="" title="More information on your Digilent Atlys board.">More Info</a>, 
<a href="" title="Getting Started with your Digilent Atlys board.">Getting Started</a>
   </td>
   <td class="opsis">
<a href="" title="More information on your Numato Opsis board.">More Info</a>, 
<a href="" title="Getting Started with your Numato Opsis board.">Getting Started</a>
   </td>
 </tr>
 <tr class="desc">
   <td>&nbsp;</td>
   <td class="atlys">
The Digilent Atlys was the original prototyping platform for developing the
HDMI2USB firmware.
   </td>
   <td class="opsis">
The Numato Opsis is the first HDMI2USB production board developed in
conjunction with the <a href="http://code.timvideos.us/">TimVideos project.</a>
   </td>
 </tr>
 <tr class="picture">
   <td>&nbsp;</td>
   <td class="atlys"><img class="board-pic" src="/img/digilent-atlys.jpg"></td>
   <td class="opsis"><img class="board-pic" src="/img/numato-opsis.jpg"></td>
 </tr>

 <tr>
   <th>Cost</th>
   <td class="atlys">$USD 419</td>
   <td class="opsis">$USD TBA</td>
 </tr>

 <tr>
   <td colspan="3">
     <h4>Specifications</h4>
<span class="unsupported">Features listed in grey are currently unsupported by the firmware.</span>
   </td>
 </tr>

 <tr>
   <th>FPGA</th>
   <td class="atlys">Xilinx Spartan-6 LX45 FPGA</td>
   <td class="opsis">Xilinx Spartan-6 LX45<b>T</b> FPGA</td>
 </tr>
 <tr>
   <th>Memory</th>
   <td class="atlys">128Mbyte DDR2</td>
   <td class="opsis">128Mbyte DDR3</td>
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
   <td class="atlys">
<ul>
 <li>30Mbyte/s FX2 Cypress,</li>
 <li>Gigabit Ethernet,</li>
 <li>UART,</li> 
 <li class="unsupported">USB v1.1 Keyboard/Mouse interface</li>
</ul>
   </td>
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
   <td class="atlys">16Mbyte SPI Flash</td>
   <td class="opsis">XXMbyte SPI Flash, <span class="unsupported">SD Card (unsupported)</span></td>
 </tr>
 <tr>
   <th>Audio</th>
   <td class="atlys unsupported">AC-97 Codec (unsupported)</td>
   <td class="opsis">None</td>
 </tr>
 <tr>
   <th>Expansion</th>
   <td class="atlys">1 x Digilent VHDCI, 1 x PMOD<a href="#atlys-pmod" class="footnote">[5]</a></td>
   <td class="opsis">1 x <a href="">TimVideos FPGA Expansion Connector</a></td>
 </tr>
 <tr>
   <th>Power Supply</th>
   <td class="atlys">5V @ 4A</td>
   <td class="opsis">12V @ 1A</td>
 </tr>
</table>
{::nomarkdown}
{:/nomarkdown}

## Under Investigation

We are always investigating new possibilities of boards to support and trak
details about them in the [[Potential Boards]] section.


# Firmware

There are currently two actively developed firmwares implementing the HDMI2USB
functionality.


{::nomarkdown}
<table class="firmware">

 <tr class="name">
   <td>&nbsp;</td>
   <th class="fw-original">original</td>
   <th class="fw-misoc">misoc</td>
 </tr>

 <tr class="desc">
   <td>&nbsp;</td>
   <td class="fw-original">
The original HDMI2USB firmware was developed using a combination of 
<a href="">VHDL</a>, <a href="">Verilog</a> and cores generated in 
<a href="">Xilinx ISE<a/>.
   </td>
   <td>
The misoc HDMI2USB firmware was developed using <a href="">migen</a> and <a
href="">misoc</a> technologies.

   </td>
 </tr>

 <tr class="picture">
   <td>&nbsp;</td>
   <td class="fw-original"><img src=""></td>
   <td class="fw-misoc"><img src="img/misoc-logo.png"></td>
 </tr>

 <tr class="code">
   <th>Code</th>
   <td class="fw-original"><a href="http://github.com/timvideos/HDMI2USB">http://github.com/<wbr>timvideos/<wbr>HDMI2USB</a></td>
   <td class="fw-misoc"><a href="http://github.com/timvideos/HDMI2USB-misoc-firmware">http://github.com/<wbr>timvideos/<wbr>HDMI2USB-misoc-firmware</a></td>
 </tr>

 <tr class="links">
   <td>&nbsp;</td>
   <td class="fw-original">
<a href="" title="Getting Started with HDMI2USB Original Firmware">Getting Started</a>
   </td>
   <td class="fw-misoc">
<a href="" title="Getting Started with HDMI2USB misoc Firmware">Getting Started</a>
   </td>
 </tr>

 <tr>
   <th colspan=3>
     Features
   </th>
 </tr>
 <tr>
   <th>License</th>
   <td class="fw-original"></td>
   <td class="fw-misoc"></td>
 </tr>
 <tr>
   <th>Supported Boards</th>
   <td class="fw-original">Digilent Atlys, Numato Opsis</td>
   <td class="fw-misoc">Digilent Atlys, Numato Opsis</td>
 </tr>
 <tr>
   <th>Streaming Interfaces</th>
   <td class="fw-original">USB 2.0 UVC Camera</td>
   <td class="fw-misoc">USB 2.0 UVC Camera, Gigabit Ethernet</a>
 </tr>
 <tr>
   <th>Control Interface</th>
   <td class="fw-original">USB 2.0 CDC-ACM "Serial Port"</td>
   <td class="fw-misoc">USB 2.0 CDC-ACM "Serial Port", Gigabit Ethernet</a>
 </tr>
</table>
{:/nomarkdown}

<br>
<br>
<br>
<br>
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

  <li>[4]: <a name="opsys-hdmi"></a>
On the Numato Opsis board, all the HDMI pins are under the FPGA control. This
means the board support hot plug detection and control and also CEC support
(which is missing from the firmware).
  </li>

  <li>[5]:<a name="atlys-pmod"></a>
The PMOD header on the Atlys board is shared with the micro-HDMI connector.
Only one can be in use at any one time.
  </li>

 </ul>
</div>
{:/nomarkdown}


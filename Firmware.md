---
layout: default
title: Firmware
tagline: Firmware
tags: firmware
---

# Firmware

There are currently two actively developed firmwares implementing the HDMI2USB
functionality.


{::nomarkdown}
<table class="firmware">

 <tr class="name">
   <td>&nbsp;</td>
   <td class="fw-original"><h3>original</h3></td>
   <td class="fw-misoc"><h3>misoc (recommended)</h3></td>
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

  <tr class="links">
    <td>&nbsp;</td>
    <td class="fw-original">
 <a href="../firmware-original" title="Getting Started with HDMI2USB Original Firmware" class="btn btn-default">Getting Started</a>
    </td>
    <td class="fw-misoc">
 <a href="../firmware-misoc" title="Getting Started with HDMI2USB misoc Firmware" class="btn btn-default">Getting Started</a>
    </td>
  </tr>

 <tr class="picture">
   <td>&nbsp;</td>
   <td class="fw-original"><img class="firmware-pic" src=""></td>
   <td class="fw-misoc"><img class="firmware-pic" src="../img/misoc-logo.png"></td>
 </tr>

 <tr class="code">
   <th>Code</th>
   <td class="fw-original"><a href="http://github.com/timvideos/HDMI2USB">http://github.com/<wbr>timvideos/<wbr>HDMI2USB</a></td>
   <td class="fw-misoc"><a href="http://github.com/timvideos/HDMI2USB-misoc-firmware">http://github.com/<wbr>timvideos/<wbr>HDMI2USB-misoc-firmware</a></td>
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


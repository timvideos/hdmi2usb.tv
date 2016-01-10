---
layout: default
title: Firmware
tagline: Firmware
tags: firmware
---

# Firmware Comparison

Their have two firmwares create by the HDMI2USB project so far. This page shows
the comparison between the two.

{::nomarkdown}
<table class="firmware">

 <tr class="name">
   <td>&nbsp;</td>
   <td class="fw-jahanzeb"><h3>jahanzeb</h3></td>
   <td class="fw-misoc"><h3>misoc</h3></td>
 </tr>

 <tr class="desc">
   <th>Development</th>
   <td class="fw-jahanzeb"><b>Not</b> under active development.</td>
   <td class="fw-misoc">Under active development.</td>
 </tr>

 <tr class="desc">
   <th>Production Use</th>
   <td class="fw-jahanzeb"><b>Not</b> used in production.</td>
   <td class="fw-misoc">Actively used in production.</td>
 </tr>

 <tr class="desc">
   <td>&nbsp;</td>
   <td class="fw-jahanzeb">
The jahanzeb HDMI2USB firmware was developed using a combination of
<a href="">VHDL</a>, <a href="">Verilog</a> and cores generated in
<a href="">Xilinx ISE</a>.
   </td>
   <td>
The misoc HDMI2USB firmware is developed using
<a href="http://m-labs.hk/gateware.html">migen</a> and
<a href="http://m-labs.hk/gateware.html">misoc</a> technologies.
   </td>
 </tr>

  <tr class="links">
    <td>&nbsp;</td>
    <td class="fw-jahanzeb">
 <a href="../firmware-jahanzeb" title="Getting Started with HDMI2USB Original Firmware" class="btn btn-default">Getting Started</a>
    </td>
    <td class="fw-misoc">
 <a href="../firmware-misoc" title="Getting Started with HDMI2USB misoc Firmware" class="btn btn-default">Getting Started</a>
    </td>
  </tr>

 <tr class="picture">
   <td>&nbsp;</td>
   <td class="fw-jahanzeb"><img class="firmware-pic" src=""></td>
   <td class="fw-misoc"><img class="firmware-pic" src="../img/misoc-logo.png"></td>
 </tr>

 <tr class="code">
   <th>Code</th>
   <td class="fw-jahanzeb"><a href="http://github.com/timvideos/HDMI2USB-jahanzeb-firmware">http://github.com/<wbr>timvideos/<wbr>HDMI2USB-jahanzeb-firmware</a></td>
   <td class="fw-misoc"><a href="http://github.com/timvideos/HDMI2USB-misoc-firmware">http://github.com/<wbr>timvideos/<wbr>HDMI2USB-misoc-firmware</a></td>
 </tr>

 <tr>
   <th class="head" colspan=3>
     Features
   </th>
 </tr>
 <tr>
   <th>License</th>
   <td class="fw-jahanzeb">
    <ul>
      <li>Gateware: BSD/MIT and Xilinx (unclear)</li>
      <li>Firmware: GPL v2.0</li>
    </ul>
   </td>
   <td class="fw-misoc">
    <ul>
      <li>Gateware: BSD/MIT</li>
      <li>Firmware: GPL v2.0</li>
    </ul>
   </td>
 </tr>
 <tr>
   <th>Supported Boards</th>
   <td class="fw-jahanzeb">Digilent Atlys</td>
   <td class="fw-misoc">Digilent Atlys, Numato Opsis</td>
 </tr>
 <tr>
   <th>Streaming Interfaces</th>
   <td class="fw-jahanzeb">USB 2.0 UVC Camera</td>
   <td class="fw-misoc">USB 2.0 UVC Camera, Gigabit Ethernet</a></td>
 </tr>
 <tr>
   <th>Control Interface</th>
   <td class="fw-jahanzeb">USB 2.0 CDC-ACM "Serial Port"</td>
   <td class="fw-misoc">USB 2.0 CDC-ACM "Serial Port", Gigabit Ethernet</a></td>
 </tr>
</table>
{:/nomarkdown}


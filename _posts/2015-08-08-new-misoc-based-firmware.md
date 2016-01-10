---
layout: post
title:  "New MiSoC based firmware"
date:   2015-08-08 11:52:54
categories: firmware misoc
---

Thanks to the hard work of [Florent from Enjoy
Digital](http://enjoy-digital.fr/) we now have a [completely working HDMI2USB
firmware](https://github.com/timvideos/HDMI2USB-misoc-firmware) based off
[m-labs's misoc+migen](http://m-labs.hk/gateware.html).

This new firmware is substantially easier to develop then the previous firmware
and already has many new features compared to the old hand coded firmware. It
supports the [Numato Opsis board](/numato-opsis/).

For a [better comparison of the two firmware see the following table](/firmware-compare):

{::nomarkdown}
<table class="firmware">

 <tr class="name">
   <td>&nbsp;</td>
   <td class="fw-jahanzeb"><h3>jahanzeb</h3></td>
   <td class="fw-misoc"><h3>misoc</h3></td>
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
   <td class="fw-jahanzeb"></td>
   <td class="fw-misoc"><img class="firmware-pic" src="/img/misoc-logo.png"></td>
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

---

# MiSoC and migen

From <a href="http://m-labs.hk/gateware.html">the m-labs's site</a>.

> # Migen
> 
> Migen is a Python-based tool that automates further the VLSI design process.
> 
> Despite being faster than schematics entry, hardware design with Verilog and
> VHDL remains tedious and inefficient for several reasons. The event-driven
> model introduces issues and manual coding that are unnecessary for
> synchronous circuits, which represent the lion's share of today's logic
> designs.  Counter-intuitive arithmetic rules result in steeper learning
> curves and provide a fertile ground for subtle bugs in designs. Finally,
> support for procedural generation of logic (metaprogramming) through
> "generate" statements is very limited and restricts the ways code can be made
> generic, reused and organized.
> 
> To address those issues, we have developed the Migen FHDL library that
> replaces the event-driven paradigm with the notions of combinatorial and
> synchronous statements, has arithmetic rules that make integers always behave
> like mathematical integers, and most importantly allows the design's logic to
> be constructed by a Python program. This last point enables hardware
> designers to take advantage of the richness of the Python language - object
> oriented programming, function parameters, generators, operator overloading,
> libraries, etc. - to build well organized, reusable and elegant designs.
> 
> Other Migen libraries are built on FHDL and provide various tools such as a
> system-on-chip interconnect infrastructure, a dataflow programming system, a
> more traditional high-level synthesizer that compiles Python routines into
> state machines with datapaths, and a simulator that allows test benches to be
> written in Python.
> 
> You can find the [Migen source here](http://github.com/m-labs/migen),
> released under the permissive BSD license.
>
> # MiSoC
>
> Built on Migen, MiSoC provides a high performance, flexible and lightweight
> solution to build system-on-chips for various applications.
>
> * CPU options:
>  * LatticeMico32, modified to include an optional MMU (experimental).
>  * mor1kx, a better OpenRISC implementation.
> * High performance memory controller capable of issuing several SDRAM
>   commands per FPGA cycle.
> * Supports SDR, DDR, LPDDR and DDR2.
> * Provided peripherals: UART, GPIO, timer, GPIO, NOR flash controller, SPI
>   flash controller, Ethernet MAC, and more.
> * High performance: on Spartan-6, 83MHz system clock frequencies, 10+Gbps DDR
>   SDRAM bandwidth, 1080p 32bpp framebuffer, etc.
> * Low resource usage: basic implementation fits easily in Spartan-6 LX9.
> * Portable and easy to customize thanks to Python- and Migen-based architecture.
> * Design new peripherals using Migen and benefit from automatic CSR maps and
>   logic, simplified DMAs, etc.
> * Possibility to encapsulate legacy Verilog/VHDL code.
>
> [MiSoC source is here](http://github.com/m-labs/misoc), mostly covered by the
> permissive BSD license. Here is a 
> [simple example](http://github.com/m-labs/blinkie) of how to customize MiSoC.

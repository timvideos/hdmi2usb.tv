---
layout: default
title: TOFE - Tim's Open FPGA Expansion
published: true
tags: hardware, tofe
---

# TOFE - Tim's Open FPGA Expansion

The TOFE interface dramatically reduces the cost of high-speed I/O
functionality by taking inspiration from the PCI-Express standard and
re-purposing its connectors and mechanical specifications.

TimVideos and Numato are committed to developing expansion boards to add new
features (such as VGA capture) to the Opsis board through the TOFE connector.
We also plan to create simple adapter boards to other existing expansion I/O
standards such as PMOD and the Digilent VHDCI.

We hope that the significantly reduced cost of the TOFE interface will also
enable the community to create new expansion boards we haven’t even dreamt of
yet!

## Why?

We want a FPGA expansion that fits the following criteria;

 * Open standard that anyone can access without NDA or other agreements.
 * Cheap connection interface that are easily accessible to **any** hobbyists.
 * Supports high speed signals >5 Gbit/s.

<img src="https://imgs.xkcd.com/comics/standards.png">

<a href="https://docs.google.com/document/d/1KzStzKqC7nXBJ8nz8FIvqCoLN01p7YXi8MhAZCt0oXw/edit">Document examining wide variety expansion board interfaces</a>

## Specification

### Naming

#### Motherboard Connectors

The aim with naming of a TOFE motherboard connector completely describes the
features available.

The name scheme needs to include;

 * PCI Express connector size
   * 1x
   * 4x
   * 8x
   * 16x

 * The number of lanes populated. To improve brevity, if the number of lanes
   populated is left out then **all** lanes in the connector should be
   populated.

 * If the connector supports "bi-directional" or "uni-directional" signaling.
   * B - Bi-Directional
   * S - Uni-directional

 * The maximum operating lane speed;
   * 1500M
   * 3125M
   * XXXXM

 * The minimum operating lane speed. If unspecified, then it is assume the lane
   can operate down to DC.

 * The compatible IO standards that are supported.
   * Voltage levels which are compatible.
     * 1.5V, 1.8V, 2.5V, 3.3V.

   * Signalling standards.
     * LVDS - Low Voltage Differential Signaling
     * RSDS - Reduced Swing Differential Signaling
     * PPDS - Point-to-Point Differential Signaling
     * TMDS - Transition Minimized Differential Signaling
     * BLVDS - Bus LVDS

   * Line encodings which are compatible.
     * 8b/10b - Used by pretty much everything.
     * 64b/66b - 10 Gbit/s Ethernet
     * 64b/67b - Interlaken
     * 128b/130b - PCI-Express Gen 3 and higher.
     * 128b/132b - USB3.1

 * The amount of power that can be provided,
   * All together (from both 3.3V and 12V combined).
   * Just via the 12V pins.
   * Just via the 3.3V pins.

 * Any extra properties that could be useful like;
   * Beacon signaling for PCI Express compatibility.
   * SATA Out-of-Band signaling.


#### Daughterboard

The aim with naming a TOFE daughter board is to completely describe the
features required for the daughter board to correctly operate.

##### PCI-Express

PCI-Express cards are actually compatible with TOFE motherboard sockets which
meet the following requirements;

| Version | Generation | Lane Speed  | Line code |
| 1.0     | Gen 1      |  2.5 Gbit/s | 8b/10b    |
| 2.0     | Gen 2      |  5.0 Gbit/s | 8b/10b    | 
| 3.0     | Gen 3      |  8.0 Gbit/s | 128b/130b |
| 4.0     | Gen 4      | 16.0 Gbit/s | 128b/130b | 


PCI-Express 1st gen would be
  TOFE-Xx-3000M-PS



### Spreadsheet of connections

<a href="https://docs.google.com/spreadsheets/d/15rivtOcSG4kqKf0AUK_OwBfs67XQtW8byr8kc5FUTgE/edit">Edit or Comment Link</a>

<iframe src="https://docs.google.com/spreadsheets/d/15rivtOcSG4kqKf0AUK_OwBfs67XQtW8byr8kc5FUTgE/pubhtml?widget=true&amp;headers=false" style="min-height: 900px;"></iframe>


## Comparison

<table style="font-size: 10pt; background-color: #F7F9F9">
<thead>
 <tr>
  <th></th>
  <th class="tofe00">TOFE</th>
  <th class="dvhdci">Digilent VHDCI</th>
  <th class="fmclpc">FMC LPC</th>
  <th class="fmchpc">FMC HPC</th>
  <th class="alhsmc">Altera HSMC</th>
 </tr>
</thead>
<tbody>
 <tr>
  <th>Open Specification</th>
  <td class="tofe00">Yes</td>
  <td class="dvhdci">None</td>
  <td class="fmclpc">No</td>
  <td class="fmchpc">No</td>
  <td class="alhsmc">Yes</td>
 </tr><tr>
  <th>Autodetect and Configuration Interface</th>
  <td class="tofe00">SMBUS or JTAG [5]</td>
  <td class="dvhdci">None</td>
  <td class="fmclpc">JTAG or SMBUS</td>
  <td class="fmchpc">JTAG or SMBUS</td>
  <td class="alhsmc">JTAG or SMBUS</td>
 </tr><tr>
  <th>Power</th>
  <td class="tofe00">12V and 3.3V</td>
  <td class="dvhdci">3.3V or 2.5V</td>
  <td class="fmclpc">12V, 3.3V and adjustable</td>
  <td class="fmchpc">12V, 3.3V and adjustable</td>
  <td class="alhsmc">12V and 3.3V</td>
 </tr><tr>
  <th>Transceiver Pairs</th>
  <td class="tofe00">Up to 14 RX and 14 TX</td>
  <td class="dvhdci">0</td>
  <td class="fmclpc">0</td>
  <td class="fmchpc">Up to 10</td>
  <td class="alhsmc">Up to 8 RX and 8TX</td>
 </tr><tr>
  <th colspan="9">LVDS Pairs</th>
 </tr><tr>
  <td style="padding: 2px; padding-left: 10px">Total</td>
  <td class="tofe00">Up to 34</td>
  <td class="dvhdci">22</td>
  <td class="fmclpc">Up to 34</td>
  <td class="fmchpc">Up to 80</td>
  <td class="alhsmc">Up to 18 TX and 18 RX</td>
 </tr><tr>
  <td style="padding: 2px; padding-left: 10px">IO Pairs</td>
  <td class="tofe00">Up to 34 [6]</td>
  <td class="dvhdci">22</td>
  <td class="fmclpc">?</td>
  <td class="fmchpc">?</td>
  <td class="alhsmc">Up to 16 TX and 16 RX</td>
 </tr><tr>
  <td style="padding: 2px; padding-left: 10px">Clock Pairs</td>
  <td class="tofe00">Up to 7 [6]</td>
  <td class="dvhdci">2</td>
  <td class="fmclpc">?</td>
  <td class="fmchpc">?</td>
  <td class="alhsmc">Up to 2 TX and 2 RX</td>
 </tr><tr>
  <th>Additional low speed IO</th>
  <td class="tofe00">11</td>
  <td class="dvhdci">0</td>
  <td class="fmclpc">?</td>
  <td class="fmchpc">?</td>
  <td class="alhsmc">4 x IO, 2 x CLK</td>
 </tr><tr>
  <th colspan="9">Connector</th>
 </tr><tr>
  <td style="padding: 2px; padding-left: 10px">Motherboard</td>
  <td class="tofe00">PCI-Express<br>~$1 USD</td>
  <td class="dvhdci">VHDCI<br>~$8 USD</td>
  <td class="fmclpc">Low Density FMC<br>~$30 USD</td>
  <td class="fmchpc">High Density FMC<br>~$80 USD</td>
  <td class="alhsmc">HSMC<br>~$5 USD</td>
 </tr><tr>
  <td style="padding: 2px; padding-left: 10px">Daughterboard</td>
  <td class="tofe00">None<br>~$0 USD</td>
  <td class="dvhdci">VHDCI<br>~$8 USD</td>
  <td class="fmclpc">Low Density FMC<br>~$30 USD</td>
  <td class="fmchpc">High Density FMC<br>~$80 USD</td>
  <td class="alhsmc">HSMC<br>~$5 USD</td>
 </tr>
</tbody>
</table>

### Mechanical

TOFE boards should be mechanically identical to PCI-Express **half length**
cards in either **full height** or **half height** (also called low profile).

However, the only regions which matter for TOFE boards are the PCI-Express
fingers and the mechanical drill holes. See the following diagram;

![TOFE Requirements Diagram](/img/tofe/tofe-layout-full-height.png)

Any of the area marked in green is free to be changed. This offers a wide range
of mechanical designs, such as shown in this diagram;

![TOFE Examples Diagram](/img/tofe/tofe-examples-full-height.png)


## Boards

### Existing

These boards are currently available;

 * [Milkymist Compatibility - TOFE Expansion Board](/tofe/milkymist)
 * [Low Speed IO - TOFE Expansion Board](/tofe/lowspeedio)


### Planned

These boards are planned for construction or currently under development;

#### Adapter Boards

Boards which adapt to other standards for peripheral interfacing.

 * To PMOD - Simple passive adapter which allows PMOD based peripherals be used
   on a TOFE header.

 * To VHDCI Adapter - Simple passive adapter which allows usage of peripherals
   designed for the Digilent Atlys board.

 * To Arduino Shield - Adapter which is compatible with Arduino shields.
   Contains an ADC/DAC to be compatible with the Analog pins.

 * To FMC LPC - Adapter which is allows FMC LPC compatible boards be used on
   TOFE expansion.

#### Functionality Boards

Boards which add new functionality to TOFE compatible device.

 * VGA Input - Adaption of Rohit's vmodvga designed with a TOFE interface
   rather than a VHDCI interface.

 * 4 x HDMI - Board which adds 4 x HDMI ports using a 8xTOFE connector.

 * 3 x 1G Ethernet - Board which adds 3 (maybe 4?) x Gigabit Ethernet ports.

 * ? x SDI - Board which adds SDI interfacing capabilities.

# Templates

A
[KiCad template for TOFE boards](https://github.com/timvideos/HDMI2USB-TOFE-kicad-template)
can be found on GitHub.


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

<img src="http://imgs.xkcd.com/comics/standards.png">

<a href="https://docs.google.com/document/d/1KzStzKqC7nXBJ8nz8FIvqCoLN01p7YXi8MhAZCt0oXw/edit">Document examining wide variety expansion board interfaces</a>

## Specification


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

## Boards

### Existing

These boards are currently available;

 * FIXME: Add some boards here.


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


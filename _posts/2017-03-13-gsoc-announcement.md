---
layout: post
title:  "Get paid to hack on hardware! TimVideos in GSoC"
date:   2017-03-15 01:00:00
categories: gsoc fpga hardware python linux
---

<style>
.td {
 vertical-align: middle;
}
</style>

<span style='font-size: larger; font-weight: bold;'>
Are you a Uni student who is interested hardware, FPGAs or embedded
programming? You could get paid to hack by [applying to the
TimVideos.us organisation][1] for [Google Summer of Code!][2] </span>

<span style='font-size: larger; font-weight: bold;'>
Not a student? **[You can help us by share this post!][3]**
</span>

  [1]: https://summerofcode.withgoogle.com/organizations/4806703267708928/
  [2]: https://summerofcode.withgoogle.com/
  [3]: https://hdmi2usb.tv/gsoc/fpga/hardware/python/linux/2017/03/15/gsoc-announcement/

<table>
	<tr>
		<td style='background-color: #ffffff; text-align: right; width: 50%; border-top: none;'>
			<img alt="TimVideos Logo" src="/img/logo.png" style="display: block; height: 100px; margin-left: auto;">
		</td><td style='background-color: #ffffff; font-size: 60px; text-align: center; vertical-align: middle; border-top: none;'>
			+
		</td><td style='background-color: #ffffff; text-align: left; width: 50%; vertical-align: middle; border-top: none;'>
			<img alt="GSoC Logo 2016" src="https://developers.google.com/open-source/gsoc/resources/downloads/GSoC2016Logo.jpg" style="height: 60px;">
		</td>
	</tr>
</table>

The TimVideos.us project is happy to announce that it is participating in
[Google Summer of Code 2017 (GSoC2017)][2] and is [looking for students to hack on
the hardware used to record many open source conferences](https://code.timvideos.us/summer-of-code/) - including;

<table style="width: auto; text-align: center; margin-top: auto; margin-left: 5%;">
	<tr>
		<td>
			<a href="https://linux.conf.au">Linux.conf.au</a>
		</td><td>
			<a href="http://www.pycon.org/">many PyCons around the world,</a>
		</td><td>
			and <a href="https://debconf.org">DebConf</a>.
		</td>
	</tr><tr>
		<td>
			<img style="height: 61px;" src="http://lca2017.linux.org.au/site_media/static/lca2017/images/svgs/illustrations/tuz.svg">
		</td><td>
			<img style="height: 61px;" src="http://www.pycon.org/logo-sitemasthead.gif">
		</td><td>
			<img style="height: 61px;" src="https://www.debian.org/Pics/openlogo-50.png">
		</td>
	</tr><tr>
		<td>
			<a href="https://www.youtube.com/user/linuxconfau2017">LCA2017</a>
		</td><td>
			<a href="https://www.youtube.com/user/pyconau">PyCon AU</a>,
			<a href="http://pyvideo.org/events/pyohio-2016.html">pyOhio</a>,
			<a href="http://pyvideo.org/events/kiwi-pycon-2016.html">Kiwi PyCon</a> &
			<a href="https://www.youtube.com/c/PyConSouthAfrica">PyCon ZA</a>
		</td><td>
			<a href="http://meetings-archive.debian.net/pub/debian-meetings/2016/">DebConf2016</a>
		</td>
	</tr>
</table>

Due to the focus on hardware, we are very interested in students who are
interested in things like [FPGAs, VHDL/Verilog and other
HDLs](https://en.wikipedia.org/wiki/Hardware_description_language), embedded C
programming and operating systems and [electronic circuit/PCB
design](https://en.wikipedia.org/wiki/Circuit_design)!

You might even get to attend one of these conferences like some of [our previous GSoC students](/timvideos/sprints/lca2015/gsoc/2015/02/01/sprints-and-linux-conf-au/).

<div class="image image-right">
<img title="Our three GSoC students enjoying the conference dinner (from left, Rohit, Ajit, Aayush)" src="/img/sprints-and-lca2015/7-gsoc-students-enjoy-dinner.jpg" style="width:100%;">
<p>Three GSoC students enjoying the conference dinner (from left, Rohit, Ajit, Aayush)</p>
</div>

This year we have joint project ideas with other hardware based groups who are also participating in GSoC2017 including;

<table style="width: auto; text-align: center; margin-top: auto; margin-left: 5%;">
	<tr>
		<td>
			<a href="https://www.apertus.org">The apertus project</a>
		</td><td>
			<a href="http://fossi-foundation.org/">The FOSSi foundation</a>,
		</td><td>
			and <a href="http://www.lowrisc.org/">lowRISC</a>.
		</td>
	</tr><tr>
		<td>
			<img style="height: 61px;" src="https://www.apertus.org/sites/default/files/apertus_Logo_small.png">
		</td><td>
			<img style="height: 61px;" src="http://fossi-foundation.org/assets/fossi_logo_large.png">
		</td><td style="vertical-align: middle;">
			<img style="height: 47px; background: #e0384f; padding: 4px;" src="http://www.lowrisc.org/img/logo.svg">
		</td>
	</tr><tr>
		<td>
			<a href="https://summerofcode.withgoogle.com/organizations/4801281785856000/">(GSoC page)</a>
		</td><td>
			<a href="https://summerofcode.withgoogle.com/organizations/5867002221559808/">(GSoC page)</a>
		</td><td>
			<a href="https://summerofcode.withgoogle.com/organizations/5710050115977216/">(GSoC page)</a>
		</td>
	</tr>
</table>

Some examples of projects that TimVideos.us is looking for students to contribute too are;

<table style="width: auto; text-align: left; margin-top: auto; margin-left: 4em;">
	<tr>
		<td>
		   &bull; Porting a real operating system such as
		   <a href="https://github.com/timvideos/getting-started/issues/30">Linux</a>
		   <a href="https://github.com/timvideos/getting-started/issues/42">or NuttX</a> to our
		   System On Chip to <a href="https://github.com/timvideos/getting-started/issues/33">allow easier development of new features</a>.
		</td>
	</tr><tr>
		<td>
 		  &bull; <a href="https://github.com/upy-fpga/issues-wiki/wiki">Porting MicroPython to our FPGA SoC</a> to allow both hardware and firmware be developed in Python together!
		</td>
	</tr><tr>
		<td>
		  &bull; <a href="https://github.com/timvideos/getting-started/issues/41">Improving simulation of our SoC using QEmu</a>.
		</td>
	</tr><tr>
		<td>
			&bull; <a href="https://github.com/timvideos/getting-started/issues/39">Improving the debug interface for the soft-CPU cores in our SoC</a> <small>(In collaboration with lowRISC)</small>
		</td>
	</tr><tr>
		<td>
 			&bull; <a href="https://lab.apertus.org/T721">Creation of an open source 4K HDMI output HDL Gearwork Logic / IP Core</a> <small>(In collaboration with apertus)</small>
		</td>
	</tr><tr>
		<td>
			&bull; Making use of the <a href="https://github.com/timvideos/getting-started/issues/32">Ethernet interface for connecting multiple devices together</a> and alternative capture interfaces.
		</td>
	</tr><tr>
		<td>
			&bull; <a href="https://github.com/timvideos/getting-started/issues">and many, many more</a>.
 		</td>
	</tr>
</table>

[The deadline for applications is **April 3 16:00 UTC**, so you should start now!](https://code.timvideos.us/summer-of-code/)

**Looking forward to seeing what this year's batch of GSoC students create!**

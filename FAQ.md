---
layout: default
title: ABOUT + FAQ
tagline: Frequently Asked Questions
tags: faq, more-info
---

# Frequently Asked Questions

<br>

## Project

#### What would I use HDMI2USB for?

You'd use HDMI2USB as part of a solution to record multi-camera/device event video at events.  HDMI2USB captures (and passes through) video from HDMI or DisplayPort sources (video cameras, presenter laptops, etc).

<br>

#### Is HDMI2USB a complete video capture solution?

HDMI2USB is part of the [TimVideos] project, which aims to provide a complete ecosystem of hardware, software and know-how to do conference, meeting and user group recordings.

HDMI2USB is *purely* the 'video capture hardware' part of the equation.  You also need capture/mixing software, workflow automation software for larger events, somewhere to host your videos, and other elements.  Please see the [TimVideos] site for more information.

<br>

#### What makes HDMI2USB different to a HDMI capture box, or other existing solutions?

There are a number of commercial HDMI capture boxes available, that record video to an SD card or similar for later post-production in a non-linear editor.  This isn't what HDMI2USB aims to solve.

You can certainly use HDMI2USB in this way (record video to recorded video files via a PC, import to an editor for manual editing later), but the hardware is aimed to be used with 'live' editing/mixing software to mix together video feeds together into a final stream or saved file, avoiding lengthy post-production (as part of the wider [TimVideos] project).  It is effectively an open USB-based HDMI+DisplayPort "scan converter".

HDMI2USB does not require proprietary capture drivers for most basic capture; the stream is a standard USB UVC stream (i.e. like a webcam, it plugs in and "just works").

<br>

#### HDMI2USB is an 'open' project - why is this a good thing?

HDMI2USB was born after some existing conferences doing SD capture were reliant on a VGA scan converter which stopped being manufactured, leaving us in limbo.  We then located some vendors that made HDMI capture equipment but found many use varied capture standards (making automation difficult) and it proved impossible to find a USB capture solution that fit our criteria which we knew would be available for many years to come.

The hardware and firmware for HDMI2USB are open and will remain open, with firmware available for common prototyping boards.  This means the community can get involved in developing new features (including those not available on existing commercial solutions), and we're not reliant on a third party video capture specific vendor to keep producing consistent hardware.

Additionally, hardware schematics are available for the Numato Opsis board meaning even if the board is ever no longer available from TimVideos, these can still be manufactured by anybody wanting to do so.

<br>

#### Does HDMI2USB work reliably?  How hard is it to get HDMI2USB working?

HDMI2USB is still in heavily development; use at this stage should be considered experimental.

HDMI2USB is not currently a 'plug and play' solution; you need to flash firmware onto a board to get it operational.  We do provide easy to follow instructions if you're comfortable typing commands in and encourage people to contact us if you want assistance - we want to make this accessible to everyone.

<br>

#### What do I need to do to use HDMI2USB?

You'll need to do the following to do capture from 2 sources:

  * Buy some suitable capture hardware.  See the [Hardware] page.
  * Flash the firmware onto the device.  See the [Firmware] page.
  * Make sure you've got HDMI/Displayport cables and other equipment required to hook all your sources in.  See the [TimVideos] site.
  * Get some capture/mixing software that supports HDMI2USB.  This is still under heavy development.  See the [TimVideos] site.

If you need help, look at the [Getting Help] page.

## Hardware



## Firmware

### How can the capture hardware interface to my computer?

 * USB2.0 is currently supported.

 * Gigabit Ethernet is currently under development.

### What resolutions are supported?

The firmware is currently targeted at supporting two operating resolutions;

 * 16:9 - 720p mode

 * 4:3 - 1024x768

The resolution limit is currently imposed by the speed at which the FPGA pins are able to operate. The DisplayPort functionality of the [Numato Opsis] board and newer Xilinx Series 7 FPGAs (such as the [Digilent Nexys Video] and [Digilent Zybo] will increase the supported resolutions.

### Does it produce compressed video or raw video?

It produces both;
 * mjpeg compressed video - Best for capture from a continuous source such as a camera.
 * raw video - Best for capture of non-continuous or text heavy sources, such as a presenter's slides.

Both are full 1024x768 or 720p resolution (depending on if the input is DVI or HDMI).

The problem is that USB2.0 doesn't have enough bandwidth for raw video at 30fps, so if you want the higher frame rate you have to use the mjpeg compression mode.

At the moment raw mode is about 10-15fps while the [MJPEG] mode runs at 30fps or 25fps (dependent on capture source frequency).

The [MJPEG] compression quality is controlled via a setting.





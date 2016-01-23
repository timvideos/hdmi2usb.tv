---
layout: default
title: Drivers for using HDMI2USB related systems
published: true
tags: drivers
---

To use a device which comes preloaded with the HDMI2USB firmware (such as the
[Numato Opsis board](/numato-opsis)) **no drivers are needed** under;

 * Linux
 * Mac OS X
 * Windows 10

The HDMI2USB project provides custom tools for increased functionality, easy of
operation and upgrading the on-board firmware.

# Supported Operating Systems

Currently, the HDMI2USB project actively works on the following operating
systems (as they are what is used by the developers and CI systems);

 * Ubuntu Trusty 14.04 (on x86)
 * Debian Unstable (on x86)

HDMI2USB devices **should work** on almost any standards compliant modern
operating system and we will do our best effort to make that happen.

# Windows

It is recommended that **all** Windows users install the 
[Windows HDMI2USB Package] for ease of use.

If you prefer to only to install the minimal needed requirements, see the next
sections.

## Windows XP, Vista and Windows 7

Unlike other operating systems, older versions of Windows (such as Windows XP,
Windows Vista and Windows 7) will not automatically use their **inbuilt** USB
drivers. Instead every device must provide a `.inf` (which is plain text)
telling Windows about the association.

Newer versions of Windows (Windows Vista and Windows 7) also required the
contents of the `.inf` file be signed (found in `.cat` file).

## Windows 10

To use a device which comes preloaded with the HDMI2USB firmware (such as the
[Numato Opsis board](/numato-opsis)) **no drivers are needed**. Windows 10 will
automatically detect the HDMI2USB and install drivers as needed.

For other devices you can use the [Windows HDMI2USB package].

## Windows HDMI2USB Package

To make it easier to use the HDMI2USB firmware under Windows, an installer
package is being 
[developed here](https://github.com/mithro/HDMI2USB-and-Numato-Opsis-Windows-Drivers). 

This package will start of including;
 * The `.inf` files required to make Windows use it's internal drivers with
   HDMI2USB devices.
 * Graphical assets to allow distinguishing the HDMI2USB devices from other USB
   devices.

Future development will add;
 * Putty for connecting to control channel.
 * Windows compatible version of the [HDMI2USB mode switch] tool (to allow
   firmware upgrading).
 * A simple graphical control program to allow basic control over a boards
   input and outputs.
 * OpenOCD compiled for Windows, to allow FPGA development programming.

### Thank yous

A big thank you goes to [Ryan Pavlik](https://github.com/rpavlik) from the
[Open Source Virtual Reality project](http://osvr.github.io/)
for releasing the 
[OSVR HDK Windows Drivers](https://github.com/OSVR/OSVR-HDK-Windows-Drivers)
repository on which our package is based.

# Linux

To use a device which comes preloaded with the HDMI2USB firmware (such as the
[Numato Opsis board](/numato-opsis)) **no drivers are needed**. Linux will
automatically detect the devices. 

For other devices you can use the packages linked to from here.

## Ubuntu

### PPA Repositories

 * https://launchpad.net/~timvideos
 * https://launchpad.net/~timvideos/+archive/ubuntu/hdmi2usb
 * https://launchpad.net/~timvideos/+archive/ubuntu/numato-opsis


## Debian

We are currently working on making sure all HDMI2USB packages are available on
Debian.

Currently you will need to have Debian experimental enabled and then you can
install the packages with the following commands;

```
FIXME: Add apt-get install instructions here.
```

## Fedora

For now, follow the Other Linux Systems section.

We are currently [looking for help]()
with packaging HDMI2USB software for Fedora systems. 

## Other Linux Systems

FIXME: Add instructions for installing the tools from GitHub.

### udev rules

FIXME: Put udev rule information here.

[Work started here.](https://github.com/timvideos/HDMI2USB-misoc-firmware/blob/master/scripts/52-hdmi2usb.rules)

# Mac OS X

To use a device which comes preloaded with the HDMI2USB firmware (such as the
[Numato Opsis board](/numato-opsis)) **no drivers are needed**. Mac OS X will
automatically detect the devices.

We are currently [looking for help]()
with packaging the HDMI2USB software for Mac systems.

# HDMI2USB Mode Switch Tool

As almost all HDMI2USB can operate in multiple different modes, a simple tool
is provided to make this process easy. This tool also allows you to update (or
load) the HDMI2USB firmware on compatible devices (temporarily or permanently).

## Updating Firmware

The [HDMI2USB Mode Switch tool] can be used to update (or load) the HDMI2USB
firmware on compatible devices.

## Firmware versions

There are currently 3 different firmware versions released at any one time and
they act in a similar manner to the 
[Debian release process](https://www.debian.org/releases/) or the 
[Chrome release channels](https://www.chromium.org/getting-involved/dev-channel).

### Unstable

The `unstable` track is automatically generated from the latest commits in the
official [HDMI2USB firmware repository].

These releases only undergo automated testing and have **not** been verified to
be functional.

They should be mainly used to verify bug fixes and test new features.

### Testing

The `testing` track is updated to a new version after manual testing of an
unstable revision has been tested.

It is recommended that most people use the `testing` track so you get a good
mixture of stability and quick accesses to the new features.

### Stable

The `stable` track is updated after major rounds of testings (such as when the
firmware is used at conferences). These releases are our most stable but
released infrequently so often lack the newest features and bug fixes.


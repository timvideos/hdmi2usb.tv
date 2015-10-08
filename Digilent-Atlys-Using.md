---
layout: default
title: Digilent Atlys - Using
published: true
tags: hardware, digilent-atlys-using
---

# Using the Digilent Atlys

## Cabling
![Ports](https://googledrive.com/host/0B5VlNZ_Rvdw6dHRnNzgtZHVWYW8)
<pre>
USB Micro PROG --> Capture Computer

Presenters Laptop --> HDMI Input 0
Capture Computer  --> HDMI Input 1

HDMI Output 0 --> Projector
HDMI Output 1 --> Confidence Monitor
</pre>

Notes:
 * HDMI Input 0 is the *primary input*, it
 * HDMI Output 1 on the Atlys board is **unamplified** use cables of 1m or less!


## Testing on Linux

# read-edid

 * [get-edid man page](http://manpages.ubuntu.com/manpages/oneiric/man1/get-edid.1.html)
 * [parse-edid man page](http://manpages.ubuntu.com/manpages/oneiric/man1/parse-edid.1.html)
 * [read-edid home page](http://www.polypux.org/projects/read-edid/)

<pre>
$ sudo apt-get install read-edid
...
$ sudo get-edid | parse-edid
</pre>

### xrandr

On Linux you can use xrandr to see if the display is correctly detected.

#### xrandr example output

In the below example the LVDS1 is the internal screen.

The HDMI2USB is connected to DisplayPort port on a X220 Laptop via a [DisplayPort to HDMI adapter]. As this device has a DP++ port, this configuration appears as HDMI1 rather than DP1. (In this configuration the [DisplayPort to HDMI adapter] is a *passive* device and the conversion is happening in your computer!)

<pre>
# xrandr
LVDS1 connected primary 1366x768+0+0 (normal left inverted right x axis y axis) 277mm x 156mm
   1366x768       60.0*+
   1360x768       59.8     60.0
   1024x768       60.0
   800x600        60.3     56.2
   640x480        59.9
VGA1 disconnected (normal left inverted right x axis y axis)
HDMI1 connected 1024x768+1366+0 (normal left inverted right x axis y axis) 0mm x 0mm
   1024x768       60.0*+
DP1 disconnected (normal left inverted right x axis y axis)
HDMI2 disconnected (normal left inverted right x axis y axis)
HDMI3 disconnected (normal left inverted right x axis y axis)
DP2 disconnected (normal left inverted right x axis y axis)
DP3 disconnected (normal left inverted right x axis y axis)
VIRTUAL1 disconnected (normal left inverted right x axis y axis)
#
</pre>

#### Raspberry Pi

The Raspberry Pi is a little complicated as the display isn't renegotiated properly.

You need to boot the Pi while connected to the HDMI2USB so it detects the correct resolution.

You can force the Raspberry Pi into the right resolution otherwise with XXXXX boot options. FIXME: Add more information here.


<pre>
pi@raspberrypi ~ $ DISPLAY=:0.0 xrandr
xrandr: Failed to get size of gamma for output default
Screen 0: minimum 1024 x 768, current 1024 x 768, maximum 1024 x 768
default connected 1024x768+0+0 0mm x 0mm
   1024x768        0.0*
pi@raspberrypi ~ $
</pre>


#### Viewing a video stream in mplayer/VLC/gunvview

Before starting USB streaming, press the reset button once.
<pre>
mplayer -tv device=/dev/video0 tv://
</pre>

<pre>
vlc -vvv --color v4l:///dev/video0
</pre>
To check the frame rate of HDMI2USB you can use guvcviewer.

<pre>
 guvcview --device=/dev/video1 --show_fps=1 --size=1024X768
</pre>
The frame rate will appear in the title bar of the new window.


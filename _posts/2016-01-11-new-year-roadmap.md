---
layout: post
title:  "TimVideos.us 2016 New Year's Resolutions"
date:   2016-01-11 10:00:00
categories: timvideos hdmi2usb
---

Hello everyone,

Hope everyone has had an awesome start to 2016 so far. As is tradition in many
western countries, I thought I would put together some 
[New Year's Resolutions](https://en.wikipedia.org/wiki/New_Year%27s_resolution)
and reflect on our progress in 2015. I guess more business minded people might
call it a "project roadmap" :-)

### TimVideos Project

In 2015, I decided to focus the [TimVideos project](https://code.timvideos.us)
on the [HDMI2USB project](https://hdmi2usb.tv). The three key results of this
focus were;

 * Starting and completing a
   [rewrite of the HDMI2USB firmware](https://github.com/timvideos/HDMI2USB-misoc-firmware)
   based on the
   [Migen and MiSoC system developed by M-Labs](http://m-labs.hk/gateware.html).

 * Launching a
   [successful crowdfunding campaign](http://crowdsupply.com/numato-lab/opsis)
   for
   [Numato Opsis](https://github.com/timvideos/HDMI2USB-numato-opsis-hardware),
   our first open hardware for the HDMI2USB firmware.

 * Having the HDMI2USB firmware on Atlys boards used in production by multiple
   people!

    * Carl Karsten from [NextDayVideo](http://nextdayvideo.com) in the US for
      both PyCon ZA and Nodevember.
    * The [DebConf Video team](https://wiki.debconf.org/wiki/Videoteam) for
      their [MiniDebConf in November](https://wiki.debian.org/DebianEvents/gb/2015/MiniDebConfCambridge#Video).
    * [Myself for recording](https://www.youtube.com/user/mithro) my own talks
      on the HDMI2USB project at user groups here in Sydney!

With the success of this focus in 2015, the TimVideos project is going to
continue to focus on the [HDMI2USB project](https://hdmi2usb.tv) for 2016 (and
I'll go into more detailed goals shortly).

The [TimVideos project](https://code.timvideos.us) has also been mildly
successful in collaborating with other open source groups doing things related
to video recording and production. In 2016, I hope we can strengthen these
bonds and forge new ones. Some specific goals around this include;

 * Getting the TimVideos project to join 
   [Software Freedom Conservancy](https://sfconservancy.org) (or similar
   organisation).

 * Figure out the right way to collaborate with the
   [C3VOC team](https://c3voc.de/) on
   [voctomix](https://github.com/voc/voctomix) 
   and start adding missing features from
   [gst-switch](https://github.com/timvideos/gst-switch)
   allowing that project to be retired.

 * Continue to work with supporting groups like 
   [NextDayVideo](http://nextdayvideo.com), the 
   [DebConf Video team](https://wiki.debconf.org/wiki/Videoteam) and 
   [Linux Australia](https://linux.org.au).

 * Support and help 
   [Mike "Hamster" Field](http://hamsterworks.co.nz/mediawiki/index.php/FPGA_Projects)
   continue to develop a 
   [fully open source DisplayPort core](https://github.com/hamsternz/FPGA_DisplayPort).

 * Collaborate with the [apertus° project](http://apertus.org) on high end (4k
   and greater!) video capture and processing.

### HDMI2USB Project

As we are concentrating on the HDMI2USB project, we have some specific goals
around that.

HDMI2USB **firmware** goals;

 * Refactor the HDMI core to allow support a wider range of interfaces, better
   debugging and addition of more features. A document about the refactor has
   been [started here](https://docs.google.com/a/mithis.com/document/d/1L8lz7u2uj6MrzSQv4b1Vk6Rmic26okyRklOju5IWLYA/edit?usp=drive_web).

 * Add support for the [high-speed GTP transceivers]()
   and [Mike "Hamster" Field](http://hamsterworks.co.nz/mediawiki/index.php/FPGA_Projects)
   [open source DisplayPort core](https://github.com/hamsternz/FPGA_DisplayPort).

 * Get Ethernet support working (on both the Atlys and Opsis boards). The two
   major Ethernet features are;
   * Ethernet supports identical capture and control feature set to the USB
     port.
   * Allowing HDMI2USB boards to act has "HDMI over Ethernet extenders".


 * [Support for more hardware](https://hdmi2usb.tv/potential-boards/);
   * miniSpartan6+
   * Digilent Nexys Video
   * New HDMI2USB designed hardware!


 * Stretch Goals (1)
   * Add support for
     [hardware based mixing](https://docs.google.com/document/d/1ZjM1Brrks0lg1CJp2Rt1BH8-MhJamrKUeCUB4s4nzoA/edit).
   * Have either a RTOS or Linux running on the FPGA softcore.

HDMI2USB **hardware** goals;

 * (By end of year) Development of a low cost PCI-Express capture card.
 * (By middle 2017) Development of an Opsis V2 based around either an high
   end Artix-7 or a low end Kintex-7 FPGA.

*(1): Stretch goals are things we plan to try and achieve if things go well.*

----

Hope this update give you an idea of what we have planned for 2016! We would
love your help making it all possible.

Tim 'mithro' Ansell

*Edit: Corrected the month for the MiniDebConf and added a link to the recordings.*


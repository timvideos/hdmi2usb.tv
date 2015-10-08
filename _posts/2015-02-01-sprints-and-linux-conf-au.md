---
layout: post
title:  "TimVideos Sprints and Linux.conf.au 2015 Debrief"
date:   2015-02-01 10:00:00
categories: timvideos sprints lca2015 gsoc
---

<style>

div.image {
  width: 25%;
  margin: 20px;
}

.image img {
  width: 100%;
  text-align: center;
}

.image p {
  padding: 5px;
  width: 100%;
  font-size: small;
  font-style: italic;
  text-align: center;
}

div.image-right {
  float: right;
}

div.image-left {
  float: left;
}

table.image img {
  width: 100%;
  min-height: 150px;
}

iframe.video {
  float: right;
  width: auto;
  margin: 20px;
}

div.image-center {
  width: 95%;
}

hr {
  clear: both;
}

</style>

<div class="image image-right">
<img title="Carl enjoying a drink after a long flight" src="/img/sprints-and-lca2015/1-carldrink.jpg">
<p>Carl enjoying a drink after a long flight</p>
</div>

When he boarded the plane in San Francisco, Google Summer of Code mentor Carl
knew he was going to miss one of the world's most well-documented annual
events. It was New Year's Eve and thanks to the international dateline, Carl
would arrive in Auckland, New Zealand (aka Middle Earth) on the morning of
January 2. While he was sacrificing his chance to capture the fireworks, the
work that Carl and a team of GSoC mentors and students were converging to
tackle would empower others to record something more enduring than those sky
sparkles.

When he arrived in the "land of the long white cloud" Carl met with
[Rohit](http://dreamsxtrinsic.blogspot.com.au/) and
[Ajit](http://ajitmathewgsoc.blogspot.com.au/), two GSoC 2014 students who had
travelled even further but in the opposite direction, leaving from India. Rohit
was venturing overseas for the first time.  In the following days, the group
was joined by GSoC 2015 student [Aayush](http://hyades.github.io), also from
India, and GSoC mentor [Tim](http://blog.mithis.net), from Australia.

<div class="image image-left">
<img title="Rohit (sitting) and Ajit (standing) unpacking hardware at Catalyst IT" src="/img/sprints-and-lca2015/2-rohit-ajit-unpack.jpg">
<p>Rohit (sitting) and Ajit (standing) unpacking hardware at Catalyst IT</p>
</div>

The GSoC participants and many others involved in the
[TimVideos.us](http://code.timvideos.us/) project were converging for a
week-long coding sprint ahead of the [Linux.conf.au](http://linux.conf.au/) conference, where they would
put their work to the test with video capture and streaming.

[TimVideos.us](http://code.timvideos.us/) is a group of projects that create a
system for doing both recording and live streaming for presentations at events
such as conferences, meetups, and user groups. The projects include both open
source software and open source hardware development. The aim is to reduce the
costs and expertise required to produce live streaming events to near zero. One
of the major goals for the project over the past two years has been to replace
an old standard definition system based on end-of-life hardware with a new,
high definition, completely FOSS solution.

Thanks to the massive effort of GSoC students in 2013 and 2014, and with help
from many other volunteers, the projects were getting close to serving their
intended purpose. The sprinters hoped to get the tools to the stage where they
could start experimenting with them during the conference. 

GSoC students had been fundamental in getting the systems ready, so it made
sense to give GSoC students the opportunity to use their code and hardware in
the high-stress environment of a conference. There's nothing like a trial by
fire.

<table class="image">
 <tr>
   <td>
    <img src="/img/sprints-and-lca2015/3-people-hacking.jpg" title="People working hard on code">
    <p>People working hard on code.</p>
   </td><td>
    <img src="/img/sprints-and-lca2015/5-ajit-understand.jpg" title="Ajit (foreground) trying to understand his own code, Dave (background) updating his music play track.">
    <p>Ajit (foreground) trying to understand his own code, Dave (background) updating his music play track.</p>
   </td><td>
    <img src="/img/sprints-and-lca2015/4-tim-aayush-hard-problem.jpg" title="Tim (foreground) and Aayush (background) working on a hard problem">
    <p>Tim (foreground) and Aayush (background) working on a hard problem</p>
   </td>
 </tr>
</table>

<iframe class="video" width="560" height="315" src="https://www.youtube.com/embed/O4D-6IPX308" frameborder="0" allowfullscreen></iframe>

The sprint was extremely productive, the group sent 54 pull requests and closed
27 issues. The sprints focused on two of the TimVideos projects:

 * [gst-switch](http://github.com/timvideos/gst-switch), a software video mixer
   based around gstreamer.

 * [HDMI2USB](http://hdmi2usb.tv), open hardware and firmware for capturing
   HDMI and DVI streams from a projector. [Joel](http://jms.id.au/), Ajit's
   mentor in 2014, gave a talk about the HDMI2USB project.


After the sprints the conference began, and the real challenges with it. Given
the importance of ensuring video was actually captured, the team set up the
old, proven pipeline.

[Linux.conf.au](http://linux.conf.au) is the biggest FOSS conference in the
Oceania region and attracts people from around the world, including luminaries
such as Linus Torvalds. The conference is in a different city each year,
generally in Australia but occasionally in New Zealand as in 2015. While
travelling from Australia to New Zealand is relatively easy for Australians,
the extra cost of a passport can mean some aren't able to attend, so live
streaming was provided to allow those people to view the proceedings.

<div class="image image-left">
<img title="Ajit (foreground) manning a video capture desk at Linux.conf.au" src="/img/sprints-and-lca2015/6-ajit-video-desk.jpg">
<p>Ajit (foreground) manning a video capture desk at [Linux.conf.au](http://linux.conf.au/)</p>
</div>

<div class="image image-right">
<img title="Our three GSoC students enjoying the conference dinner (from left, Rohit, Ajit, Aayush)" src="/img/sprints-and-lca2015/7-gsoc-students-enjoy-dinner.jpg">
<p>Our three GSoC students enjoying the conference dinner (from left, Rohit, Ajit, Aayush)</p>
</div>

Many of the conference talks are important to the FOSS community globally, so
the presentations are all recorded and shared freely under a CC-BY-SA license.
Reliable, high quality recordings are important to facilitate this sharing.
They are all freely available on the 
[Linux.conf.au 2015 YouTube channel](https://www.youtube.com/user/linuxconfau2015)
or via the 
[Linux.org.au mirror](http://mirror.linux.org.au/linux.conf.au/2015).

<hr>

A number of organisations came together to facilitate this work. There was
funding from Linux.conf.au, Google Conference grants for the GSoC students, a
venue provided by Catalyst IT and a donation from Tim. These folks deserve a
huge thank you for making such awesomeness possible.

<div class="image image-center">
<img title="The complete TimVideos team (from left, back - Aayush, Tim, Joel, Leon, Rohit, Michael, front - Ryan, Ajit, Carl)" src="/img/sprints-and-lca2015/8-timvideos-sprint-team.jpg">
<p>The complete TimVideos team (from left, back - Aayush, Tim, Joel, Leon, Rohit, Michael, front - Ryan, Ajit, Carl)</p>
</div>

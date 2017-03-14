---
layout: base
title: HDMI2USB - Open hardware for conference, meeting and user group HD recording!
published: true
tags: home
---

{::nomarkdown}

<div class="padding">
  <div class="col-sm-12">
    <div class="panel panel-default">
        <span class="edit-link pull-right">
          <a href="{% edit_url %}{{ page.path }}" target="_blank">
            <i class="fa fa-edit"></i>
          </a>
        </span>
      <div class="panel-body">
{:/nomarkdown}


# HDMI2USB: Open video capture hardware + firmware

![HDMI2USB Diagram](../img/hdmi2usb.png "HDMI2USB Diagram"){: .image-right}

**The HDMI2USB project develops affordable hardware options to record and stream HD videos (from HDMI & DisplayPort sources) for conferences, meetings and user groups.**

We are currently developing our own hardware (the [[Numato Opsis]]), and also provide firmware for various prototyping boards.

HDMI2USB started in 2013, and is an active ongoing project in its third iteration of hardware prototyping.  Today you can download early working firmware and have real capture happen, but we actively wish to improve and are seeking assistance:

  * **For video recording individuals+teams:** Be an early adopter; get a board, start using it, report back to us with feedback
  * **For software/FPGA developers:** Get involved in contributing code both to the capture software + FPGA stack

Our aim is this becomes the defacto, incredibly affordable and easy to use video recording hardware for conferences, meetings and user groups worldwide.

**Find out more about HDMI2USB and why we're doing this in [ABOUT + FAQ](../faq)**

{::nomarkdown}
      </div>
    </div>
  </div>
</div>

<div class="padding">
  <div class="col-sm-12">
    <div class="panel panel-default">
      <div class="panel-body">

        <div class="twitter-widget col-md-6">
          <h1>
            <a href="https://twitter.com/TimVideosUs">Recent Tweets</a>
            <div style="float:right; font-size: small;"><a class="twitter-follow-button" href="https://twitter.com/TimVideosUs" style="float:right;">Follow @TimVideosUs</a></div>
          </h1>
          <a class="twitter-timeline" href="https://twitter.com/TimVideosUs" data-widget-id="630373467892789250" width="100%" data-chrome="noheader nofooter noborders transparent">Tweets by @TimVideosUs</a>
        </div>

        <div class="col-md-6">
          <h1><a href="/news/">Recent News</a></h1>
          <table>
            {% for post in site.posts limit:15 %}
            <tr>
              <td class="post-date" style="text-align: right;">{{ post.date | date: "%b %-d, %Y" }}</span></td>
              <td class="post-link"><a class="post-link" href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a></td>
            </tr>
            {% endfor %}
          </table>
        </div>

     </div>
    </div>
  </div>
</div>

<div class="padding">
  <div class="col-sm-12">
    <div class="panel panel-default">
      <div class="panel-body">

<br />
  <div class="imageslick">


        <div> 
            <a class="fancybox" rel="group" href="/img/gallery/atlys.jpg">
               {% thumbnail img/gallery/atlys.jpg 200x150 %}
            </a>
        </div>

        <div>
            <a class="fancybox" rel="group" href="/img/gallery/img7.jpg">
               {% thumbnail img/gallery/img7.jpg 200x150 %}
            </a>
        </div>

        <div>
            <a class="fancybox" rel="group" href="/img/gallery/HDMI2USB.jpg">
               {% thumbnail img/gallery/HDMI2USB.jpg 200x150 %}
            </a>
        </div>

        <div>
            <a class="fancybox" rel="group" href="/img/gallery/sprint-team-lca2015.jpg">
               {% thumbnail img/gallery/sprint-team-lca2015.jpg 200x150 %}
            </a>
        </div>

        <div>
            <a class="fancybox" rel="group" href="/img/gallery/oss-hardware.png">
               {% thumbnail img/gallery/oss-hardware.png 200x150 %}
            </a>
        </div>

        <div>
            <a class="fancybox" rel="group" href="/img/gallery/img4.jpg">
               {% thumbnail img/gallery/img4.jpg 200x150 %}
            </a>
        </div>

        <div>
            <a class="fancybox" rel="group" href="/img/gallery/img0.jpg">
               {% thumbnail img/gallery/img0.jpg 200x150 %}
            </a>
        </div>

        <div>
            <a class="fancybox" rel="group" href="/img/gallery/img5.jpg">
               {% thumbnail img/gallery/img5.jpg 200x150 %}
            </a>
        </div>

        <div>
            <a class="fancybox" rel="group" href="/img/gallery/img3.jpg">
               {% thumbnail img/gallery/img3.jpg 200x150 %}
            </a>
        </div>

        <div>
            <a class="fancybox" rel="group" href="/img/gallery/img1.jpg">
               {% thumbnail img/gallery/img1.jpg 200x150 %}
            </a>
        </div>

        <div>
            <a class="fancybox" rel="group" href="/img/gallery/img8.jpg">
               {% thumbnail img/gallery/img8.jpg 200x150 %}
            </a>
        </div>

        <div>
            <a class="fancybox" rel="group" href="/img/gallery/atlys.jpg">
               {% thumbnail img/gallery/atlys.jpg 200x150 %}
            </a>
        </div>

        <div>
            <a class="fancybox" rel="group" href="/img/gallery/lca2017-behind-scences-1.jpg">
               {% thumbnail img/gallery/lca2017-behind-scences-1.jpg 200x150 %}
            </a>
        </div>

        <div>
            <a class="fancybox" rel="group" href="/img/gallery/lca2017-behind-scences-2.jpg">
               {% thumbnail img/gallery/lca2017-behind-scences-2.jpg 200x150 %}
            </a>
        </div>

        <div>
            <a class="fancybox" rel="group" href="/img/gallery/timvideos.jpg">
               {% thumbnail img/gallery/timvideos.jpg 200x150 %}
            </a>
        </div>

  </div>
      </div>
    </div>
  </div>
</div>

<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>

{:/nomarkdown}

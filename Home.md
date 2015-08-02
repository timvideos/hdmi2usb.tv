---
layout: base
title: HDMI2USB - Open hardware for conference, meeting and user group HD recording!
published: true
tags: home
---

{::nomarkdown}
<div class="padding">
  <div class="col-sm-12">
    <div class="panel-default">
      <div class="top-message">
   The <a href="../numato-opsis">Numato Opsis board</a>, the first open hardware for the HDMI2USB will soon be available.<br>
    <a href="http://bit.ly/get-opsis" class="btn btn-danger">Sign up to be notified when the Numato Opsis can be purchased!</a>
      </div>
    </div>
  </div>
</div>

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

![HDMI2USB Diagram](../img/hdmi2usb-diagram.png "HDMI2USB Diagram"){: .image-right}

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
             <a class="twitter-timeline pull-right" href="https://twitter.com/TimVideosUs" data-widget-id="627672542765977600">Tweets by @TimVideosUs</a>
             <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
           </div>

            <div class="col-md-6">
                <h1>Recent News</h1>

                {% for post in site.posts %}
                  <li>
                    <span class="post-date">{{ post.date | date: "%b %-d, %Y" }}</span>
                    <a class="post-link" href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a>
                  </li>
                {% endfor %}
            </div>

     </div>
    </div>
  </div>
</div>

<div class="padding">
  <div class="col-sm-12">
    <div class="panel panel-default">
        <span class="edit-link pull-right">
          <a href="{% edit_url %}{{ page.path }}" target="_blank">
            <i class="fa fa-edit"></i>
          </a>
        </span>
      <div class="panel-body">

# TODO: Put some type of image carousal here.

      </div>
    </div>
  </div>
</div>

{:/nomarkdown}

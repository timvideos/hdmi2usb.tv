---
layout: embed
title: News
tagline: Developers news
tags: news
---
<div class="padding">
  <div class="col-sm-12">
    <div class="panel panel-default">
        <span class="edit-link pull-right">
          <a href="{% edit_url %}{{ page.path }}" target="_blank">
            <i class="fa fa-edit"></i>
          </a>
        </span>
      <div class="panel-body">
        <h1>Recent HDMI2USB News</h1>

        <table>
        {% for post in site.posts limit:10 %}
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

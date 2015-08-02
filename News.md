---
layout: base
title: News
tagline: Developers news
tags: news
---

    {% for post in site.posts %}
<div class="padding">
  <div class="col-sm-12">
    <div class="panel panel-default">
        <span class="edit-link pull-right">
          <a href="{% edit_url %}{{ page.path }}" target="_blank">
            <i class="fa fa-edit"></i>
          </a>
        </span>
      <div class="panel-body">
        <h1>{{ post.title }}</h1>
        <span class="post-date">{{ post.date | date: "%b %-d, %Y" }}</span>
      </div>
    </div>
  </div>
</div>

    {% endfor %}

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
        <a href="{{ post.url }}"><h1>{{ post.title }}</h1></a>
        <h4 class="post-date">{{ post.date | date: "%b %-d, %Y" }}</h4>
        <p>{{ post.content }}</p>
      </div>
    </div>
  </div>
</div>

    {% endfor %}

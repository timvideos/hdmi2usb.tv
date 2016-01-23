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
        <p class="meta description">
          {{ post.date | date: "%b %-d, %Y" }}
          {% if post.author %} • {{ post.author }}{% endif %}
          {% if post.meta %} • {{ post.meta }}{% endif %}
        </p>
        <p class="article">
          {{ post.content }}
        </p>
      </div>
    </div>
  </div>
</div>
    {% endfor %}

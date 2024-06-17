---
layout: default
title: "blog"
---

# Blog Posts

<ul class="blog-posts">
{% for post in site.categories.blog %}
  {% unless post.hide %}
   <li> <a href="{{ post.url }}">{{ post.title }}</a> </li>
  {% endunless %}
{% endfor %}
</ul>

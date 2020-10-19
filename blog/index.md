---
layout: default
title: "blog"
---

# Blog Posts

<ul class="blog-posts">
{% for post in site.categories.blog %}
   <li> <a href="{{ post.url }}">{{ post.title }}</a> </li>
{% endfor %}
</ul>

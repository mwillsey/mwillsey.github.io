---
layout: default
title: "Max Willsey: Blog"
---

# Blog Posts

<ul class="blog-posts">
{% for post in site.categories.blog %}
   <li> <a href="{{ post.url }}">{{ post.title }}</a> </li>
{% endfor %}
</ul>

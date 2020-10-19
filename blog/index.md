---
layout: default
title: "Max Willsey: Blog"
---

# Papers

<ul class="blog-posts">
{% for post in site.categories.blog %}
   <li> <a href="{{ post.url }}">{{ post.title }}</a> </li>
{% endfor %}
</ul>

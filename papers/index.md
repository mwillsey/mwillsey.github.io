---
layout: default
title: "Max Willsey: Papers"
---

# Papers

<ul class="papers">
{% for paper in site.categories.papers %}
  {% include paper.html title=1 paper=paper elem="li" %}
{% endfor %}
</ul>

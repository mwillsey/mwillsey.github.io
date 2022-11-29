---
layout: default
title: "papers"
---

# Papers

[BiBTeX](./mwillsey.bib)

<ul class="papers">
{% for paper in site.categories.papers %}
  {% unless paper.hide %}
    {% include paper.html title=1 paper=paper elem="li" %}
  {% endunless %}
{% endfor %}
</ul>

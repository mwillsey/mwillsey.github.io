---
layout: default
---



<div class="contact right" markdown="1">
<img id="max-photo" style="max-height: 300px" src="/assets/max.jpg">
- Assistant Professor
- [EECS at UC Berkeley](https://eecs.berkeley.edu/)
- Soda Hall, 725
- [mwillsey@eecs.berkeley.edu](mailto:mwillsey@eecs.berkeley.edu)
</div>

<section markdown="1" id="intro">

I'm an Assistant Professor in
[EECS at UC Berkeley](https://eecs.berkeley.edu/).
My research aims to make program optimization
 more robust, powerful, and accessible.
Along the way, I use techniques from programming languages,
 databases, and systems.

Check out these pages for info on my current projects:

- The [egg](https://egraphs-good.github.io) project uses e-graphs to 
  build new kinds of program optimizers.
  - See also the Github pages for 
    [egg](https://github.com/egraphs-good/egg)
    and [egglog](https://github.com/egraphs-good/egglog).
- The [EGRAPHS Community](https://egraphs.org/), 
  a community for e-graphs researchers consisting of a forum, 
  a workshop, and a monthly seminary series.


</section>

<section markdown="1" id="news">

## News

- <time>2024.06</time>
  The third EGRAPHS workshop, [EGRAPHS 2024](https://pldi24.sigplan.org/home/egraphs-2024),
  will take place at [PLDI 2024](https://pldi24.sigplan.org/) in Orlando!
  Submissions are due April 5.
- <time>2024.01</time>
  I've started as an Assistant Professor position at [EECS at UC Berkeley](https://eecs.berkeley.edu/)!
- <time>2023.04</time>
  Our [work connecting egg to Datalog](/papers/egglog) 
  will appear at [PLDI 2023](https://pldi23.sigplan.org/).
- <time>2023.01</time>
  Our [paper](/papers/freejoin) unifying traditional hash joins 
  with worst-case optimal joins will appear at [SIGMOD '23](https://2023.sigmod.org/).
- <time>2023.01</time>
  Our [POPL 2023 paper](/papers/babble) shows how to use e-graph anti-unification to
  learn library functions from a body of code.
- <time>2021.10</time>
  Our paper on [inferring rewrites using equality saturation](/papers/ruler)
  was a _Distinguished Paper_ at 
  [OOPSLA 2021](https://2021.splashcon.org/details/splash-2021-oopsla/23/Rewrite-Rule-Inference-Using-Equality-Saturation).
- <time>2021.09</time>
  Our paper [connecting e-matching to relational databases](/papers/relational-ematching)
  was (conditionally) accepted to [POPL 2022](https://popl22.sigplan.org/).
- <time>2020.10</time>
  Our [paper](/papers/egg) on `egg` will appear at [POPL 2021](https://popl21.sigplan.org/)
  as a _Distinguished Paper_!  \\
  Check out the
  [5 min](https://youtu.be/ap29SzDAzP0) or
  [30 min](https://youtu.be/LKELTEOFY-s) video talks.
{: .time-list}

</section>

<section id="teaching">

<h2>Teaching</h2>

<ul class="time-list">
{% for course in site.data.teaching %}
  <li> 
    <time>{{ course.when }}</time>
    <a href="{{ course.url }}">{{ course.number }}</a>: {{ course.title }} 
    {% if course.note %} <br> {{ course.note }} {% endif %}
  </li>
{% endfor %}
</ul>

</section>

<section id="papers">

<h2>Papers</h2>

<ul class="papers">
{% for paper in site.categories.papers %}
  {% unless paper.hide %}
    {% include paper.html title=1 paper=paper elem="li" %}
  {% endunless %}
{% endfor %}
</ul>

</section>

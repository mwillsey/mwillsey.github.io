---
layout: default
---


<section markdown="1" id="intro">

<!-- <div markdown="1" "id="contact"> -->
<!-- - Assistant Professor, [EECS at UC Berkeley](https://eecs.berkeley.edu/) -->
<!-- - Soda Hall, 725 -->
<!-- - [mwillsey@eecs.berkeley.edu](mailto:mwillsey@eecs.berkeley.edu) -->
<!-- </div> -->

<div class="contact right" markdown="1">
<img id="max-photo" style="max-height: 300px" src="/assets/max.jpg">
- Assistant Professor
- [EECS at UC Berkeley](https://eecs.berkeley.edu/)
- Soda Hall, 725
- [mwillsey@eecs.berkeley.edu](mailto:mwillsey@eecs.berkeley.edu)
</div>

My current focus is [`egg`],
a toolkit for program optimization and synthesis
powered by e-graphs and equality saturation.
We've applied it to some really fun domains like
  [improving floating point accuracy](https://herbie.uwplse.org),
  [shrinking 3D models](/papers/pldi-szalinski),
  and
  [linear algebra optimization](/papers/tensat).

During my PhD and postdoc at the University of Washington,
I worked mostly in programming languages ([PLSE] group).
I also enjoyed collaborating with friends in
molecular systems ([MISL]),
where I [worked on][Puddle] programming models for microfluidic chips.

[allen]: https://www.cs.washington.edu
[plse]:  http://uwplse.org
[misl]:  http://misl.cs.washington.edu
[puddle]: http://misl.cs.washington.edu/projects/fluidics.html
[`egg`]: https://egraphs-good.github.io
[sampl]: https://sampl.cs.washington.edu/


</section>

<section markdown="1" id="news">

## News

- <time>2023.06</time>
  I've accepted an Assistant Professor position at [EECS at UC Berkeley](https://eecs.berkeley.edu/).
  I'll start in 2024.
- <time>2023.06</time>
  The second EGRAPHS workshop, [EGRAPHS 2023](https://pldi23.sigplan.org/home/egraphs-2023),
  will take place at [PLDI 2023](https://pldi23.sigplan.org/) in Orlando!
- <time>2023.04</time>
  Our [work connecting egg to Datalog](/papers/egglog) 
  will appear at [PLDI 2023](https://pldi23.sigplan.org/).
- <time>2023.01</time>
  Our [paper](/papers/freejoin) unifying traditional hash joins 
  with worst-case optimal joins will appear at [SIGMOD '23](https://2023.sigmod.org/).
- <time>2023.01</time>
  Our [POPL 2023 paper](/papers/babble) shows how to use e-graph anti-unification to
  learn library functions from a body of code.
- <time>2022.01</time>
  The inaugural [EGRAPHS workshop](//egraphs-good.github.io/workshop/2022.html)
  at [PLDI 2022](https://pldi22.sigplan.org/home/egraphs-2022) was a big hit!
- <time>2021.10</time>
  Our paper on [inferring rewrites using equality saturation](/papers/ruler)
  was a _Distinguished Paper_ at 
  [OOPSLA 2021](https://2021.splashcon.org/details/splash-2021-oopsla/23/Rewrite-Rule-Inference-Using-Equality-Saturation).
- <time>2021.09</time>
  Our paper [connecting e-matching to relational databases](/papers/relational-ematching)
  was (conditionally) accepted to [POPL 2022](https://popl22.sigplan.org/).
- <time>2021.05</time>
  I defended my PhD! You can find my thesis [here](//mwillsey.com/thesis/thesis.pdf).
  I'll be staying on as a postdoc to work on [`egg`] and related projects.
- <time>2021.04</time>
  I wrote a [post](https://blog.sigplan.org/2021/04/06/equality-saturation-with-egg/)
  on the SIGPLAN blog about `egg`.
- <time>2021.01</time>
  Our [paper](/papers/tensat) applying `egg` to deep learning graph rewriting
  will appear at [MLSys 2021](https://mlsys.org/Conferences/2021).
- <time>2020.10</time>
  Our [paper](/papers/egg) on `egg` will appear at [POPL 2021](https://popl21.sigplan.org/)
  as a _Distinguished Paper_!  \\
  Check out the
  [5 min](https://youtu.be/ap29SzDAzP0) or
  [30 min](https://youtu.be/LKELTEOFY-s) video talks.

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

---
layout: default
---

<section markdown="1" id="intro">

<img id="max-photo" style="max-height: 300px" class="right" src="/assets/max.jpg">

I'm a post-doctoral researcher in computer science at the University of Washington.

<b> I am seeking tenure-track faculty positions in the 2022-2023 cycle. </b>
Please see my application materials <a href="https://www.mwillsey.com/faculty-application/">here</a>.

My current focus is [`egg`],
a toolkit for program optimization and synthesis
powered by e-graphs and equality saturation.
We've applied it to some really fun domains like
  [improving floating point accuracy](https://herbie.uwplse.org),
  [shrinking 3D models](/papers/pldi-szalinski),
  and
  [linear algebra optimization](/papers/tensat).

During my PhD (also at UW),
I worked mostly in programming languages ([PLSE] group),
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

- 2022 Dec
  - The second edition of the EGRAPHS workshop, [EGRAPHS 2023](https://pldi23.sigplan.org/home/egraphs-2023),
    will take place at [PLDI 2023](https://pldi23.sigplan.org/) in Orlando!
- 2022 Jun
  - The inaugural [EGRAPHS workshop](//egraphs-good.github.io/workshop/2022.html)
    at [PLDI 2022](https://pldi22.sigplan.org/home/egraphs-2022) was a big hit!
- 2021 Oct
  - Our paper on [inferring rewrites using equality saturation](/papers/ruler)
    was a _Distinguished Paper_ at 
    [OOPSLA 2021](https://2021.splashcon.org/details/splash-2021-oopsla/23/Rewrite-Rule-Inference-Using-Equality-Saturation).
- 2021 Sep
  - Our paper [connecting e-matching to relational databases](/papers/relational-ematching)
    was (conditionally) accepted to [POPL 2022](https://popl22.sigplan.org/).
- 2021 May
  - I defended my PhD! You can find my thesis [here](//mwillsey.com/thesis/thesis.pdf).
    I'll be staying on as a postdoc to work on [`egg`] and related projects.
- 2021 Apr
  - I wrote a [post](https://blog.sigplan.org/2021/04/06/equality-saturation-with-egg/)
    on the SIGPLAN blog about `egg`.
- 2021 Jan
  - Our [paper](/papers/tensat) applying `egg` to deep learning graph rewriting
    will appear at [MLSys 2021](https://mlsys.org/Conferences/2021).
- 2020 Oct
  - Our [paper](/papers/egg) on `egg` will appear at [POPL 2021](https://popl21.sigplan.org/)
    as a _Distinguished Paper_!
	\\
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

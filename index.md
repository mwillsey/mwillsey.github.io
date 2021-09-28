---
layout: default
---

<section markdown="1" id="intro">

<img id="max-photo" style="max-height: 300px" class="right" src="/assets/max.jpg">

I'm a post-doctoral researcher in computer science at the University of Washington.

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
but I enjoyed collaborating with friends in
molecular systems ([MISL]),
and machine learning systems ([SAMPL]).
I also worked on programming models for microfluidic chips.
The [Puddle][] framework aims to provide a safer, easier
way to program these devices, which promise to make labs-on-a-chip (LoCs)
scalable and affordable.

[allen]: https://www.cs.washington.edu
[plse]:  http://uwplse.org
[misl]:  http://misl.cs.washington.edu
[puddle]: http://misl.cs.washington.edu/projects/fluidics.html
[`egg`]: https://egraphs-good.github.io
[sampl]: https://sampl.cs.washington.edu/


</section>

<section markdown="1" id="news">

## News

- 2021 Sep
  - Our paper [connecting e-matching to relational databases](/papers/relational-ematching)
    was (conditionally) accepted to [POPL 2022](https://popl22.sigplan.org/).
- 2021 Aug
  - Our paper on [inferring rewrites using equality saturation](/papers/ruler)
    will appear at [OOPSLA 2021](https://2021.splashcon.org/track/splash-2021-oopsla).
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
    as a "Distinguished Paper"!
	\\
    Check out the
	[5 min](https://youtu.be/ap29SzDAzP0) or
    [30 min](https://youtu.be/LKELTEOFY-s) video talks.

- 2020 Jun
  - I've been working on this e-graph library called [`egg`] for a while.
    I and my fellow egg-heads put out a [paper](/papers/egg)
    describing the system and some of its novel ideas.
  - I'm doing a summer internship at [OctoML](https://octoml.ai/) using [`egg`]
    to optimize parts of the TVM compiler stack.

- 2020 Mar
  - Some friends and I wrote a fun [paper](/papers/pldi-szalinski) about
    synthesizing 3D CAD models. It will appear (virtually!) at PLDI 2020.

</section>

<section id="papers">

<h2>Papers</h2>

<ul class="papers">
{% for paper in site.categories.papers %}
  {% include paper.html title=1 paper=paper elem="li" %}
{% endfor %}
</ul>

</section>

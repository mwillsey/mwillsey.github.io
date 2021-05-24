---
layout: default
---

<section markdown="1" id="intro">

<img id="max-photo" style="max-height: 300px" class="right" src="/assets/max.jpg">

I'm a post-doctoral researcher at the University of Washington, where
 I also earned my PhD.
I work mostly in programming languages ([PLSE] group),
  but I enjoy collaborating with friends in
  molecular systems ([MISL]),
  and machine learning systems ([SAMPL]).

I'm currently working on [`egg`], a toolkit for program optimization and synthesis
powered by e-graphs and equality saturation.
We've applied it to some really fun domains like
  [improving floating point accuracy](https://herbie.uwplse.org),
  [shrinking 3D models](/papers/pldi-szalinski),
  and
  [linear algebra optimization](https://arxiv.org/abs/2002.07951).

Earlier in my PhD, I also worked on programming models for microfluidic chips.
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

- 2021 May
  - I defended my PhD! You can find my thesis [here](//mwillsey.com/thesis/thesis.pdf).
    I'll be staying on as a postdoc to work on [`egg`] and related projects.
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

- 2019 Dec
  - I passed my generals exam, so I’m now a PhD candidate!

- 2019 Oct
  - I’ll be speaking at a
    [special session](https://iccad.com/event_details?id=283-9-B)
    on the future of microfludics at
    [ICCAD 2019](https://www.iccad.com).
    You can check out the paper
    [here](/papers/iccad-puddle).

- 2019 Apr
  - I’m very excited to be speaking at the
    [Biochips Summer School](http://biochips-summerschool.strikingly.com/)
    at CU Boulder. I’ll be joining a bunch of other exciting speakers
    to talk about building, programming, and using digital
    microfluidic devices. Check it out!
  - The Allen School put together a nice
    [news piece](https://news.cs.washington.edu/2019/04/15/uw-and-microsoft-researchers-demonstrate-digital-microfluidics-automation-for-scaling-dna-data-storage/)
    on some of our recent work, including our ASPLOS and Nature
    Communications papers.

- 2019 Mar
  - I’ll be giving two talks at
    [ASPLOS 2019](https://www.asplos-conference.org/)!
    In the technical track, I’ll talk about
    [Puddle](/papers/asplos-puddle/),
    our new microfluidic programming system. Later in the Wild and
    Crazy Ideas track, I’ll start a discussion about
    [cloud scale microfluidics](/papers/waci-megamicrofluidics/).

- 2019 Jan
  - I’m super excited to be co-teaching CSE 351 this quarter with
    [Luis](https://homes.cs.washington.edu/~luisceze/)!
    This course covers the hardware-software interface including
    C, assembly, virtual memory, caches, and so on.
  - Some folks in the [MISL] group put together a
    [paper](http://127.0.0.1:5000/papers/pieee-hybrid-molecular/)
    about our vision of a hybrid molecular-electronic computing
    platform. It’s in the January 2019 issue of the Proceedings of the
    IEEE.

</section>

<section id="papers">

<h2>Papers</h2>

<ul class="papers">
{% for paper in site.categories.papers %}
  {% include paper.html title=1 paper=paper elem="li" %}
{% endfor %}
</ul>

</section>

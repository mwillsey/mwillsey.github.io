---
layout: paper
title: "Relational E-Matching"
shorttitle: relational e-matching
class: star

type: "publication"
authors:
  - yihong
  - remy
  - mwillsey
  - ztatlock
venue: "POPL 2022"
venue_url: "https://popl22.sigplan.org/details/POPL-2022-popl-research-papers/35/Relational-E-Matching"

links:
  arXiv: "https://arxiv.org/abs/2108.02290"
  poster: "https://effect.systems/doc/relational_poster.pdf"

bib: |
  @misc{zhang2021relational,
    title={Relational E-Matching}, 
    author={
      Yihong Zhang and 
      Yisu Remy Wang and 
      Max Willsey and 
      Zachary Tatlock
    },
    year={2021},
    eprint={2108.02290},
    archivePrefix={arXiv},
    primaryClass={cs.DB},
    url={https://arxiv.org/abs/2108.02290}
  }
---

## Abstract

We present a new approach to e-matching based on relational join; 
in particular, we apply recent database query execution techniques to guarantee worst-case optimal run time.
Compared to the conventional backtracking approach that always searches the e-graph "top down", 
our new relational e-matching approach can better exploit pattern structure 
by searching the e-graph according to an optimized query plan. 
We also establish the first data complexity result for e-matching, 
bounding run time as a function of the e-graph size and output size.
We prototyped and evaluated our technique in the state-of-the-art 
<a href="//egraphs-good.github.io"><code>egg</code></a> e-graph framework. 
Compared to a conventional baseline, relational e-matching is simpler
to implement and orders of magnitude faster in practice. 

<figure class="fullwidth">
  <img src="/assets/relational-ematching-slide.png">
  <figcaption>
  By reducing e-matching queries conjunctive queries, 
  we achieve practical and theoretical speedup.
  This slide comes from Yihong's PLDI 2021 SRC poster that won 1st place.
  </figcaption>
</figure>

---
layout: paper
title: "Relational E-Matching"
shorttitle: relational e-matching

tag: conference

type: "publication"
authors:
  - yihong
  - remy
  - mwillsey
  - ztatlock
venue: "POPL 2022"
venue_url: "https://popl22.sigplan.org/details/POPL-2022-popl-research-papers/35/Relational-E-Matching"

links:
  ACM DL: "https://dl.acm.org/doi/10.1145/3498696"
  arXiv: "https://arxiv.org/abs/2108.02290"
  poster: "https://effect.systems/doc/relational_poster.pdf"

bib: |
  @article{relational-ematching,
    author = {
      Zhang, Yihong and 
      Wang, Yisu Remy and 
      Willsey, Max and 
      Tatlock, Zachary
    },
    title = {Relational E-Matching},
    year = {2022},
    issue_date = {January 2022},
    publisher = {Association for Computing Machinery},
    address = {New York, NY, USA},
    volume = {6},
    number = {POPL},
    url = {https://doi.org/10.1145/3498696},
    doi = {10.1145/3498696},
    abstract = {We present a new approach to e-matching based on relational join; in particular, we apply recent database query execution techniques to guarantee worst-case optimal run time. Compared to the conventional backtracking approach that always searches the e-graph "top down", our new relational e-matching approach can better exploit pattern structure by searching the e-graph according to an optimized query plan. We also establish the first data complexity result for e-matching, bounding run time as a function of the e-graph size and output size. We prototyped and evaluated our technique in the state-of-the-art egg e-graph framework. Compared to a conventional baseline, relational e-matching is simpler to implement and orders of magnitude faster in practice.},
    journal = {Proc. ACM Program. Lang.},
    month = {jan},
    articleno = {35},
    numpages = {22},
    keywords = {E-matching, Relational Join Algorithms}
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

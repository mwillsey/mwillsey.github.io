---
layout: paper
title: "Free Join: Unifying Worst-Case Optimal and Traditional Joins"
shorttitle: freejoin
class: star

type: "publication"
authors:
  - remy
  - mwillsey
  - suciu
venue: "SIGMOD Record 2024"
venue_url: "https://2023.sigmod.org/"
note: "[SIGMOD Record Research Highlight](https://sigmodrecord.org/2024/04/07/from-binary-join-to-free-join/) of our [Free Join paper](/papers/freejoin)"

links:
  ACM DL: "https://dl.acm.org/doi/10.1145/3665252.3665259"

tag: [journal, invited]

bib: |
  @article{10.1145/3665252.3665259,
  author = {Remy Wang, Yisu and Willsey, Max and Suciu, Dan},
  title = {From Binary Join to Free Join},
  year = {2024},
  issue_date = {March 2024},
  publisher = {Association for Computing Machinery},
  address = {New York, NY, USA},
  volume = {53},
  number = {1},
  issn = {0163-5808},
  url = {https://doi.org/10.1145/3665252.3665259},
  doi = {10.1145/3665252.3665259},
  abstract = {Over the last decade, worst-case optimal join (WCOJ) algorithms have emerged as a new paradigm for one of the most fundamental challenges in query processing: computing joins efficiently. Such an algorithm can be asymptotically faster than traditional binary joins, all the while remaining simple to understand and implement. However, they have been found to be less efficient than the old paradigm, traditional binary join plans, on the typical acyclic queries found in practice. In an effort to unify and generalize the two paradigms, we proposed a new framework, called Free Join, in our SIGMOD 2023 paper. Not only does Free Join unite the worlds of traditional and worst-case optimal join algorithms, it uncovers optimizations and evaluation strategies that outperform both.In this article, we approach Free Join from the traditional perspective of binary joins, and re-derive the more general framework via a series of gradual transformations. We hope this perspective from the past can help practitioners better understand the Free Join framework, and find ways to incorporate some of the ideas into their own systems.},
  journal = {SIGMOD Rec.},
  month = {may},
  pages = {25–31},
  numpages = {7}
  }
---

## Abstract

Over the last decade, worst-case optimal join (WCOJ) algorithms have emerged as
a new paradigm for one of the most fundamental challenges in query processing:
computing joins efficiently. Such an algorithm can be asymptotically faster than
traditional binary joins, all the while remaining simple to understand and
implement. However, they have been found to be less efficient than the old
paradigm, traditional binary join plans, on the typical acyclic queries found in
practice. Some database systems that support WCOJ use a hybrid approach: use
WCOJ to process the cyclic subparts of the query (if any), and rely on
traditional binary joins otherwise. In this paper we propose a new framework,
called Free Join, that unifies the two paradigms. We describe a new type of
plan, a new data structure (which unifies the hash tables and tries used by the
two paradigms), and a suite of optimization techniques. Our system, implemented
in Rust, matches or outperforms both traditional binary joins and Generic Join
on standard query benchmarks. 

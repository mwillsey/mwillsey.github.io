---
layout: paper
title: "Optimism in Equality Saturation"

type: "publication"
authors:
  - russel
  - alvin
  - mwillsey
venue: "PLDI 2026"
venue_url: "https://pldi26.sigplan.org/"

links:
  arXiv: "https://arxiv.org/abs/2511.20782"
  ACM DL: "https://dl.acm.org/doi/10.1145/3808302"

tag: conference

bib: |
  @article{optimism-eqsat,
    author = {Arbore, Russel and Cheung, Alvin and Willsey, Max},
    title = {Optimism in Equality Saturation},
    year = {2026},
    issue_date = {June 2026},
    publisher = {Association for Computing Machinery},
    address = {New York, NY, USA},
    volume = {10},
    number = {PLDI},
    url = {https://doi.org/10.1145/3808302},
    doi = {10.1145/3808302},
    journal = {Proc. ACM Program. Lang.},
    month = jun,
    articleno = {224},
    numpages = {24},
    keywords = {Abstract Interpretation, Equality Saturation, Static Single Assignment (SSA)}
  }
---

## Abstract

Equality saturation is a technique for program optimization based on
non-destructive rewriting and a form of program analysis called e-class analysis.
The current form of e-class analysis is pessimistic and therefore ineffective at
analyzing cyclic programs, such as those in SSA form. We propose an abstract
interpretation algorithm that can precisely analyze cycles during equality
saturation. This results in a unified algorithm for optimistic analysis and
non-destructive rewriting. We instantiate this approach on a prototype abstract
interpreter for SSA programs using a new semantics of SSA. Our prototype can
analyze simple example programs more precisely than clang and gcc.

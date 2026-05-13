---
layout: paper
title: "Finite Functional Programming"

type: "publication"
authors:
  - rntz
  - mwillsey
venue: "FLOPS 2026"
venue_url: "https://conf.researchr.org/home/flops-2026"

links:
  arXiv: "https://arxiv.org/abs/2604.26161"

tag: conference

bib: |
  @article{finite-functional,
    author = {Arntzenius, Michael and Willsey, Max},
    title = {Finite Functional Programming},
    year = {2026},
    journal = {arXiv preprint arXiv:2604.26161},
  }
---

## Abstract

We unify functional and logic programming by treating predicates as functions
equipped with their support: the set of inputs whose output is nonzero. Datalog,
for instance, is a language of finitely supported boolean functions. Finite
support allows representing functions as input-output tables. Generalizing from
boolean functions to other pointed sets neatly handles aggregation and weighted
logic programming. We refer to the combination of finitely supported functions,
represented as data, with higher order functions, represented as code, as finite
functional programming. We give a simple type system to check finite support,
using graded effects to check variable grounding and relevance types to model
pointed sets.

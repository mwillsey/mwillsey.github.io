---
layout: paper
title: "Design and Implementation of Concurrent C0"

authors: ["mwillsey", "rokhini", "fp"]
venue: "Fourth International Workshop on Linearity"
venue_url: "http://eptcs.web.cse.unsw.edu.au/content.cgi?LINEARITY2016"

links:
  arXiv: "https://arxiv.org/abs/1701.04929"
  benchmarks: "/assets/cc0-linear16-benchmarks.tgz"

doi: "10.4204/EPTCS.238.8"
bib: |
  @inproceedings{cc0-design,
    author    = {Max Willsey and
                Rokhini Prabhu and
                Frank Pfenning},
    title     = {Design and Implementation of Concurrent {C0}},
    booktitle = {Proceedings Fourth International Workshop on Linearity, {LINEARITY}
                2016, Porto, Portugal, 25 June 2016.},
    pages     = {73--82},
    year      = {2016},
    url       = {https://doi.org/10.4204/EPTCS.238.8},
    doi       = {10.4204/EPTCS.238.8},
  }
---


## Abstract

We describe Concurrent C0, a type-safe C-like language with contracts
and session-typed communication over channels. Concurrent C0 supports
an operation called forwarding which allows channels to be combined in
a well-defined way. The language’s type system enables elegant
expression of session types and message-passing concurrent
programs. We provide a Go-based implementation with language based
optimizations that outperforms traditional message passing techniques.

---
layout: paper
title: "Small Proofs from Congruence Closure"
shorttitle: egg proofs

type: "publication"
authors:
  - oflatt
  - samcoward
  - mwillsey
  - ztatlock
  - pavel
venue: "FMCAD 2022"
venue_url: "https://fmcad.org/FMCAD22/accepted/"

links:
  arXiv: "https://arxiv.org/abs/2209.03398"
  slides: "https://fmcad.org/FMCAD22/presentations/06%20-%20Proofs%201/01_flatt.pdf"

tag: conference

bib: |
  @inproceedings{flatt2022small,
    title={Small Proofs from Congruence Closure},
    author={Flatt, Oliver and Coward, Samuel and Willsey, Max and Tatlock, Zachary and Panchekha, Pavel},
    booktitle={Proceedings of the 22nd Conference On Formal Methods in Computer-Aided Design--FMCAD 2022},
    volume={3},
    pages={75},
    year={2022},
    organization={TU Wien Academic Press}
  }
---

## Abstract

Satisfiability Modulo Theory (SMT) solvers and equality saturation engines must
generate proof certificates from e-graph-based congruence closure procedures to
enable verification and conflict clause generation. Smaller proof certificates
speed up these activities. Though the problem of generating proofs of minimal
size is known to be NP-complete, existing proof minimization algorithms for
congruence closure generate unnecessarily large proofs and introduce asymptotic
overhead over the core congruence closure procedure. In this paper, we introduce
an O(n^5) time algorithm which generates optimal proofs under a new relaxed
"proof tree size" metric that directly bounds proof size. We then relax this
approach further to a practical O(n \log(n)) greedy algorithm which generates
small proofs with no asymptotic overhead. We implemented our techniques in the
egg equality saturation toolkit, yielding the first certifying equality
saturation engine. We show that our greedy approach in egg quickly generates
substantially smaller proofs than the state-of-the-art Z3 SMT solver on a corpus
of 3760 benchmarks. 

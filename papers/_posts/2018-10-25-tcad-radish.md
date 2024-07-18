---
layout: paper
title: "Iterative Search for Reconfigurable Accelerator Blocks with a Compiler in the Loop"

tag: journal

authors: ["mwillsey", "vlee", "alvin", "ras", "luis"]
venue: "IEEE TCAD"
venue_url: "https://ieeexplore.ieee.org/document/8509181"

doi: "10.1109/TCAD.2018.2878194"

links:
  pdf: /assets/2018-tcad-radish.pdf

bib: |
  @article{Willsey2018Iterative,
    author={
      Max Willsey and
      Vincent T. Lee and
      Alvin Cheung and
      Rastislav Bod{\'i}k and
      Luis Ceze
    },
    journal={IEEE Transactions on Computer-Aided Design of Integrated Circuits and Systems},
    title={Iterative Search for Reconfigurable Accelerator Blocks with a Compiler in the Loop},
    year={2018},
    volume={},
    number={},
    pages={1-1},
    abstract={
      Domain-specific reconfigurable accelerators (DSRAs) achieve high performance
      and energy efficiency by using specialized processing elements (PEs) instead
      of general-purpose alternatives. However, the process of designing, selecting,
      and refining the reconfigurable PEs that compose the accelerator fabric has
      remained a manual and difficult task. This paper presents Reconfigurable
      Accelerator Design using Iterative Search for Hardware (RADISH) which is a
      full-stack framework for automatically identifying and generating PEs from an
      application corpus. RADISH uses a genetic algorithm to iteratively search for
      and refine the proposed PEs with a compiler-in-the-loop to guide the search.
      We show that RADISH-generated PEs can generalize to both larger instances of
      the same application as well as other previously unseen applications within
      the same domain. We evaluate a CGRA architecture using our RADISH-generated
      PEs and show it achieves a geometric mean improvement of up to $2.14\times$
      and $2.4\times$ power and area respectively over an ALU-based CGRA designs. In
      terms of energy, our generated designs achieve a geometric mean improvement of
      $2.5\times$ but can achieve gains up to $28.9\times$.
    },
    keywords={Genetic algorithms;Tools;Hardware;Computer architecture;Python;Field programmable gate arrays;DSL},
    doi={10.1109/TCAD.2018.2878194},
    ISSN={0278-0070},
    month={10},
  }
---

## Abstract

Domain-specific reconfigurable accelerators (DSRAs) achieve high
performance and energy efficiency by using specialized processing
elements (PEs) instead of general-purpose alternatives. However, the
process of designing, selecting, and refining the reconfigurable PEs
that compose the accelerator fabric has remained a manual and
difficult task. This paper presents Reconfigurable Accelerator Design
using Iterative Search for Hardware (RADISH) which is a full-stack
framework for automatically identifying and generating PEs from an
application corpus. RADISH uses a genetic algorithm to iteratively
search for and refine the proposed PEs with a compiler-in-the-loop to
guide the search.  We show that RADISH-generated PEs can generalize to
both larger instances of the same application as well as other
previously unseen applications within the same domain. We evaluate a
CGRA architecture using our RADISH-generated PEs and show it achieves
a geometric mean improvement of up to 2.14x and 2.4x
power and area respectively over an ALU-based CGRA designs. In terms
of energy, our generated designs achieve a geometric mean improvement
of 2.5x but can achieve gains up to 28.9x.

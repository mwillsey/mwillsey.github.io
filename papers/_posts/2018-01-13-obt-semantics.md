---
layout: paper
hide: true
title: "Extensible Semantics for Fluidics"

tag: workshop

authors: ["mwillsey", "jroesch"]
venue: "OBT at POPL"
venue_url: "https://popl18.sigplan.org/track/OBT-2018"

links:
  pdf: "https://popl18.sigplan.org/details/OBT-2018/7/Extensible-Semantics-for-Fluidics"
---

## Abstract

Lab automation technology automatically manipulates chemical or
biological samples at smaller scales than ever before, saving time and
reagents. Scientists are now writing programs instead of informal,
textbook-style protocols.

These programs mix computation with fluidic manipulation,
introducing the difficulties of traditional programming plus liquid
handling problems and domain-specific complexities.
A successful programming solution must manage these complexities and
leverage scientists’ domain knowledge. Importantly, the system must be
accessible by users who are not programming language experts (or even
programmers!).

We believe the programming language community is well-suited to
address these challenges.  We picture a two-fold solution: a core
fluidic semantics to manage the complexities of liquid handling, and
an extensible layer that ensures programs respect user-provided
domain-specific properties. This talk will present how some of the
problems in this area line up with—and sometimes challenge—well
understood PL techniques.

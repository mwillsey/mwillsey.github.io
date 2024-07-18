---
layout: paper
title: "Puddle: A Dynamic, Error-Correcting, Full-Stack Microfluidics Platform"
authors: ["mwillsey", "ashsteph", "cnt", "pranav", "bichlien", "michalp", "cbetts", "sharon", "sarang", "karin", "luis"]

tag: conference

venue: "ASPLOS 2019"
venue_url: "https://asplos-conference.org/"
doi: "10.1145/3297858.3304027"

links:
  pdf: "/assets/2019-asplos-puddle.pdf"
  overview video: "https://www.youtube.com/watch?v=uwiINEcYXLQ"

bib: |
  @inproceedings{willsey2019puddle,
    title = {Puddle: A Dynamic, Error-Correcting, Full-Stack Microfluidics Platform},
    author = {
      Max Willsey and
      Ashley P. Stephenson and
      Chris Takahashi and
      Pranav Vaid and
      Bichlien H. Nguyen and
      Michal Piszczek and
      Christine Betts and
      Sharon Newman and
      Sarang Joshi and
      Karin Strauss and
      Luis Ceze
    },
    booktitle = {
      Proceedings of the Twenty-Third International Conference on
      Architectural Support for Programming Languages and Operating Systems
    },
    series = {ASPLOS '19},
    month = {04},
    year = {2019},
    location = {Providence, RI, USA},
    publisher = {ACM},
    address = {New York, NY, USA},
    doi = {10.1145/3297858.3304027},
  }
---

See also the [project page][fluidics] on the MISL group site.

[fluidics]: http://misl.cs.washington.edu/projects/fluidics.html

## Overview Video

<iframe width="560" height="315" src="https://www.youtube.com/embed/uwiINEcYXLQ" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Abstract

Microfluidic devices promise to automate wetlab procedures by
manipulating small chemical or biological samples. This technology
comes in many varieties, all of which aim to save time, labor, and
supplies by performing lab protocol steps typically done by a
technician. However, existing microfluidic platforms remain some
combination of inflexible, error-prone, prohibitively expensive, and
difficult to program.

We address these concerns with a full-stack digital microfluidic
automation platform. Our main contribution is a runtime system that
provides a high-level API for microfluidic manipulations. It manages
fluidic resources dynamically, allowing programmers to freely mix
regular computation with microfluidics, which results in more
expressive programs than previous work. It also provides real-time
error correction through a computer vision system, allowing robust
execution on cheaper microfluidic hardware. We implement our stack
on top of a low-cost droplet microfluidic device that we have
developed.

We evaluate our system with the fully-automated execution of
polymerase chain reaction (PCR) and a DNA sequencing preparation
protocol. These protocols demonstrate high-level programs that combine
computational and fluidic operations such as input/output of
reagents, heating of samples, and data analysis. We also evaluate the
impact of automatic error correction on our system’s reliability.

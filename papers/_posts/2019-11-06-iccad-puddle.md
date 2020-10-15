---
layout: paper
title: "Scaling Microfluidics to Complex, Dynamic Protocols"

type: "publication"
authors: ["mwillsey", "ashsteph", "cnt", "bichlien", "karin", "luis"]
venue: "ICCAD 2019"
venue_url: "https://iccad.com/event_details?id=283-9-B"
note: "Invited Paper"

links:
  pdf: "/assets/2019-iccad-puddle.pdf"

bib: |
  @inproceedings{willsey2019scaling,
    title = {Scaling Microfluidics to Complex, Dynamic Protocols},
    author = {
      Max Willsey and
      Ashley P. Stephenson and
      Chris Takahashi and
      Bichlien H. Nguyen and
      Sarang Joshi and
      Karin Strauss and
      Luis Ceze
    },
    booktitle = {
      Proceedings of the
      International Conference on Computer-Aided Design 2019
    },
    series = {ICCAD '19},
    month = {11},
    year = {2019},
    location = {Westminster, CO, USA},
    publisher = {IEEE},
  }
---

## Abstract

Microfluidic devices promise to automate wetlab procedures by
manipulating small chemical or biological samples. We are developing a
full-stack microfluidic automation platform that allows and allows
users to scale up the complexity of microfluidic programming,
encouraging them to mix fluidic manipulations with traditional
programming.

Puddle is a runtime system that provides a high-level API for
microfluidic manipulations. It manages fluidic resources dynamically,
allowing programmers to freely mix regular computation with
microfluidics, resulting in more expressive programs. It also provides
real-time error correction through a computer vision system, allowing
robust execution on cheaper digital microfluidic hardware.

We have been running Puddle on PurpleDrop, a new digital microfluidic
device that is affordable and has novel features such as fully
automated input/output of fluids. With this combination, we have
demonstrated PCR with automated replenishment, a DNA sequencing
preparation protocol, and the complete retrieval of digital data
stored in dehydrated spots of DNA on the device’s surface.

Going forward, we see Puddle and PurpleDrop as part of a platform for
further research. PurpleDrop is affordable and extensible, which makes
a compelling case for adding new peripherals or even scaling out by
connecting multiple devices. And Puddle provides a flexible and
abstract programming model that could enable microfluidic programs to
run on different hardware targets (DMF or liquid handling robots), or
even a combination thereof.

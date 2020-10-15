---
layout: paper
title: "Mega-Microfluidics"

authors: [ "mwillsey", "luis" ]

venue: "WACI at ASPLOS 2019"
venue_url: "https://asplos-conference.org/"

links:
  pdf: "/assets/2019-waci-megamicrofluidics.pdf"

bib: |
  @misc{willsey2019waci,
    title = {Mega-Microfluidics},
    author = {
      Max Willsey and Luis Ceze
    },
    howpublished = {WACI at ASPLOS '19},
  }
---

## Abstract

Microfluidic automation promises to make biology and chemistry more
precise and efficient. Wetlabs are already using various technologies
to automate part of their workflows.

To scale things even further, various companies offer cloud lab
services. In this paradigm, the user submits a job (and perhaps mails
in some reagents), and robots in a warehouse perform the necessary
fluidic tasks. Finally, the result is mailed back to the user, or in
some cases just the relevant data is sent.

[Our work][puddle] in ASPLOS 2019 explores a more dynamic approach to
microfluidic automation, raising the possibility of running more
dynamic protocols that “close the loop” on automated
experimentation. But that work only looked at the hardware and
software necessary to run protocols on one device, a device that is
prohibitively small for many workloads. That said, those hardware
design decisions have big benefits: the device is cheap, easy to use,
and modular. Inspired by modern cloud-scale computer systems, this
WACI presentation will propose cloud-scale, dynamic, multi-tenant
microfluidic automation powered by small, cheap commodity components.

[puddle]: /papers/asplos-puddle/

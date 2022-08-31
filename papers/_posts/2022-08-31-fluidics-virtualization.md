---
layout: paper
title: "Co-Optimization of Design and Fabrication Plans for Carpentry"
shorttitle: capentry co-optimization

type: "publication"
authors:
  - calebwin
  - mwillsey
  - luis
venue: "ACM JETC"

links:
  ACM DL: "https://dl.acm.org/doi/10.1145/3558550"

bib: |
  @article{10.1145/3558550,
    author = {Winston, Caleb and Willsey, Max and Ceze, Luis},
    title = {Virtualizing Existing Fluidic Programs},
    year = {2022},
    publisher = {Association for Computing Machinery},
    address = {New York, NY, USA},
    issn = {1550-4832},
    url = {https://doi.org/10.1145/3558550},
    doi = {10.1145/3558550},
    journal = {Journal on Emerging Technologies in Computing Systems},
    month = {jul},
    keywords = {cloud lab, pipetting robots, virtualization, protocols, fluidics, biofoundry}
  }
---

## Abstract

Fluidic automation, the practice of programmatically manipulating small fluids
to execute laboratory protocols, has led to vastly increased productivity for
biologists and chemists. Most fluidic programs, commonly referred to as
protocols, are written using APIs that couple the protocol to specific hardware
by referring to the physical locations on the device. This coupling makes
isolation impossible, preventing portability, concurrent execution, and
composition of protocols on the same device.

We propose a system for virtualizing existing fluidic protocols on top of a
single runtime system without modification. Our system presents an isolated view
of the device to each running protocol, allowing it to assume it has sole access
to hardware. We provide a proof-of-concept implementation that can concurrently
execute and compose protocols written using the popular Opentrons Python API.
Concurrent execution achieves near-linear speedup over serial execution since
protocols spend much of their time waiting.
---
title: cv
layout: default
no-footer: true
---
<style>
@media print {
  h1 { font-size: 100% }
  main > ul {
    font-size: 80%;
    list-style: none;
    padding-left: 0;
  }
  a { color: black !important }
  a * { color: black !important }
}
li { margin-bottom: 0.8em }
</style>

# Education

- University of Washington, PhD 2021 \\
  _Thesis:_ Fast and Flexible Equality Saturation \\
  _Project page_: [`egraphs-good.github.io`](https://egraphs-good.github.io)
- Carnegie Mellon University, BS 2016 \\
  _Thesis:_ Design and Implementation of Concurrent C0


# Experience
- Postdoctoral Researcher \\
  University of Washington, 2021--present \\
  Led and participated in research projects, published papers, mentored a diverse range of undergraduate students

- Research Assistant \\
  University of Washington, 2016--2021

- Research Intern \\
  OctoML, Summer 2020 \\
  Designed and implemented a state-of-the-art term rewriting system for TVM

- Instructor \\
  University of Washington, Winter 2019 \\
  Co-taught CSE 351, a ~200 person course on the hardware-software interface

# Recognition

- Distinguished Paper, OOPSLA 2021, "[Rewrite Rule Inference Using Equality Saturation](/papers/ruler)"
- Distinguished Paper, POPL 2021, "[egg: Fast and extensible equality saturation](/papers/egg)"
- Invited Post, SIGPLAN Blog 2021, "[Fast and Extensible Equality Saturation with egg](https://blog.sigplan.org/2021/04/06/equality-saturation-with-egg/)"
- Invited Speaker, ICCAD 2019, "Scaling Microfluidics to Complex, Dynamic Protocols"
- Invited Speaker, Biochips Summer School 2019
- Qualcomm Innovation Fellow, 2019
- NSF Graduate Research Fellowship Honorable Mention, 2018

# Service

- External reviewer, ICFP 2022
- Organizer, PC Chair, [EGRAPHS 2022](https://pldi22.sigplan.org/home/egraphs-2022) workshop at PLDI 2022
- Co-organizer, CSE Pre-Application Review Service, 2020, 2021 \\
  Helped create a program to provide support and feedback on applicants' CV and statements,
  especially applicants from historically marginalized populations
- Co-chair, PhD student recruiting and visit days, 2019
- Member, Department chair selection committee, 2019
- Member, PhD student application reading committee, 2018-2021 \\
  Read PhD applications and raised the profile of diverse, qualified applicants
- Co-chair, PhD student orientation, 2018
<!-- - Co-organizer: RCR, TGIF, Pocsci -->

<div class="pagebreak"></div>

# Publications

<ul class="papers">
<style>
.paper-title { font-size: 100% }
</style>
{% for paper in site.categories.papers %}
  {% include paper.html title=1 paper=paper elem="li" %}
{% endfor %}
</ul>

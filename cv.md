---
layout: default
no-footer: true
---
<style>
a { color: black !important }
a * { color: black !important }
li { margin-bottom: 1em }
</style>

# Education

- University of Washington, PhD 2021 \\
  _Thesis:_ Fast, Flexible Equality Saturation
- Carnegie Mellon University, BS 2016 \\
  _Thesis:_ Design and Implementation of Concurrent C0


# Experience

- Research Assistant \\
  University of Washington, 2016--2021 \\
  Led and participated in research projects, published several papers, mentored several undergraduate students

- Research Intern \\
  OctoML, Summer 2020 \\
  Designed and implemented a state-of-the-art term rewriting system for TVM

- Instructor \\
  University of Washington, Winter 2019 \\
  Co-taught CSE 351, a ~200 person course on the hardware-software interface

# Recognition

- Distinguished Paper, POPL 2021, "egg: Fast and extensible equality saturation"
- Invited Speaker, ICCAD 2019, "Scaling Microfluidics to Complex, Dynamic Protocols"
- Invited Speaker, Biochips Summer School 2019
- Qualcomm Innovation Fellow, 2019
- NSF Graduate Research Fellowship Honorable Mention, 2018

# Publications

<ul class="papers">
{% for paper in site.categories.papers %}
  {% include paper.html title=1 paper=paper elem="li" %}
{% endfor %}
</ul>

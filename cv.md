---
title: cv
layout: default
no-footer: true
nav: |
  <br>
  <button class="no-print" style="margin-top: 5px; float:right" onclick="window.print();return false;">
  Print
  </button>
---

<style>
@media print {
  h1 { font-size: 120% }
  h2,h3 { font-size: 100% }
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


# Experience

- Assistant Professor \\
  University of California, Berkeley, 2024--present 
- Postdoctoral Researcher \\
  University of Washington, 2021--2023 \\
  <!-- Led and participated in research projects, published papers, mentored a diverse range of undergraduate students -->

# Education

- University of Washington, PhD 2021 \\
  _Thesis:_ [Fast and Flexible Equality Saturation](https://www.mwillsey.com/thesis/thesis.pdf)
  <!-- _Project page_: [`egraphs-good.github.io`](https://egraphs-good.github.io) -->
- Carnegie Mellon University, BS 2016 \\
  _Thesis:_ [Design and Implementation of Concurrent C0](https://www.mwillsey.com/papers/thesis-cc0)

<!-- - Research Intern \\
  OctoML, Summer 2020 \\
  Designed and implemented a state-of-the-art term rewriting system for TVM -->

# Teaching

<ul>
{% for course in site.data.teaching %}
  <li>
    {% include link.html url=course.url text=course.number %}: {{ course.title }}
    <br> {{ course.when }}
    {% if course.note %} <br> {{ course.note }} {% endif %}
  </li>
{% endfor %}
</ul>

# Recognition

- SIGMOD Record Research Highlight, SIGMOD 2024, "[Free Join: Unifying Worst-Case Optimal and Traditional Joins](/papers/freejoin)"
- [MIT PL Review 2024](https://plr.csail.mit.edu/) Selection, 
  "[Better Together: Unifying Datalog and Equality Saturation](/papers/egglog)"
- Distinguished Paper, OOPSLA 2021, "[Rewrite Rule Inference Using Equality Saturation](/papers/ruler)"
- Distinguished Paper, POPL 2021, "[egg: Fast and extensible equality saturation](/papers/egg)"
- {: .old} Older Entries
- Invited Post, SIGPLAN Blog 2021, "[Fast and Extensible Equality Saturation with egg](https://blog.sigplan.org/2021/04/06/equality-saturation-with-egg/)"
- Invited Speaker, ICCAD 2019, "Scaling Microfluidics to Complex, Dynamic Protocols"
- Invited Speaker, Biochips Summer School 2019
- Qualcomm Innovation Fellow, 2019
- NSF Graduate Research Fellowship Honorable Mention, 2018

# Invited Talks
- July 2024, "Program Manipulation with E-Graphs", NVIDIA
- July 2024, "Program Manipulation with E-Graphs", Imperial College London, Circuits and Systems Group
- PLDI 2024, [Programming Languages Mentoring Workshop](https://pldi24.sigplan.org/track/PLMW-PLDI-2024#program)
- PLDI 2024, [Sparse Workshop](https://pldi24.sigplan.org/home/sparse-2024#program)
- [Simons Institute Program on Logic and Algorithms in Database Theory and AI](https://simons.berkeley.edu/programs/logic-algorithms-database-theory-ai),
  Nov 2023,
  "[Datalog and Equality Saturation](https://simons.berkeley.edu/talks/max-willsey-uc-berkeley-2023-11-15)"

# Service

## Program Committees

- [OOPSLA 2026](https://2026.splashcon.org/), PC member
- [PLDI 2025](https://pldi25.sigplan.org), PC member
- [POPL 2025](https://popl25.sigplan.org), External Reviewer
- [ECOOP 2025](https://2025.ecoop.org/), PC member
- [ASPLOS 2025](https://www.asplos-conference.org/asplos2025/committee/#tpc), PC member
- [EGRAPHS 2024](https://pldi24.sigplan.org/home/egraphs-2024) workshop at PLDI 2024, Organizer, PC Chair
- [POPL 2024](https://popl24.sigplan.org), PC member
- [EGRAPHS 2023](https://pldi23.sigplan.org/home/egraphs-2023) workshop at PLDI 2023, Organizer, PC Chair
- [PLDI 2023 SRC](https://pldi23.sigplan.org/track/pldi-2023-src), PC member and judge
- ICFP 2022, external reviewer
- [EGRAPHS 2022](https://pldi22.sigplan.org/home/egraphs-2022) workshop at PLDI 2022, Organizer, PC Chair

## University/Department Service

- [Regent's and Chancellor's Scholarship](https://financialaid.berkeley.edu/types-of-aid-at-berkeley/scholarships/regents-and-chancellors-scholarship/) Interviewer, 2024
- Graduate Admissions Committee, 2023-24
- {: .old} Older Entries
- Co-organizer, CSE Pre-Application Review Service, 2020, 2021 \\
  Helped create a program to provide support and feedback on applicants' CV and statements,
  especially applicants from historically marginalized populations
- Co-chair, PhD student recruiting and visit days, 2019
- Member, Department chair selection committee, 2019
- Member, PhD student application reading committee, 2018-2021
- Co-chair, PhD student orientation, 2018

## Professional Service

- [Dagstuhl Seminar 26022](https://www.dagstuhl.de/en/seminars/seminar-calendar/seminar-details/26022), Organizer
- PLMW @ SPLASH 2026, Co-organizer
- [EGRAPHS Community](https://egraphs.org/about/) Organizer, 2024
- [SIGPLAN-M](https://www.sigplan.org/LongTermMentoring/) mentor, 2021-present

# Awards and Funding

- [Google Research Scholar Award](https://research.google/programs-and-events/research-scholar-program/recipients/), 2025, "E-Graphs for Program Optimization"

<!-- <div class="pagebreak"></div> -->

# Publications by Category

## Journal Articles

<style>
.paper-title { font-size: 100% }
li.paper.star { list-style-type: inherit }
</style>

<ol class="papers">
{% for paper in site.tags["journal"] reversed %}
    {% include paper.html title=1 paper=paper elem="li" flat_authors=true %}
{% endfor %}
</ol>

## Refereed Conference Papers

<ol class="papers">
{% for paper in site.tags["conference"] reversed %}
    {% include paper.html title=1 paper=paper elem="li" flat_authors=true %}
{% endfor %}
</ol>
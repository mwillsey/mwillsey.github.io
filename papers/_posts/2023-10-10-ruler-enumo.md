---
layout: paper
title: "Equality Saturation Theory Exploration à la Carte"

type: "publication"
authors:
  - ajpal
  - bsaiki
  - rtjoa
  - thia
  - amyzhu
  - oflatt
  - mwillsey
  - ztatlock
  - cnandi
venue: "OOPSLA 2023"
venue_url: "https://2023.splashcon.org/details/splash-2023-oopsla/68/Equality-Saturation-Theory-Exploration-la-Carte"

links:
bib:
---

Rewrite rules are critical in equality saturation, an increasingly popular technique
in optimizing compilers, synthesizers, and verifiers. Unfortunately,
developing high-quality rulesets is difficult and error-prone. Recent
work on automatically inferring rewrite rules does not scale to large
terms or grammars, and existing rule inference tools are monolithic and
opaque. Equality saturation users therefore struggle to guide inference and
incrementally construct rulesets. As a result, most users still
manually develop and maintain rulesets.

This paper proposes Enumo, a new domain-specific language for
programmable theory exploration. Enumo provides a small set of core
operators that enable users to strategically guide rule inference and
incrementally build rulesets. Short Enumo programs easily replicate
results from state-of-the-art tools, but Enumo programs can also scale
to infer deeper rules from larger grammars than prior approaches. Its
composable operators even facilitate developing new strategies for
ruleset inference. We introduce a new fast-forwarding strategy that does not require
evaluating terms in the target language, and can thus support domains
that were out of scope for prior work.

We evaluate Enumo and fast-forwarding across a variety of domains. Compared to
state-of-the-art techniques, enumo can synthesize better rulesets over a
diverse set of domains, in some cases matching the effects of
manually-developed rulesets in systems driven by equality saturation.

---
title: Software Patterns of Continuous Quality Improvement (CQI) with REDCap and R
author: Will Beasley, David Bard, & Thomas Wilson
output:
  html_document:
    keep_md: yes
    toc: yes
    toc_depth: 3

---

Continuous quality improvement (CQI) is defined by HRSA as "a continuous process that employs rapid cycles of improvement".  This presentation provides a detailed, yet generalizable, illustration of CQI benefiting from REDCap and literate programming.  Literate programming tools can combine statistical text, tables, and graphs in a coherent document that is accessible to unfamiliar audiences.  The automation of these tools eliminates the need to repeatedly copy and paste analytic results after underlying data sources are updated.

Our system uses R (which is a versatile statistical software program with many complementary packages) and the REDCapR package to query the API of a REDCap database and produce reports.  After being exported from REDCap, the rectangular data are groomed, transformed, and statistically analyzed.  For static reports, the ‘knitr’ engine then embeds the text and graphics into a formatting language (LaTeX or Markdown) and renders a report (in PDF or HTML) for distribution.  For dynamic reports, the Shiny framework employs R, HTML, and JavaScript to provide an interactive experience with the user.  Reports range from dense dashboards (monitored by data collectors) to sophisticated analyses (consumed by project investigators) to professional-quality publications (distributed to politicians, policy makers, and interagency collaborators).

We decompose our system into a handful of software patterns in the hopes that other REDCap adopters can increase the (a) speed of development, (b) consistency of implementation, (c) adherence to recommended security practices, (d) complexity of statistical analyses, (e) breadth of audience, and (f) frequency of informative CQI cycles.  The patterns are demonstrated with the system used during Oklahoma’s MIECHV (Maternal, Infant, and Early Childhood home Visiting) external evaluation.

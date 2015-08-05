---
title: Description of Data Management Services offered by BBMC
author: Will Beasley & Sree Mandem
output:
  html_document:
    keep_md: yes
    toc: yes
---

Currently, we support two types of databases: **collection** and **warehouse**.  A "collection" database contains live data that is difficult or impossible to recover.  A "warehouse" database is entirely populated by outside sources, and thus relatively easy to recover.  

Summary Comparison
===================================

|     | Collection | Warehouse |
| :-- | :--------- | :-------- |
| Typical Purpose | Live research data | Organizing & synthesizing data from external sources |
| Monthly Cost | $A | $B |
| Data Backups | Full nightly + hourly diffs + continuous transaction logs | none (b/c we can recreate it from external sources again) |
| Disaster Recovery Drills | {describe} | {describe} |
| Encryption | {describe} | {describe} |

Features Common to All Databases
===================================

* TODO: describe schema backups (on Git)

* TODO: encryption

Collection Database
===================================

### Description

### Backups & Disaster Recovery Drills



Warehouse Database
===================================

### Description

### Backups & Disaster Recovery Drills

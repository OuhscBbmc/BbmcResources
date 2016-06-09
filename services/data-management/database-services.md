---
title: Description of Data Management Services offered by BBMC
author: Will Beasley & Sree Mandem
output:
  html_document:
    keep_md: yes
    toc: yes
---

Introduction
===================================

This document contains information on database services we offer and information on how live databases and datawarehouses databases are used in [BBMC](http://www.ouhsc.edu/bbmc/)'s SQL Server (Biomedical & Behavioral Methdology Core).  

Currently, we support two types of databases: **collection** and **warehouse**.  A "collection" database contains live data that is difficult or impossible to recover.  A "warehouse" database is entirely populated by outside sources, and thus relatively easy to recover.  

Summary Comparison
===================================

|     | Collection | Warehouse |
| :-- | :--------- | :-------- |
| Typical Purpose | Live research data | Organizing & synthesizing data from external sources |
| Monthly Cost | $A | $B |
| Data Backups | Full nightly + hourly diffs + continuous transaction logs | Full Nightly (b/c we can recreate it from external sources again) |
| Disaster Recovery Drills | Once every Year | Once every year |
| Encryption | TDE Encryption | TDE Encryption |


Collection Database or Live Database
===================================

### Description
Live Databases are often used in contexts where you need to be able to access and update data online, in near real time, and with multiple concurrent accesses.Live databases store data that is currently in active use and is hard to retrieve back from its source in case of any data loss.Data stored in Live Databases are frequently updated.

### Backups
The data in the collection database is critical and cannot be recovered if lost,hence our backup strategy is to have transaction log backed up all the time,Differential backup every hour and full backup every night.


Warehouse Database
===================================

### Description
A data warehouse is a particular type of database, which focuses on a very specific application: storing, filtering, retrieving and analyzing huge volumes of information.Usually data in Data warehouses comes from sources from which data can be retrieved back in case of any data loss. Data warehouses aren't updated very frequently.

### Backups 
The data in the Warehouse Database is not as critical as the Collection Database and can be recovered back from external sources.The backup strategy is to have full backup every night.


Other Database Services Offered
===================================

### Disaster Recovery
A SQL Server disaster is an event that causes data loss or any serious SQL Server disruption. Causes of a disaster can be numerous: power failure, hardware failure, virus attack, natural disaster, etc.
Disaster recovery plan (DRP) is a process to have the Server up and running, and to overcome data loss after a disaster. 
We perform a disaster recovery drill every year through simulation of a natural disaster and by testing the recovery steps for each scenario in the disaster recovery plan.

Possible disaster recovery models:
Always on high availablity,Asynch database Mirroring,log shipping,SAN/VM Replication

### Security
TDE Encryption is used for databases on the server.TDE provides protection for the entire database at rest without affecting existing applications.It encrypts everything on the database. Thus, all data types, keys, indexes, and so on can be used to their full potential without sacrificing security or leaking information on the disk.For more information on TDE implementation please look into the document [tde-encryption](PrairieOutpost/notes/maintenance/tde-encryption/tde-encryption.md).

### Coulmnstore
Microsoft introduced the columnstore index in SQL Server 2012 .It provides significantly improved performance for data warehousing types of queries. It uses column-based data storage and query processing to achieve up to 10x query performance gains over traditional row-oriented storage, and up to 10x data compression over the uncompressed data size.We use this feature from microsoft for indexing in data warehouse databases for improved performance.


References
=================================================
* Coloumnstore Indexes Guides (https://msdn.microsoft.com/en-us/library/gg492088.aspx)
* Transparent Data Encryption (TDE) (https://msdn.microsoft.com/en-us/library/bb934049.aspx)
* Database Encryption in SQL Server 2008 Enterprise Edition (https://technet.microsoft.com/en-us/library/cc278098(v=sql.100).aspx)
* Transparent Data Encryption FAQs (http://sqlmag.com/sql-server/transparent-data-encryption-faqs)
* Disaster Recovery (http://www.sqlshack.com/sql-server-disaster-recovery/)



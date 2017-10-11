Maintaining the R Ecosystem
======================================

[Installation instructions](https://github.com/OuhscBbmc/RedcapExamplesAndPatterns/blob/master/DocumentationGlobal/ResourcesInstallation.md) are described elsewhere.  This document focuses on maintaining R and the software around it.

### R 
* *Purpose*: the engine that powers that does the real work.
* *Upgrading to a new version*: [download](https://cran.rstudio.com/bin/windows/base/rpatched.html) and install of a new version.  
* *Removing old version*: Once things are running smoothly with the new version, uninstall the previous version(s) using the [conventional Windows approach](https://support.microsoft.com/en-us/help/2601726).
* *Frequency*: about four times a years.
* *Retaining settings*: there aren't any real settings in R that need to be persisted between versions.

### RStudio
* *Purpose*: The [IDE](https://en.wikipedia.org/wiki/Integrated_development_environment) is what you'll actually interact with directly.  Development is much more efficient than using the GUI than the standard R console.
* *Upgrading to a new version*: RStudio requires a download and installation of a new version.  
* *Removing old version*: the old version of RStudio is not retained, so you don't have to uninstall anything.  
* *Frequency*: every few months.  Get in the habit of upgrading it when you upgrade R. 
* *Retaining settings*: RStudio saves many small, but useful settings, such as font size and panel locations. If something goes wrong with RStudio, re-installing might not fix the issue, because your personal preferences aren't erased. To be safe, you can be thorough and delete the equivalent of `C:\Users\beasley\AppData\Local\RStudio-Desktop\`. The options settings are stored (and can be manipulated) in this extentionless text file: `C:\Users\beasley\AppData\Local\RStudio-Desktop\monitored\user-settings\user-settings`. 
* *Decisions*: choose between the latest [stable](https://www.rstudio.com/products/rstudio/download/) and [preview](https://www.rstudio.com/products/rstudio/download/preview/) editions.  The former is usually more stable, while the latter has newer features.


### Rtools
* *Purpose*: It is required to build any package that's not on CRAN.
* *Upgrading to a new version*: [download](https://cran.r-project.org/bin/windows/Rtools/) and install a new version.
* *Removing old version*: the old version of RStudio is not retained, so you don't have to uninstall anything.  
* *Frequency*: every few months.  Get in the habit of upgrading it when you upgrade R.  It won't be necessary some of those time, but it's almost easier to do it anyway, than compare the version number on the [website](https://cran.r-project.org/bin/windows/Rtools/VERSION.txt) to the version number on your local machine.


*Document started 2017-10-10 and last updated 2017-10-10.*

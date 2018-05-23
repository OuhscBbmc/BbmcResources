Maintaining the R Ecosystem
======================================

[Installation instructions](https://github.com/OuhscBbmc/RedcapExamplesAndPatterns/blob/master/DocumentationGlobal/ResourcesInstallation.md) are described elsewhere.  This document focuses on maintaining R and the software around it.

**Motivation**: 
Developing and debugging across machines is difficult enough when everyone is using the same configuration.  When software or packages versions aren't aligned across machines, a lot of time is wasted.  To reduce this waste, please keep  everything updated, especially when you hit a problem.  I'm not going to provide help to anyone using an outdated configuration.

**Communication**: be ready to report the results of `devtools::session_info()`.

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
* *Ubuntu*: download the *.deb file and run something like `sudo gdebi rstudio-xenial-1.1.383-amd64.deb`. 
* *Decisions*: choose between the latest [stable](https://www.rstudio.com/products/rstudio/download/) and [preview](https://www.rstudio.com/products/rstudio/download/preview/) editions.  The former is usually more stable, while the latter has newer features.


### Rtools
* *Purpose*: It is required to build any package that's not on CRAN.
* *Upgrading to a new version*: [download](https://cran.r-project.org/bin/windows/Rtools/) and install a new version.
* *Removing old version*: the old version of RStudio is not retained, so you don't have to uninstall anything.  
* *Frequency*: every few months.  Get in the habit of upgrading it when you upgrade R.  It won't be necessary some of those time, but it's almost easier to do it anyway, than compare the version number on the [website](https://cran.r-project.org/bin/windows/Rtools/VERSION.txt) to the version number on your local machine.

### R Packages
* *Purpose*: extend the functionality of R beyond the base features.  When R is upgraded, the packages need attention too.  There are several ways to do it, and here is the way that we'll support.
* *Upgrading to a new version*:
    1. Follow the first-time [package installation instructions](https://github.com/OuhscBbmc/RedcapExamplesAndPatterns/blob/master/DocumentationGlobal/ResourcesInstallation.md#installation-required) when R is install/upgraded.
    1. If you're working on a repository that is also an R package (*i.e.*, [miechv-3](https://github.com/OuhscBbmc/miechv-3)), run this code to install and update any additional packages (including those on GitHub).
        ```r
        if( !require("remotes") ) install.packages("remotes")
        update(remotes::dev_package_deps())
        ```
* *Removing old version*: the old version of a package is not retained, so you don't have to uninstall anything.      
* *Frequency*: 
    1. The `package_janitor_remote()` function needs to run only when R is installed upgraded.  If you seem to be missing some packages, it wouldn't hurt to run more frequently.  There might have been some we added recently to the list.
    1. The `update(remotes::dev_package_deps())` command should be run ~1/week.

*Document started 2017-10-10 and last updated 2018-05-23.*

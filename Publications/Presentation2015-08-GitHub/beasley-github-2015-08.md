<style type="text/css">
.small-code pre code {
   font-size: 1.1em;
}
</style>

Scientific Collaboration with GitHub
========================================================
OU [Bioinformatics Breakfast Club](https://github.com/bwawrik/MBIO5810)

Will Beasley, Dept of Pediatrics,

Biomedical and Behavioral Methodology Core ([BBMC](http://ouhsc.edu/BBMC/))

[August 28, 2015](https://github.com/bwawrik/MBIO5810/tree/master/presentations-2015-fall/2015-08-28/)

Overview of Git
========================================================
**Git** is the underlying **version control system**.  It's  similar to 'Track Changes' in MS Word, with three huge differences:

1. Collaborators can make changes simultaneously. Track Changes frequently involves a painful cognitive load to  reconcile different versions.
2. The entire history is accessible -not just the most recent version. At anytime, you can turn back the clock to any committed change ([example](https://github.com/bwawrik/MBIO5810/commits/master)).
3. Coordinates an entire repository of files, not just isolated documents.

Overview of GitHub
========================================================
**GitHub** is an online service that leverages Git, and adds some sauce for scientists
* Hosts the repository online.
    * Code.
    * Data.
    * Reports & output.
* Adds options for user permissions, such as read-only<br/>(unlike Dropbox).
* Tools for visualizing code differences and developer activity.
* Project Management Tracking, "Issues", & notifications.

Outline
========================================================
1. Benefits & Complete examples.
2. Creation and organization.
3. Communicate with statisticians and non-statisticians.
4. Precautions with health care and PHI data.

Benefits
========================================================
* Reproducibility for internal team.
* Reproducibility for outsiders.
* Hosting reports.

Complete examples
========================================================
### Public and applied
* [github.com/OuhscBbmc/OsctrAstonWeber](https://github.com/OuhscBbmc/OsctrAstonWeber)
* [github.com/LiveOak/LylesCarbonSteelCorrosion](https://github.com/LiveOak/LylesCarbonSteelCorrosion)
* [github.com/LiveOak/UcaBullying](https://github.com/LiveOak/UcaBullying)

### Public and methodological
* [github.com/OuhscBbmc/Wats](https://github.com/OuhscBbmc/Wats)
* [github.com/OuhscBbmc/REDCapR](https://github.com/OuhscBbmc/REDCapR)
* [github.com/OuhscBbmc/DeSheaToothakerIntroStats](https://github.com/OuhscBbmc/DeSheaToothakerIntroStats)

### Communication
* [github.com/bwawrik/MBIO5810](https://github.com/bwawrik/MBIO5810)
* [github.com/OuhscBbmc/RedcapExample](https://github.com/OuhscBbmc/RedcapExample)
* [github.com/OuhscBbmc/StatisticalComputing](https://github.com/OuhscBbmc/StatisticalComputing)

### Private
* [github.com/OuhscBbmc/Tfcbt](https://github.com/OuhscBbmc/Tfcbt)

Reproducibility for Internal Team
========================================================
* Easier to be disciplined about:
    * maintaining a current & coherent code base.
    * *programmatic* data manipulation (instead of *manual*).
    * encapsulating analyses in different files.
* Team members can more easily review and synchronize changes.
* Easier to jump between computers.
* [github.com/OuhscBbmc/DeSheaToothakerIntroStats](https://github.com/OuhscBbmc/DeSheaToothakerIntroStats) quickly becomes a small website.

Reproducibility for Outsiders
========================================================
* The inputs (ie, data and code) can be inspected & downloaded immediately.
    * Details too trivial for your article are available too.
* The outputs (ie, stats, graphs, and reports) can be compared to their results.
* Ideally the exactly software versions are easily determined.

Benefits of Hosting Reports
========================================================
* Single URL to send to anyone interested<br/>(not just those with access to the OU file server).
* Single report to send anyone<br/>(not a bunch of loose graphic files).

Four Life Cycle Templates
========================================================
Before you start, decide if the repo will be:

* **Public** from the start.
* **Private** forever.
* **Private** during development, then **public**.
* Dual: Maintain both a **public** and a **private**.

Mechanism
========================================================
The typical sequence of operations is

1. Log in to your computer and **Sync** the repository to make sure it's up-to-date.
2. **Modify**/create/delete a file (as normal).
3. **Locally save** the changes to your computer's hard drive (as normal).
4. **Commit** your saved changes to your local repository.
5. **Sync** your *local* repository with the *central* repository again.  This "pulls" any changes from the server, attempts to merge the changes (which is usually successful), and finally "pushes" your recent changes to the server.

The [GitHub Desktop Client](https://desktop.github.com/) (for Windows & Mac) hides a lot of the complexity.

Demo 1: Create and Assign a Teammate
========================================================
1. Create a new repository in wibeasley:<br/>`Mbio5810Demo-2015-08`.
2. Assign privileges to a existing user: `bwawrik`.
3. Clone on my local machine.
4. Copy `RAnalysisSkeleton`.
5. Push changes.
6. Boris makes changes in the browser version & commits.
7. I sync/pull his changes.
8. Create an issue w/ links.

Demo 2a: More Descriptions
========================================================
1. Sree navigates to `Mbio5810Demo-2015-08` webpage.
2. "Fork" the repo (but still on **central server**).
3. "Clone" the repo to his **local** machine.
4. Modify some file.
5. Save the file to **disk**.
6. "Commit" the change to **local repository**.
7. "Sync" the change(s) to **central server**.

Demo 2b: Pull Request from Outsider
========================================================
1. Sree: Navigate to repo website.
2. Sree: Submit a "pull request" (ie, a "PR").
3. Will: Receives email notification.
4. Will: Accepts pull request.
5. Boris: Syncs his local machine.

Large Data Files
========================================================
* Git is *not* intended to work with big data files (say, over 1MB).
    * Especially ones that change frequently.
    * The Git history gets bloated and syncing is sluggish.
    * Excluding data from repo hurts reproducibility.
    
Containing/Referencing Data
========================================================
The BBMC employs a variety of strategies.  As we descend, security increases while reproducibility decreases.

1. Public data is contained directly as CSVs.
2. Assume users can download the same public database<br/>(eg, reference genome, census file).
3. Unshared data that Git "ignores" and doesn't push to the server.
4. Pulling from the OUHSC file server.
5. Pulling from a database.

GitHub repositories should never contain patient data (or anything legally protected) --not even "private" repos.

RAnalysisSkeleton Repository
========================================================
This is minimal example that contains elements of most of my moderately sized projects (say, takes a few weeks start to finish).

https://github.com/wibeasley/RAnalysisSkeleton.

We'll return to this after we finish the slides.

Project Management and Communication
========================================================
* Communicate with internal and external collaborators.
* Three forms of communication have their place.
    1. Long-term documentation stored in the repository.  It should outlive GitHub.
    2. Email has private/internal thoughts & criticisms.
    3. GitHub issues host publically acceptable thoughts & criticisms.  Treat as public.  Don't assume GitHub will be in business in three years; forntunately the code & reports aren't tied to GitHub.  [Worst case](https://groups.google.com/forum/#!topic/ggplot2/dY1cKfCsb1o), you can serve them as a zip file on your personal page.
* Example issues: [REDCapR](https://github.com/OuhscBbmc/REDCapR/issues?direction=desc&sort=updated&state=open) and [MBIO5810](https://github.com/bwawrik/MBIO5810/issues).

Distributing/Hosting Static Reports
========================================================
The [markdown report](https://github.com/wibeasley/RAnalysisSkeleton/blob/master/Analyses/Report1/Report1.md) is a quick way, but has narrow margins.

For *public* repositories, routing the [html report](https://rawgit.com/wibeasley/RAnalysisSkeleton/master/analysis/report_1/report_1.html) through `http://rawgit.com` is typically better.

For private reports, `knitr` produces a self-contained html report.  The graphics, text, and numeric output is in a single file you can email.  Anyone with a modern browser can open the file.

Inspecting the **diffs** is a great way to see if the results changed over time.

My "utility" Directory
========================================================
Contains files that aren't absolutely necessary for the analysis, but makes reproduction much easier.

Examples: [RAnalysisSkeleton](https://github.com/wibeasley/RAnalysisSkeleton/tree/master/utility)

My "reproduce" File
========================================================
Ideally expose a single file that can calls your other files in the correct order.

It's almost as easy creating a documentation file that offers clear directions to a human.

Plus, you can assert that the intermediate & final files have been produced roughly correctly.

Examples: [SteelCorrosion](https://github.com/LiveOak/LylesCarbonSteelCorrosion/blob/master/UtilityScripts/Reproduce.R) ans [Wats](https://github.com/wibeasley/Wats/blob/master/UtilityScripts/Reproduce.R)

Publicity & Search Engine Optimizations
========================================================
* In the repository's README.md file, provide any relevant information for humans **and search engines**.
* It's obvious how it reduces barriers for human readers.
* SEO is also important. Not only will it help improve the repository's SEO, it also improves the performance of your articles.  Examples:
    * [SteelCorrosion](https://github.com/LiveOak/LylesCarbonSteelCorrosion)
    * [UcaBullying](https://github.com/LiveOak/UcaBullying)
    * [REDCapR](https://github.com/OuhscBbmc/REDCapR)

Branches, Forks, & Pull Requests
========================================================
* While a beginner, I recommended you
    * Give everyone permissions within reason<br/>(it's much simpler and hassle-free).
    * If a PR is necessary, try w/ the browser<br/>(not your local macine).
* As you gain experience
    * Experiment w/ branches/forks locally.
    * Make small contributions to [MBIO5810](https://github.com/bwawrik/MBIO5810) scripts & documentation.
    * Carefully study the [`rebase`](https://github.com/edx/edx-platform/wiki/How-to-Rebase-a-Pull-Request).
    

Cautions & Limitations -Part 1
========================================================
* Sync early & often
* When working in a team, avoid modifying the same file simultaneously.  Reconciliation costs you time (but is still easier than without GitHub).
* Works easiest with plain text (eg, shell, SAS, R, [csv](https://github.com/LiveOak/LylesCarbonSteelCorrosion/blob/a8e64da57535001a18b4fcc4ead4a61817511f53/Data/Raw/CouponPitDepth.csv), [map](https://github.com/bwawrik/MBIO5810/blob/27756e071705cb6bbd7cacce514e9df8a8a9bd3e/misc_files/rocktype.map)), rather than binary/proprietary formats (eg, docx & sas7bdat).  The storage mechanism doesn't care much, but the "diff" views won't be available, and reconciling differences can't be done automatically.

Cautions & Limitations -Part 2
========================================================
* Reconciliation strategies range in sophistication, including
    * Command line functions for experts.
    * Formal branching & merging using GitHub's visual tools.
    * Our "Hard Reset" (ie, the only possibility without version control).
* Git branching & forking is an important in software development, but I discourage it for repositories focused on analytics.

Cautions & Limitations -Part 3
========================================================
Securing private information (data & comments).
* Layered defense.
* Good protocols & practices for data.
* Use eager [`.gitignore`](https://github.com/wibeasley/RAnalysisSkeleton/blob/master/utility/eager.gitignore) exclusions.

Resources
========================================================
### Git and GitHub Mechanics
 * http://git-scm.com/
 * https://help.github.com/
 * [Version Control with Git](http://shop.oreilly.com/product/0636920022862.do), Loeliger & McCullough (2012)
 * ? [Introducing GitHub: a Non-Technical Guide](http://shop.oreilly.com/product/0636920033059.do), Bell & Beer (2014)

### [Implementing Reproducible Research](http://www.crcpress.com/product/isbn/9781466561595)
 * Victoria Stodden, Friedrich Leisch, Roger D. Peng (editors; 2014)

### [Reproducible Research with R and RStudio](http://christophergandrud.github.io/RepResR-RStudio/)
 * Christopher Gandrud (2013, 2015)

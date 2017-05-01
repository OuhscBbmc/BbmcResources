# GitHub Tasks

### GitHub User Account Creation

* **email to**: {collaborators}

* **email cc**: Zabrina Antry; David Bard; Sreeharsha Mandem

* **email subject**: CDW {project-name}: please create a GitHub account to better collaborate with us (email 3 of 3)

* **email body**:

    Hi zzz, we use GitHub (https://github.com) to manage a lot of the BBMC assignments, code, and aggregated/de-identified reports.  To be clear, no data or PHI gets on GitHub (or ever leaves IT-approved storage devices, like file servers or databases).

    I created a private repo for the upcoming reporting projects that we hope to work with you on.  Could you please:

    1. Create a free GitHub user account at https://github.com/.  (Instructions are at https://github.com/join.)
    2. Ideally your profile has your name and institution.  (That way, we're not worried about selecting the wrong "Will Beasley" when I'm choosing between "wibeasley", "wbeasley", or "wibeasley2001".
    3. Turn on "Two-Factor Authentication". (This adds an extra layer of security.  Instructions are at https://help.github.com/articles/about-two-factor-authentication/.)
    4. Email us your GitHub username.  We'll add you as an official collaborator on a specific GitHub repository.
    5. You'll get an email to confirm that you'd like to join the new repository.
    6. Once you're added, you'll be able to access the repo at https://github.com/OuhscBbmc/{project-name}.  Until you're added, you (like the rest of the public) will be blocked, and see only a 404 error page.

    At first, you're likely to be a consumer of the contents and reports on the repository.  If you'd like to add material to the repo, please talk to us first.  We have some guidelines and practices for avoiding PHI inadvertently getting onto the repository.

* **after they respond** with their GitHub username and you've added it to the [GitHub team](https://help.github.com/articles/maintaining-teams/), send an email along the lines of:

    Thanks for sending us your GitHub username.  I've added your name to the repository.  To view it, you'll first need to accept the automated email from GitHub (that confirms you want to join the OuhscBbmc organization).  Then you'll have access to https://github.com/OuhscBbmc/{project-name}.  Tell me if you still see a 404 error.

### Repo Settings

Paste this block into a new issue called *GitHub Repo Settings*:
```
- [ ] double-check the repo is private.  (It should have a lock icon and say 'Private' new the repo name.)
- [ ] Add repo description like `{pi-name} (PI): "{project-title}"` (eg, 'Ryan Blucker (PI): "Prevalence rates of overweight Foster care children and adolescents in in a Primary Care clinic setting"')
- [ ] initialize GitHub team
    - [ ] [create team](https://help.github.com/articles/creating-a-team/) called `{project-name}-push-pull` (*e.g.*, `marin-dka-1-push-ull`)
    - [ ] [add](https://help.github.com/articles/maintaining-teams/) appropriate CDW staff.
    - [ ] add researchers/collaborators, once their GitHub account is created.  If they're not currently a member of the [OuhscBbmc team](https://github.com/OuhscBbmc), they'll need to accept the emailed invitation.
    - [ ] [add](https://help.github.com/articles/managing-team-access-to-an-organization-repository/) the appropriate repository.
- [ ] Add [topics](https://help.github.com/articles/about-topics/).  
    * All CDW projects should be labeled w/ [`bbmc-collaborator`](https://github.com/search?q=topic%3Abbmc-collaborator+org%3AOuhscBbmc&type=Repositories) and [`emr`](https://github.com/search?q=topic%3Aemr+org%3AOuhscBbmc&type=Repositories).
    * Add a topic or tw for the content/field of the research (eg, ['obesity'](https://github.com/search?q=topic%3Aobesity+org%3AOuhscBbmc&type=Repositories),  ['asthma'](https://github.com/search?q=topic%3Aasthma+org%3AOuhscBbmc&type=Repositories)).

```

### Populate Repo

Paste this block into a new issue called *Add skeleton*:
```
Copy repo skeleton from [RAnalysisSkeleton](https://github.com/wibeasley/RAnalysisSkeleton):
- [ ] `analysis/` (including report example)
- [ ] `data-public/` (including metadata)
- [ ] `data-unshared/`
- [ ] `documentation/` (try to include the IRB documents, which aren't in the skeleton)
- [ ] `manipulation/` (including ellis example)
- [ ] `utility/` (including package dependencies & `reproduce.R`)
- [ ] `.gitattributes` text file
- [ ] `.gitignore` text file
    * for CDW projects, copy & rename `./utility/eager.gitignore` to `./.gitignore`,  either
        * within RStudio
        * command prompt with `move eager.gitignore .gitignore`
- [ ] Rproj file (and rename to '{project-name}.Rproj'; eg, 'marin-dka-1.Rproj')

```

### Initialize README in root directory

Paste this block into a new issue called *Initialize README*.
```
In the project's intro page, include the following

- [ ] project name
- [ ] project title
- [ ] project abstract
- [ ] personnel approved by the IRB to view the project's PHI
- [ ] location of IRB documents
- [ ] location of file server
- [ ] location of REDCap cache

====
A starting template is

# {project-name} (eg, marin-dka-1)
{project-title} (eg, Efficacy of initial fluid resuscitation in pediatric diabetic ketoacidosis (DKA))

## Approved Personnel to view PHI:
* CDW/BBMC Staff: (paste names from the approved IRB documents.)
* Centricity / OU-Physicians staff: (paste names from the approved IRB documents.)
* Investigators & team: (paste names from the approved IRB documents.)

## Locations

| Resource            | Location                                                                                 | Notes                                                                           |
|:--------------------|:-----------------------------------------------------------------------------------------|:--------------------------------------------------------------------------------|
| REDCap              | https://bbmc.ouhsc.edu/redcap/redcap_v6.16.8/index.php?pid={redcap-cache-pid}            | Cache that is ready to be analyzed.                                             |
| File server         | S:/.../BBMC/{project-name}/                                                              | For security reasons, avoid putting the full path of the directory in the repo. |
| IRB                 | [`/documentation/irb/`](documentation/irb/)                                              | Location of documents submitted & approved by the IRB                           |
| IRB Expiration date | 2017-011-11                                                                              | Date when IRB reapproved is required.                                           |
| Project Tracker     | https://bbmc.ouhsc.edu/redcap/redcap_v7.3.2/DataEntry/record_home.php?pid=80&id=49&arm=1 | Used internally by BBMC.                                                        |
| Stats for IRB       |                                                                                          | Code or reports informing continuing reviews submitted to the IRB.              |

## Abstract
> (paste from IRB Research Protocol)

## Specific Aims
> (paste from IRB Research Protocol)

```


### IRB-Approved personnel

Paste this block into a new issue called *Check IRB-approved personnel*.
```
@zantry, please check that everyone (with access to the S drive and to the REDCap cache) have been approved by the IRB to view PHI related to this project.  This includes
- [ ] CDW/BBMC staff
- [ ] Investigators, project managers, research assistants, etc

Then please
- [ ] add the approved names to the `README.md` file in the repo's root directory.

```

### Organization-wide defaults and practices
Our core-wide goal of being [secure by default](https://en.wikipedia.org/wiki/Secure_by_default) applies to GitHub too.  Some security measures have to be added explicitly (*e.g.*, `.gitignore` blocking common data files like `*.csv` & `*.xlsx`), but these organization-wide settings make new repo more secure as soon as their initialized, even at the cost of accessibility.

*Defaults*

1. Two-factor authentication [is required](https://help.github.com/articles/requiring-two-factor-authentication-in-your-organization/) for all organization memebers and outside collaborators.  See setting "Security" => "Two-factor authentication"

1. Organization members are [restricted from creating repositories](https://help.github.com/articles/repository-permission-levels-for-an-organization/#restricting-people-from-creating-repositories).  See setting "Member privileges" => "Repository creation".

1. Organization members have [zero permissions on new repositories](https://help.github.com/articles/repository-permission-levels-for-an-organization/#restricting-people-from-creating-repositories).  See setting "Member privileges" => "Default repository permission"
.

*Practices*

1. Authorized teammates outside OUHSC are designated as [outside collaborators](https://help.github.com/articles/adding-outside-collaborators-to-repositories-in-your-organization/), instead of "members".

1. Only three people are [owners](https://help.github.com/articles/permission-levels-for-an-organization/) of the GitHub organization.  Everyone else must be explicitly added to each appropriate repository.  Other important restrictions to members include (a) cannot add/delete/transfer (private or public) repositories and (b) cannot add/delete other members to organization.

1. Every week, an owner (probably @wibeasley) will review the [organization's audit log](https://github.com/organizations/OuhscBbmc/settings/audit-log) (which only owners can view).

1. Two or more owners must discuss and agree upon adding/modifying/deleting any extra entity added to our GitHub Organization, including
    1. [webhooks](https://developer.github.com/webhooks/),
    1. [third-party applications](https://help.github.com/articles/about-third-party-application-restrictions/),
    1. [installed integration](https://developer.github.com/early-access/integrations/), and
    1. [OAuth applications](https://developer.github.com/v3/oauth/).

    Currently, the only approved entity is the [Codecov](https://codecov.io/) integration, which helps us test our package code and quantify its coverage ("Improve code quality. Expose bugs and security vulnerabilities.").  Codecov must be explicitly turned on for each desired repository.

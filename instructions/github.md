# GitHub Tasks

*Much of this material has been moved.  Please see https://ouhscbbmc.github.io/data-science-practices-1/git.html*

### GitHub User Account Creation

This email can be sent by anyone on the CDW team.  Copy the content below, then replace the placeholders in curly braces with the project-specific values, and finally sent the email.

* **email to**: {collaborators}

* **email cc**: Ashley Thumann; David Bard; Wale Oluborode; Will  Beasley

* **email subject**: CDW [{project-name}]: please create a GitHub account to better collaborate with us (email 3 of 3)

* **email body**:

    Hi zzz, we use GitHub (https://github.com) to manage a lot of the BBMC assignments, code, and aggregated/de-identified reports.  To be clear, no data or PHI gets on GitHub (or ever leaves IT-approved storage devices, like file servers or databases).

    We created a private repo for the upcoming reporting projects that we hope to work with you on.  Could you please:

    1. Create a free GitHub user account at https://github.com/.  (Instructions are at https://github.com/join.)
    2. When creating your profile, please add at least your name and institution.  (That way, we're not worried about selecting the wrong "Will Beasley" when I'm choosing between "wibeasley", "wbeasley", or "wibeasley2001".
    3. Turn on "Two-Factor Authentication". (This adds an extra layer of security.  Instructions are at https://help.github.com/articles/about-two-factor-authentication/.)
    4. Email us your GitHub username.  We'll add you as an official collaborator on a specific GitHub repository.
    5. You'll get an email to confirm that you'd like to join the new repository.
    6. Once you're added, you'll be able to access the repo at https://github.com/OuhscBbmc/{project-name}.  Until you're added, you (like the rest of the public) will be blocked, and see only a 404 error page.

    At first, you're likely to be a consumer of the contents and reports on the repository.  If you'd like to add material to the repo, please talk to us first.  We have some guidelines and practices for avoiding PHI inadvertently getting onto the repository.

* **after they respond** with their GitHub username and you've added it to the [GitHub team](https://help.github.com/articles/maintaining-teams/), send an email along the lines of:

    Thanks for sending us your GitHub username.  I've added your name to the repository.  To view it, you'll first need to accept the automated email from GitHub (that confirms you want to join the OuhscBbmc organization).  Then you'll have access to https://github.com/OuhscBbmc/{project-name}.  Tell me if you still see a 404 error.

    GitHub has several [notification thresholds](https://help.github.com/articles/watching-repositories/).  We suggest that you enable the 'Not Watching' level.  You'll be notified for issues that someone explicitly tagged you, but not for issues that don't involve you.  (Please do *not* choose the 'Ignore' level.)  This affects only the email notifications you receive --all issues will be accessible to you at any time; just go to the repo's "Issue" tab.  

### Repo Creation

Only the three [owners](https://help.github.com/articles/repository-permission-levels-for-an-organization/) of the [OuhscBbmc](https://github.com/OuhscBbmc) organization has permission for these steps.

1. Create a [new repository](https://github.com/organizations/OuhscBbmc/repositories/new) called {project_name} (*e.g.*, `marin-dka-1`).  While in this page,
    1. Set the repo to ['private'](https://help.github.com/articles/creating-a-new-repository/), which is the default for our the [OuhscBbmc](https://github.com/OuhscBbmc) organization.
    1. Initialize the README file.
    1. Set the .gitignore file to 'R',
    1. Set the license to 'GPL-3'.
1. Modify the [`cdw-admin`](https://github.com/orgs/OuhscBbmc/teams/cdw-admin/repositories) GitHub team.
    1. Add the repository to the list of previous CDW projects.
    1. Set the privileges to 'Admin'.
    1. Double-check that the team includes only the four CDW members (*i.e.*, @DavidBard, @wibeasley, @mand9472, & @athumann).

### User Initialization

Paste this block into a new issue called **User Initialization**. This issue can be created by anyone on the CDW team. Replace the placeholders in curly braces with the project-specific values.

```
Email collaborators about:
- [ ] [OUHSC account names & the BBMC fileserver](https://github.com/OuhscBbmc/BbmcResources/blob/master/instructions/username.md)
- [ ] [REDCap](https://github.com/OuhscBbmc/BbmcResources/blob/master/instructions/redcap.md)
- [ ] [GitHub](https://github.com/OuhscBbmc/BbmcResources/blob/master/instructions/github.md#github-user-account-creation)
```

### Repo Settings

Paste this block into a new issue called **GitHub Repo Settings**.  This issue can be created by anyone on the CDW team.  Replace the placeholders in curly braces with the project-specific values.

```
- [ ] double-check the repo is private.  (It should have a lock icon and say 'Private' new the repo name.)
- [ ] Add repo description like `{pi-name} (PI): "{project-title}"` (eg, 'Ryan Blucker (PI): "Prevalence rates of overweight Foster care children and adolescents in in a Primary Care clinic setting"')
- [ ] initialize GitHub team
    - [ ] [create team](https://github.com/orgs/OuhscBbmc/new-team) called `{project-name}-push-pull` (*e.g.*, `marin-dka-1-push-pull`).  ([Info](https://help.github.com/articles/organizing-members-into-teams/) about teams.)
    - [ ] Add appropriate CDW/BBMC staff.
    - [ ] add researchers/collaborators, once they create their own GitHub account.  If they're not currently a member of the [OuhscBbmc team](https://github.com/OuhscBbmc), they'll need to accept the emailed invitation.  If they can't find the invitation emailed to them, they should see a banner if they go to https://github.com/OuhscBbmc (that asks if they accept our invitation to join our organization).
    - [ ] add the appropriate repository.  ([Info](https://help.github.com/articles/managing-team-access-to-an-organization-repository/) )
- [ ] Add [topics](https://help.github.com/articles/about-topics/).  
    * All CDW projects should be labeled w/ [`bbmc-collaborator`](https://github.com/search?q=topic%3Abbmc-collaborator+org%3AOuhscBbmc&type=Repositories) and [`clinical-data-warehouse`](https://github.com/search?q=topic%3Aclinical-data-warehouse+org%3AOuhscBbmc&type=Repositories).
    * Add a topic or two for the content/field of the research (eg, ['obesity'](https://github.com/search?q=topic%3Aobesity+org%3AOuhscBbmc&type=Repositories),  ['asthma'](https://github.com/search?q=topic%3Aasthma+org%3AOuhscBbmc&type=Repositories)).
```

### Populate Repo

Paste this block into a new issue called **Add skeleton**.  This issue can be created by anyone on the CDW team.  Replace the placeholders in curly braces with the project-specific values.
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
        * command line with `mv ./utility/eager.gitignore .gitignore` for UNIX
        * command prompt with `move ./utility/eager.gitignore .gitignore` for WINDOWS
- [ ] Rproj file (and rename to '{project-name}.Rproj'; eg, 'marin-dka-1.Rproj')

```

### Initialize README in root directory

Paste this block into a new issue called **Initialize README**.  This issue can be created by anyone on the CDW team.  Replace the placeholders in curly braces with the project-specific values.

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

Paste this block into a new issue called **Check IRB-approved personnel**.    This issue can be created by anyone on the CDW team.  Replace the placeholders in curly braces with the project-specific values.

```
@athumann, please check that everyone (with access to the S drive and to the REDCap cache) have been approved by the IRB to view PHI related to this project.  This includes
- [ ] CDW/BBMC staff
- [ ] Investigators, project managers, research assistants, etc

Then please
- [ ] add the approved names to the `README.md` file in the repo's root directory.

```

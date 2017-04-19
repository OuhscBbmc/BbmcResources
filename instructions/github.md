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

### IRB-Approved personnel

Paste this block into a new issue called *Check IRB-approved personnel*.
``
@zantry, please check that everyone (with access to the S drive and to the REDCap cache) have been approved by the IRB to view PHI related to this project.  This includes
- [ ] CDW/BBMC staff
- [ ] Investigators, project managers, research assistants, etc

Then please
- [ ] add the approved names to the [`README.md`](README.md) file.

```

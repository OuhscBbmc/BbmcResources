# GitHub Advanced Tasks

### Recovering from a bad merge on the master branch

I've never had good luck with the [revert](https://git-scm.com/docs/git-revert) command.  I'm more comfortable with something along these steps: 
(These aren't perfectly recorded, but are close.  The next time I do it, I'll try figure out the git commands, instead of the webpage steps.)

1. Ask everyone to stop developing on the repo
    > @Maleeha @sbohora @thomasnwilson @caston60 @DavidBard @genevamarshall
    >
    > There was problem with the merges and the status of some code is in limbo. Please don't make any changes to this repo for a few minutes while I straighten it.
1. Use the GitHub website to create a branch called `master-bad-1` (pointing at the current commit of the master).
1. Move the master back to the last good commit with `git checkout master; git pull; git reset --hard f3423` (replace the commit SHA)
1. Force push it to the central repo `git push -f`
1. If the spoiled master contained some good commits that the new master doesn't:
    1. create a dev branch from the last good commit (before it was poorly merged w/ the master) called something like `dev-2` from the GitHub webpage.  Use the history (and browse files button) to jump off from the correct commit.
    1. on your local machine, pull the new branch, then update it with the new master, then push it back to the central repo.
    1. create and accept a GitHub PR
1. Delete or update any of the dev branches
1. Tell everyone they can start working on the repo again.  (Consider if they need to delete their local repositories and reclone.)

    > The repo is operational again.  Make sure you pull all changes to yoru local repo before you develop new code.
    >
    > From now on, please commit to a dev branch, and then use a PR to bring those changes into the master branch.

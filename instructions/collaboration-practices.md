
Collaboration Practices for BBMC Data Science Projects
==================================

### GitHub

1. Review your diffs before committing.  Check for things like accidental deletions and debugging code that should be deleted (or at least commented out).

1. Keep chatter to a minimum, especially on projects with 3+ people being notified of every issue post.

1. When encountering a problem,
    * Take as much ownership as reasonable.  Don't merely report there's an error.  
    * If you can't figure it out, ask the question and describe it well.
        * what low-level file & line of code threw the error.
        * how you have tried to solve it.
    * If there's a questionable line/chunk of code, [trace](https://help.github.com/articles/tracing-changes-in-a-file/) its origin.  Not for the sake of pointing the finger at someone, but for the sake of understanding its origin and history.


### Common Code

This involves code/files that multiple people use, like the REDCap arches.

1. Run the file before committing it.  Run common downstream files too (*e.g.*, if you make a change to the arch, also run the funnel).
1. If an upstream variable name must change, alert people.  Post a GitHub issue to announce it.  Tell everyone, and search the repo (ctrl+shift+f in RStudio) to alert specific people who might be affected.

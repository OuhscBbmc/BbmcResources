Background: OUHSC has two production instances of REDCap: <https://bbmc.ouhsc.edu> and <https://redcap.ouhsc.edu>.  We are combining the two instances to reduce costs and to improve the user experience (for instance, sometimes users have projects on both instances and forget which project is on which instance).

Completed steps
---------

1. Migrate bbmc.ouhsc.edu to new hardware & server versions.  This will project new features and increased stability. (2022-07-17)
1. <redcap.ouhsc.edu> stops accepting new projects (2022-08-10)

Future steps
---------

1. Fall 2022: Projects on <redcap.ouhsc.edu> are moved to <bbmc.ouhsc.edu>.  Each <redcap.ouhsc.edu> project receives a new "Project ID".  This has several implications:
    1. A user without an account on <bbmc.ouhsc.edu> needs to create and verify a new account.  This will take about a minute per user.  It happens only once per user --not once per user per project.
    1. A migrated project's URL will change.  For instance `https://redcap.ouhsc.edu/redcap/redcap_v10.0.1/index.php?pid=1111` might become `https://redcap.ouhsc.edu/redcap/redcap_v12.5.1/index.php?pid=9999`.  We are researching approaches for automatically redirecting urls, so user links won't need to change.
    1. Hardware at <redcap.ouhsc.edu> is turned off.
1. February 2023: Integrate with OU accounts.  The same instance is accessible through <bbmc.ouhsc.edu> and <redcap.ou.edu>

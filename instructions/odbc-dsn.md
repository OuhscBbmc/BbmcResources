# ODBC Tasks

### Create Local DSN

Goal: Create a local [user ODBC DSN](https://technet.microsoft.com/en-us/library/cc879308(v=sql.105).aspx)

1. Ask a BBMC member for the following three values.  Although these aren't passwords, we don't like to publicize them, because their values could give a hacker a headstart.
    1. 'DSN Name': which must match whatever value is specified in the client software (eg, R code or Access)
    1. 'Server Name': describes the machine that contains the multiple BBMC databases
    1. 'Database Name': describes the database for your specific project
1. Download the most recent ODBC driver for SQL Server, which is [V13.1](https://www.microsoft.com/en-us/download/details.aspx?id=53339) as of March 2017.

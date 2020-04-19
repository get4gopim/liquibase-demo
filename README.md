# liquibase-demo
Performing database schema migrations is an essential task for nearly every software project. Learn some basic concepts of Liquibase, like changeSets, how to use different formats for your changelog, and how different tables work. You can also learn more about intermediate-level concepts like parameters and how to use preconditions.

For background on Liquibase, refer to the documentation
[overview](https://www.liquibase.org/documentation/index.html) section of the docs.

## Run h2 embedded database
Before you start exploring this demo, first run the h2 database.
You can download h2 db from [here](https://github.com/liquibase/liquibase/releases/download/v3.8.9/liquibase-3.8.9.tar.gz).

## Maven Profile
In order to run this maven project use the below profile.
```aidl
update-dev-database
```

## Maven Compile and Run
To update the database use the below profile.
```aidl
mvn -Pupdate-dev-database resources:resources liquibase:update -Pupdate-dev-database
```

## Maven Compile and Rollback to Tagged Version
To rollback to a specific tagged version specify the tag name.
```aidl
mvn -Pupdate-dev-database resources:resources liquibase:rollback -Dliquibase.rollbackTag=version_1.0.1
```
Lets consider we have the following versions in the DATABASECHANGELOG table.
- version_1.0
- version_1.0.0
- version_1.0.1
- version_2.0.0

If you want to rollback version_1.0.1, then it will remove the following versions as well (version_1.0.1, version_2.0.0)

When rolling back using a tag, liquibase will start at the end of your executed changesets and roll back each in reverse order until it gets to the changeset that was tagged before.

The reason liquibase does not support picking and choosing changeSets to roll back is because there is often dependencies between changesets because they often build upon each other, and so rolling back an arbitrary group of changesets in the middle often has unexpected consequences.

Prefer to put the tag as part of the changeset files, so if you have to rollback or delete all the records in the DATABASECHANGELOG you won't loose your tagging records.
 
## References
* https://www.liquibase.org/documentation/maven/index.html
* https://www.liquibase.org/documentation/core-concepts/index.html

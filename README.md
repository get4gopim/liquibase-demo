# liquibase-demo
Performing database schema migrations is an essential task for nearly every software project. Learn some basic concepts of Liquibase, like changeSets, how to use different formats for your changelog, and how different tables work. You can also learn more about intermediate-level concepts like parameters and how to use preconditions.

For background on Liquibase, refer to the documentation
[overview](https://www.liquibase.org/documentation/index.html) section of the docs.

## Maven Profile
In order to run this maven project use the below profile.
```aidl
update-dev-database
```

## Maven Compile and Run
To update the database use the below profile.
```aidl
resources:resources liquibase:update
```

## Maven Compile and Rollback to Tagged Version
To rollback to a specific tagged version specify the tag name.
```aidl
resources:resources liquibase:rollback -Dliquibase.rollbackTag=version_1.0.1
```

## References
* https://www.liquibase.org/documentation/maven/index.html
* https://www.liquibase.org/documentation/core-concepts/index.html

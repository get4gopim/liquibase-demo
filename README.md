# liquibase-demo
Liquibase Maven Demo

Maven Profile
update-dev-database

Maven Compile and Run
resources:resources liquibase:update

Maven Compile and Rollback to Tagged Version
resources:resources liquibase:rollback -Dliquibase.rollbackTag=version_1.3

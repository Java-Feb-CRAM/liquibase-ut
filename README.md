- Clone this repository
- Create a file in this directory named `liquibase.propeties`
- The file should contain the following:

```properties
changeLogFile:dbchangelog.xml
url: jdbc:mysql://localhost:3306/utopia
username: root
password: XX-YOUR MYSQL PASSWORD-XX
classpath: mysql-connector-java-8.0.23.jar
liquibase.hub.ApiKey: XX-YOUR LIQUIBASE HUB API KEY (OPTIONAL)-XX
```

- Run `liquibase update`
- To create a migration create a sql file in the migrations folder
- The migration should follow a similar template to the other migrations

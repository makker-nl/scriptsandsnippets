# Maven Cheat Sheet

## Run
### Run with separate properties
To run with a separte property file not in the jar file:

    mvn spring-boot:run -Dspring.config.location=your.properties
    
or

    mvn spring-boot:run -Dspring-boot.run.arguments=--spring.config.location=src/test/resources/application-dev.properties
    
Taken from [StackOverflow - how to pass application.properties in commandLine for a spring boot application?](https://stackoverflow.com/questions/31819300/how-to-pass-application-properties-in-commandline-for-a-spring-boot-application).

### Set active profile 
On commandline or in runconfig in IDE

    -Dspring.profiles.active=dev
 
 Taken from [Spring Profiles](https://www.baeldung.com/spring-profiles)

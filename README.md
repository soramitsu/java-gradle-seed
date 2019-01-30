# java-gradle-seed

This is a seed repository for java projects.

## Features

### [`jacoco.gradle`](./gradle/jacoco.gradle) - jacoco test coverage
 
 Tasks:
 - jacocoTestReport
 
 Produces:
 - xml report
 - html report

### [`sonarqube.gradle`](./gradle/sonarqube.gradle) - sonarqube analysis
 
 Tasks:
 - sonarqube
    - do not forget to pass `-Dsonar.login=TOKEN` to gradle
    
### [`docker.gradle`](./gradle/docker.gradle)

 Tasks:
 - docker - build image with tag `def dockerTag = [dockerRegistryUrl, dockerNamespace, "${project.name}:${version}"].join("/")`
 - dockerPush - push docker image to `dockerRegistryUrl`. You must be logged in.

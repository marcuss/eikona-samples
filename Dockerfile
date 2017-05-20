# Use an official java runtime as a base image
FROM openjdk:8-jdk

# Install maven
RUN apt-get update
RUN apt-get install -y maven

WORKDIR /code

# Prepare by downloading dependencies
ADD pom.xml /code/pom.xml
RUN ["mvn", "dependency:resolve"]
RUN ["mvn", "verify"]

# Adding source, compile and package into a fat jar
ADD src /code/src
RUN ["mvn", "package"]

EXPOSE 4567

# Run app
CMD ["java", "-jar", "target/hello-service-1.0-SNAPSHOT-jar-with-dependencies.jar"]



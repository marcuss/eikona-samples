# Use an official java runtime as a base image
FROM openjdk:8-jdk

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Make port 4567 available to the world outside this container
EXPOSE 4567

# Run app
CMD ["java", "-jar", "target/hello-service-1.0-SNAPSHOT-jar-with-dependencies.jar"]


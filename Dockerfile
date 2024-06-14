# Use the official OpenJDK 17 image as a parent image
FROM adoptopenjdk/openjdk17:alpine
#
## Set the working directory in the container
#WORKDIR /app

# Copy the packaged jar file into the container at /app
COPY target/*.jar /app.jar

# Run the jar file
CMD ["java", "-jar", "app.jar"]

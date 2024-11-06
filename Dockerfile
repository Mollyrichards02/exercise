# Use OpenJDK 17 as the base image
FROM openjdk:17-slim

# Set the working directory in the container
WORKDIR /app

# Copy the application JAR file into the container
COPY target/exercise-0.0.1-SNAPSHOT.jar app.jar

# Expose the application's port (e.g., 8080)
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]

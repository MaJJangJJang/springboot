# Base image
FROM openjdk:17-alpine

# Working directory
WORKDIR /app

# Copy the compiled Java application JAR file
COPY ./prometheus/build/libs/webapp-for-prometheus-0.0.1-SNAPSHOT.jar /app/my-application.jar

# Expose the port
EXPOSE 8080

# Command to run the Java application
CMD ["java", "-jar", "my-application.jar"]

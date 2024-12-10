# Use an official OpenJDK image as a base
FROM openjdk:11-jdk-slim

# Install maven to build the Java application (optional for dependencies management)
RUN apt-get update && apt-get install -y maven

# Set the working directory
WORKDIR /app

# Copy the Java file into the container
COPY hello.java /app

# Download the Spark Java library (can be added in the pom.xml if using Maven)
RUN wget https://repo1.maven.org/maven2/com/github/embulk/embulk-spark/2.2.0/embulk-spark-2.2.0.jar

# Compile the Java program
RUN javac hello.java

# Expose port 5000 for the web server
EXPOSE 5000

# Command to run the Java program
CMD ["java", "hello"]

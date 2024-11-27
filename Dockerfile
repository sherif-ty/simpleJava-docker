# Use an OpenJDK base image
FROM openjdk:17

# Set working directory inside the container
WORKDIR /app

# Copy the Java application to the container
COPY hello.java .

# Compile the Java application
RUN javac hello.java

# Command to run the Java application
CMD ["java", "hello"]

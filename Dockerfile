FROM adoptopenjdk/openjdk11:alpine-jre

# Set the working directory
WORKDIR /opt/app

# Copy the JAR file from the build stage to the runtime image
COPY --from=build /app/target/spring-boot-demo-1.0.jar app.jar

# Expose the port that the app will run on
EXPOSE 8080

# Specify the entry point to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
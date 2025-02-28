FROM adoptopenjdk/openjdk11:alpine-jre

# Set working directory for the app
WORKDIR /opt/app

# Copy the JAR file from the build stage
COPY --from=build target/spring-boot-web.jar app.jar

# Expose port 8080 for the app
EXPOSE 8080

# Entry point to run the app
ENTRYPOINT ["java", "-jar", "app.jar"]
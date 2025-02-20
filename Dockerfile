# You can change this base image to anything else
# But make sure to use the correct version of Java
FROM adoptopenjdk/openjdk11:alpine-jre

# Simply the artifact path

WORKDIR /opt/app

COPY ${artifact} app.jar
EXPOSE 80
# This should not be changed
ENTRYPOINT ["java","-jar","app.jar"]

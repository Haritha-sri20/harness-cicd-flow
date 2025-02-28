FROM adoptopenjdk/openjdk11:alpine-jre

# Simply the artifact path
ARG artifact=target/spring-boot-web.jar

WORKDIR /opt/app

COPY ${artifact} app.jar

EXPOSE 8080

# This should not be changed
ENTRYPOINT ["java","-jar","app.jar"]


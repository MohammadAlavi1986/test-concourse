FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE
COPY source-code/target/*.jar app.jar
ENTRYPOINT ["java","-cp","app.jar", "me.smash.App"]

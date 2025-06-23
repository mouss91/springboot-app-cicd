FROM openjdk:26-slim-bullseye

WORKDIR /app

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} /app/hello-world.jar

ENTRYPOINT ["java", "-jar", "/app/hello-world.jar"]
FROM amazoncorretto:8-alpine
WORKDIR /usr/app

## This will grab any JAR in that folder regardless of the version string
COPY build/libs/*.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]

FROM eclipse-temurin:21-jre

WORKDIR /simple-rest

COPY target/*.jar simple-rest.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "simple-rest.jar"]
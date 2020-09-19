FROM openjdk

COPY plantuml.1.2020.16.jar /plantuml.jar

WORKDIR /source

ENTRYPOINT ["java", "-jar", "/plantuml.jar"]

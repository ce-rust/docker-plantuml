FROM ubuntu

RUN apt-get update
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -y install default-jre-headless
RUN apt-get -y install graphviz
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/*


COPY plantuml.1.2020.16.jar /plantuml.jar

WORKDIR /source

ENTRYPOINT ["java", "-jar", "/plantuml.jar"]

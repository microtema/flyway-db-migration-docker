FROM maven:3.3-jdk-8

USER root

# Set one or more individual labels
LABEL de.microtema.version="0.0.1-beta"
LABEL vendor="Microtema Incorporated"
LABEL de.microtema.release-date="2020-11-08"

WORKDIR app

COPY app/pom.xml .
COPY bootstrap/settings.xml .

ENTRYPOINT ["mvn", "flyway:migrate", "-Pdev -Doracle.jdbc.fanEnabled=false", "-s", "settings.xml"]

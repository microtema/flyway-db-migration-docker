FROM maven:3.3-jdk-8

USER root

# Set one or more individual labels
LABEL de.microtema.version="0.0.1-beta"
LABEL vendor="Microtema Incorporated"
LABEL de.microtema.release-date="2020-11-08"

WORKDIR app

COPY app .
COPY bootstrap/settings.xml .

ENTRYPOINT ["mvn", "org.flywaydb:flyway-maven-plugin:6.3.2:migrate", "-P flyway", "-s", "settings.xml", "-Pflyway -Doracle.jdbc.fanEnabled=false"]

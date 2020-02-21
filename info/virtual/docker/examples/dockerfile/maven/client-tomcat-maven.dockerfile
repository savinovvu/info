FROM maven:3-jdk-9-slim as maven3

COPY . /opt/maven/

WORKDIR /opt/maven

RUN mvn clean package

FROM tomcat:9-jre9

COPY --from=maven3 /opt/maven/germes-presentation/target/client.war /usr/local/tomcat/webapps/

ENV JAVA_OPTS="--add-modules java.xml.bind"

# docker build -t germes/client -f germes-presentation/src/main/resources/docker/client-tomcat-maven.dockerfile .
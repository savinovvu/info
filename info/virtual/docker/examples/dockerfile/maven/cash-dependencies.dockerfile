FROM maven:3-jdk-9-slim as maven3

COPY pom.xml /opt/maven/pom.xml
COPY germes-admin/pom.xml /opt/maven/germes-admin/pom.xml
COPY germes-model/pom.xml /opt/maven/germes-model/pom.xml
COPY germes-persistence/pom.xml /opt/maven/germes-persistence/pom.xml
COPY germes-rest/pom.xml /opt/maven/germes-rest/pom.xml
COPY germes-service/pom.xml /opt/maven/germes-service/pom.xml
COPY germes-presentation/pom.xml /opt/maven/germes-presentation/pom.xml

WORKDIR /opt/maven

# install dependency, if not installed.
RUN mvn verify

COPY . /opt/maven/

RUN mvn clean package

FROM tomcat:9-jre9

RUN rm -rf /usr/local/tomcat/webapps/ROOT

COPY --from=maven3 /opt/maven/germes-presentation/target/client.war /usr/local/tomcat/webapps/ROOT.war
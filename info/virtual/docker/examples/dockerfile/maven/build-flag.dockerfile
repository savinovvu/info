FROM maven:3-jdk-9-slim as maven3

ARG build_flag

COPY pom.xml /opt/maven/pom.xml
COPY germes-admin/pom.xml /opt/maven/germes-admin/pom.xml
COPY germes-model/pom.xml /opt/maven/germes-model/pom.xml
COPY germes-persistence/pom.xml /opt/maven/germes-persistence/pom.xml
COPY germes-rest/pom.xml /opt/maven/germes-rest/pom.xml
COPY germes-service/pom.xml /opt/maven/germes-service/pom.xml
COPY germes-presentation/pom.xml /opt/maven/germes-presentation/pom.xml

WORKDIR /opt/maven

RUN mvn verify

COPY . /opt/maven/

RUN mvn clean package $buildflag && cp /opt/maven/germes-presentation/target/client.war /opt && \
    cp /opt/maven/germes-admin/target/admin.war /opt && \
    rm -rf /opt/maven

#docker build --build-arg build_flag=-Pglassfish -t germes/base:glassfish -f germes-presentation/src/main/resources/docker/project-maven.dockerfile .

#------- another example
FROM germes/base:glassfish as maven3

FROM glassfish:5

ARG war_path

COPY --from=maven3 $war_path /glassfish5/glassfish/domains/domain1/autodeploy/



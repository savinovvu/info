FROM maven:3-jdk-9-slim as maven3

ARG build_flag

RUN apt-get update && apt-get install -y gnupg && \
     curl -sL https://deb.nodesource.com/setup_8.x | bash - && apt-get install -y nodejs && \
     apt-get install -y build-essential

COPY germes-web/client/package.json /opt/maven/germes-web/client/package.json
WORKDIR /opt/maven/germes-web/client

RUN npm install

COPY pom.xml /opt/maven/pom.xml
COPY germes-admin/pom.xml /opt/maven/germes-admin/pom.xml
COPY germes-model/pom.xml /opt/maven/germes-model/pom.xml
COPY germes-persistence/pom.xml /opt/maven/germes-persistence/pom.xml
COPY germes-rest/pom.xml /opt/maven/germes-rest/pom.xml
COPY germes-service/pom.xml /opt/maven/germes-service/pom.xml
COPY germes-web/pom.xml /opt/maven/germes-web/pom.xml

WORKDIR /opt/maven

RUN mvn verify -Dmaven.exec.skip=true -Dangular.dist.folder=.

COPY . /opt/maven/

RUN mvn clean package $buildflag && cp /opt/maven/germes-web/target/client.war /opt && \
    cp /opt/maven/germes-admin/target/admin.war /opt && \
    rm -rf /opt/maven
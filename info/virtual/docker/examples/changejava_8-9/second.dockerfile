FROM tomcat:9-jre9

ADD build/libs/client.war /usr/local/tomcat/webapps/

ENV JAVA_OPTS="--add-modules java.xml.bind"
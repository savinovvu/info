FROM tomcat:9-jre9
RUN rm -rf /usr/local/tomcat/webapps/ROOT
ADD build/libs/client.war /usr/local/tomcat/webapps/ROOT.war
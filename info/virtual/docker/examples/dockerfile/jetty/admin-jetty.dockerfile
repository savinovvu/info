FROM jetty:9.4-alpine


ADD build/libs/something.war /var/lib/jetty/webapps/
ADD src/main/resources/admin.xml /var/lib/jetty/webapps/
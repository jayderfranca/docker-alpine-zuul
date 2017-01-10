FROM tomcat:7-jre8-alpine

RUN cd /usr/local/tomcat/webapps &&\
    rm -Rf ROOT docs examples host-manager manager &&\
    mkdir ROOT &&\
    cd ROOT &&\
    wget -q http://repo1.maven.org/maven2/com/netflix/zuul/zuul-netflix-webapp/1.2.2/zuul-netflix-webapp-1.2.2.war &&\
    unzip -o zuul-netflix-webapp-1.2.2.war &&\
    rm zuul-netflix-webapp-1.2.2.war

ADD config.properties /usr/local/tomcat/webapps/ROOT/WEB-INF/classes/config.properties
ADD zuul-test.properties /usr/local/tomcat/webapps/ROOT/WEB-INF/classes/zuul-test.properties
  
EXPOSE 8080

ENTRYPOINT ["/usr/local/tomcat/bin/catalina.sh"]

CMD ["run"]

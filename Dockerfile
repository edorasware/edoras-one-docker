FROM tomcat:7-jre7

MAINTAINER "Roger Villars <roger.villars@edorasware.com>"

RUN ["rm", "-fr", "/usr/local/tomcat/webapps/ROOT"]
COPY deploy/*.war /usr/local/tomcat/webapps/ROOT.war

CMD ["catalina.sh", "run"]
FROM tomcat:9.0.12-jre8
ARG nexusip=123
RUN apt-get install wget -y
WORKDIR /usr/local/tomcat/webapps/
RUN wget --user=deployment --password=deployment123 "http://${nexusip}:8081/nexus/service/local/artifact/maven/redirect?r=snapshots&g=com.efsavage&a=hello-world-war&v=LATEST&e=war" --content-disposition


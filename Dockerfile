FROM tomcat 
EXPOSE 8080
RUN mv . /target/petclinic.war /opt/tomcat/webapps/*

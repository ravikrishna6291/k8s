FROM tomcat 
EXPOSE 8080
COPY . /target/petclinic.war /opt/tomcat/webapps/

FROM tomcat 
EXPOSE 8080
mv target/petclinic.war /opt/tomcat/webapps/

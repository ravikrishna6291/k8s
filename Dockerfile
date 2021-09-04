FROM tomcat 
EXPOSE 8080
COPY target/petclinic.war root@10.0.1.110:/opt/tomcat/webapps/

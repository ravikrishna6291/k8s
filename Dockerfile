FROM tomcat 
EXPOSE 8080
COPY target/petclinic.war ec2-user@10.0.1.110/usr/local/tomcat/webapps/

FROM tomcat 
EXPOSE 8080
COPY /var/lib/jenkins/workspace/petclinic-eks/target/petclinic.war /opt/tomcat/webapps/

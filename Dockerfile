FROM tomcat 
EXPOSE 8080
RUN mv /var/lib/jenkins/workspace/petclinic-eks/target/petclinic.war /opt/tomcat/webapps/

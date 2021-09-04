FROM tomcat 
EXPOSE 8080
RUN cp /target/petclinic.war root@10.0.1.110:/opt/tomcat/webapps/

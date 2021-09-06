FROM maven:3.6.3-openjdk-11 AS maven
WORKDIR /tmp
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.52/bin/apache-tomcat-9.0.52-windows-x64.zip
RUN  unzip apache-tomcat-9.0.52-windows-x64.zip
RUN mv apache-tomcat-9.0.52 tomcat
RUN chmod -R 700 tomcat
WORKDIR /tmp
WORKDIR /tmp/spring-framework-petclinic
RUN pwd
RUN mvn clean package
WORKDIR /tmp/spring-framework-petclinic/target                  
RUN cp -R petclinic.war /tmp/tomcat/webapps/
EXPOSE 8080
CMD chmod +x /tmp/tomcat/bin/catalina.sh
CMD /tmp/tomcat/bin/catalina.sh run

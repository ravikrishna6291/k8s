FROM maven:3.6.3-openjdk-11 AS maven
WORKDIR /opt
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.52/bin/apache-tomcat-9.0.52-windows-x64.zip
RUN  unzip apache-tomcat-9.0.52-windows-x64.zip
RUN mv apache-tomcat-9.0.52 tomcat
RUN chmod -R 700 tomcat
WORKDIR /opt
RUN git clone git@github.com:ravikrishna6291/spring-petclinic.git
WORKDIR /opt/spring-framework-petclinic
RUN mvn clean package
WORKDIR /opt/spring-framework-petclinic/target
RUN cp -R petclinic.war /opt/tomcat/webapps/
EXPOSE 8080
CMD chmod +x /opt/tomcat/bin/catalina.sh
CMD /opt/tomcat/bin/catalina.sh run

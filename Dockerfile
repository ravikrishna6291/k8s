FROM maven:3.8.1-openjdk-11 as BUILD
COPY . /opt/maven38/
RUN mvn -f /opt/maven38/bin/pom.xml clean package

FROM tomcat 
EXPOSE 8080
COPY target/petclinic.war /usr/local/tomcat/webapps/

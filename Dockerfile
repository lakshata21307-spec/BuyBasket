FROM tomcat:8.5-jdk8-temurin

RUN rm -rf /usr/local/tomcat/webapps/ROOT

COPY dist/ECommerceWebsite.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

FROM tomcat:9
# Download the .war file from Nexus using wget and save as ROOT.war
RUN  wget -O /usr/local/tomcat/webapps/ROOT.war  http://admin:admin@3.111.30.254:8081/repository/release/com/jdevs/studentapp/2.5-SNAPSHOT/studentapp-2.5-20240104.182912-1.war
EXPOSE 8090
CMD ["catalina.sh", "run"]

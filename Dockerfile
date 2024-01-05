FROM tomcat:9
# Download the .war file from Nexus using wget and save as ROOT.war
COPY /var/lib/jenkins/workspace/jenkins-ECR/target/studentapp-2.5-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8090
CMD ["catalina.sh", "run"]

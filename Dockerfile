# Use the official Tomcat 9.0 with JDK 11 image as the base image
#FROM tomcat:9.0-jdk11
FROM tejaswini25/javabaseimage:v3

ENV MY_VAR=my_value


# Copy any additional files or configurations to the container
COPY target/MarketPlace.war /usr/local/tomcat/webapps/ROOT.war


# Expose any necessary ports
EXPOSE 8080

# Define the command to start the Tomcat server
CMD ["catalina.sh", "run"]

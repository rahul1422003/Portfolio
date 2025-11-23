# Use official Tomcat 10 image (Jakarta EE 9 compatible)
FROM tomcat:10.1

# Clean default ROOT folder
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your WAR file to Tomcat webapps as ROOT.war
COPY target/portfolio.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]

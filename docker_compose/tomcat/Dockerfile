#
# Docker file to build tomcat 
#

# Use tomcat  as the base image
FROM tomcat

# Author Name
MAINTAINER Sathiyaraj Periyannan


# Copy the inventory file
ADD  ServletDBLog4jExample.war /usr/local/tomcat/webapps/

# Expose the port
EXPOSE 8080


# Command to start
CMD ["catalina.sh", "run"]

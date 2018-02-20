#
# Docker file to build the ngnix
#

# Use ngnix as the base image
FROM nginx

# Author Name
MAINTAINER Sathiyaraj Periyannan

# Copy default conf
ADD nginx.conf /etc/nginx/nginx.conf

# Expose the port
EXPOSE 80

# Command to start
CMD [ "nginx", "-g", "daemon off;" ] 


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

# copy the entry point
COPY nginxentry.sh /
RUN chmod 777 /nginxentry.sh

# Entrypoint
ENTRYPOINT ["/nginxentry.sh"]


# Command to start
CMD [ "nginx", "-g", "daemon off;" ] 


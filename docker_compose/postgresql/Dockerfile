#
# Docker file to build the postgresql annd tomcat 
#

# Use Centos as the base image
FROM centos

# Author Name
MAINTAINER Sathiyaraj Periyannan

#obtain the proxy details as arguments
ARG  http_proxy
ARG  https_proxy

# pass  the proxy details as environment variable
ENV http_proxy=$http_proxy
ENV https_proxy=$https_proxy

# Install EPEL package to locate ansible
RUN  yum install -y epel-release

# Install ansible 
RUN yum install -y ansible 

# Copy the inventory file
ADD hosts /etc/ansible/hosts

# Copy the provisioning playbook
ADD provision_postgres.yml provision.yml 

# Execute the playbook
RUN ansible-playbook provision.yml -c local

# Expose the port
EXPOSE 5432

# copy the entry point
COPY postgresentry.sh /
RUN chmod 777 /postgresentry.sh

# Entrypoint
ENTRYPOINT ["/postgresentry.sh"]

# Command to start
CMD [ "postgres" ] 


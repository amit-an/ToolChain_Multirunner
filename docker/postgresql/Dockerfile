#
# Docker file to build the postgresql annd tomcat 
#

# Use Centos as the base image
FROM centos

# Author Name
MAINTAINER Sathiyaraj Periyannan

ENV http_proxy=http://satraj_p:Kuppulakshmi\$1@vpln-proxy:80
ENV https_proxy=http://satraj_p:Kuppulakshmi\$1@vpln-proxy:80

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

# Entrypoint
ENTRYPOINT ["/postgresentry.sh"]

# Command to start
CMD [ "postgres" ] 


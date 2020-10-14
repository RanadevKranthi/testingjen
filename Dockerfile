# Pull base image.as ubuntu
FROM centos:7

# Install Nginx.
RUN yum -y update && yum install -y nginx
  
# Expose ports.
EXPOSE 80
EXPOSE 443

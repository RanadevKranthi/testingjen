# Pull base image.as ubuntu
FROM centos:7

# Install Nginx.
RUN yum -y update 
RUN yum install -y httpd
  
# Expose ports.
EXPOSE 80
EXPOSE 443

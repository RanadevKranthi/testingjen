# Pull base image.as ubuntu
FROM centos:7

# Install Nginx.
RUN 
  apt-get update && \
  apt-get install -y nginx && \
  
# Expose ports.
EXPOSE 80
EXPOSE 443

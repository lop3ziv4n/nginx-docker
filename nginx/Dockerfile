# Pull base image
FROM nginx

# Environment variables required for this build
ENV SIDCA_TCP=8980

# Add files required to build this image
COPY config/nginx.conf /etc/nginx/nginx.conf

# Default http port
EXPOSE $SIDCA_TCP

# Volumes from native host
VOLUME ["/var/log/nginx"]
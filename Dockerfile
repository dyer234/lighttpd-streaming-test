# Use Debian as the base image
FROM debian:latest

RUN apt-get update && apt-get install -y \
    lighttpd \
    lighttpd-modules-* \
    && apt-get clean

# Copy the Lighttpd configuration file
COPY lighttpd.conf /etc/lighttpd/lighttpd.conf
COPY index.html /var/www/html/index.html

# Create the videos directory
RUN mkdir -p /var/www/html/videos

# Expose port 80
EXPOSE 80

# Start Lighttpd
CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]

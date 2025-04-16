# Use the official Apache HTTPD image
FROM httpd:2.4

# Set the working directory in the container
WORKDIR /usr/local/apache2/htdocs

# Copy htdocs files into the container
COPY ./htdocs /usr/local/apache2/htdocs

RUN chmod -R 755 /usr/local/apache2/htdocs

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Apache in the foreground and enable cron service
CMD httpd -D FOREGROUND
# Use the official PHP Apache image
FROM php:8.2-apache

# Set the working directory
WORKDIR /var/www/html

# Copy all PHP files into the Apache root directory
COPY index.php /var/www/html/index.php
COPY makecode.php /var/www/html/makecode.php
COPY md5.php /var/www/html/md5.php

# Expose port 80
EXPOSE 80

# Start Apache server
CMD ["apache2-foreground"]

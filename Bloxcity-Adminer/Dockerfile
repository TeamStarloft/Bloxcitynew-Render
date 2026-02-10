# Use official PHP + Apache
FROM php:8.2-apache

# Enable Apache rewrite (optional)
RUN a2enmod rewrite

# Remove any existing index to avoid conflicts
RUN rm -f /var/www/html/index.html

# Download latest Adminer directly into Apache root
RUN curl -L -o /var/www/html/index.php https://www.adminer.org/latest.php

# Expose the port Render expects
EXPOSE 8080

# Start Apache in foreground
CMD ["apache2-foreground"]
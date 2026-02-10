# Use PHP with Apache
FROM php:8.2-apache

# Download latest Adminer
RUN curl -o /var/www/html/index.php https://www.adminer.org/latest.php

# Expose port 8080 (internal container port)
EXPOSE 8080

# Start Apache
CMD ["apache2-foreground"]
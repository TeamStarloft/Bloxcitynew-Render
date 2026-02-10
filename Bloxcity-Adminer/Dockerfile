# Use PHP with Apache
FROM php:8.2-apache

# Ensure mod_rewrite is enabled (optional but safe)
RUN a2enmod rewrite

# Download latest Adminer directly into Apache root
RUN curl -o /var/www/html/index.php https://www.adminer.org/latest.php

# Set Apache DocumentRoot explicitly
RUN sed -i 's|DocumentRoot /var/www/html|DocumentRoot /var/www/html|' /etc/apache2/sites-available/000-default.conf

# Expose port 8080
EXPOSE 8080

# Start Apache
CMD ["apache2-foreground"]
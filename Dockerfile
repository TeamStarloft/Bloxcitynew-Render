# Use official PHP 8.2 FPM image
FROM php:8.2-fpm

# Set working directory
WORKDIR /var/www/html

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libonig-dev \
    libzip-dev \
    zip \
    unzip \
    git \
    curl \
    nodejs \
    npm \
    && docker-php-ext-install pdo_pgsql mbstring zip

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Copy the application code
COPY . .

# Install PHP dependencies
RUN composer install --no-dev --optimize-autoloader

# Build frontend assets if package.json exists
RUN if [ -f "package.json" ]; then \
      npm install && npm run build; \
    fi

# Optimize Laravel caches
RUN php artisan config:cache
RUN php artisan route:cache
RUN php artisan view:cache

# Expose port for Render
EXPOSE 8080

# Start Laravel built-in server
CMD ["php", "-S", "0.0.0.0:8080", "-t", "public"]
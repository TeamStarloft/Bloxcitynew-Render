# Use official PHP 8.2 FPM image
FROM php:8.2-fpm

# Set working directory
WORKDIR /var/www/html

# Install system dependencies and PHP extensions
RUN apt-get update && apt-get install -y \
    libonig-dev \
    libzip-dev \
    zip \
    unzip \
    git \
    curl \
    gnupg \
    libpq-dev \
    nodejs \
    npm \
    && docker-php-ext-install pdo_pgsql mbstring zip \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Install Composer globally
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Copy Laravel app files
COPY . .

# Install PHP dependencies (creates vendor folder)
RUN composer install --no-dev --optimize-autoloader

# Optional: Build frontend assets if package.json exists
RUN if [ -f "package.json" ]; then npm install && npm run build; fi

# Expose port 8080 for Render
EXPOSE 8080

# Start Laravel built-in server
CMD ["php", "-S", "0.0.0.0:8080", "-t", "public"]
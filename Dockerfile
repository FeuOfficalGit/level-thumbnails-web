FROM php:8.1-apache

# Install only the necessary database extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy the repository files directly into Apache's HTML root
COPY . /var/www/html/

# Grant the server permission to save incoming thumbnail images
RUN chmod -R 777 /var/www/html/

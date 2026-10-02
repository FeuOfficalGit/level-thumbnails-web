FROM php:8.1-cli

# Install database tools natively
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Set the working directory inside the container
WORKDIR /var/www/html

# Copy all repository files over
COPY . .

# Expose the network port
EXPOSE 80

# Start a clean, built-in PHP web server without Apache
CMD ["php", "-S", "0.0.0.0:80"]

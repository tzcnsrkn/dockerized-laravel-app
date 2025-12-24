FROM php:8.2-fpm-alpine

WORKDIR /var/www/html

# If no CMD exists here, the CMD from base image will be executed.
RUN docker-php-ext-install pdo pdo_mysql
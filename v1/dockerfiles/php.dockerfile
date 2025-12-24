FROM php:8.2-fpm-alpine

WORKDIR /var/www/html

# The prod deployment strategy is to eliminate the need of defining bind mounts 
# in app level (phpapp).
COPY src .

# If no CMD exists here, the CMD from base image will be executed.
RUN docker-php-ext-install pdo pdo_mysql

# hacking the laravel bug -> laravel.log: Permission denied.
RUN chown -R www-data:www-data /var/www/html
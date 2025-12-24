FROM nginx:stable-alpine

WORKDIR /etc/nginx/conf.d/

COPY nginx/nginx.conf .

# nginx expects name "default.conf"
RUN mv nginx.conf default.conf

WORKDIR /var/www/html

COPY src .

# no need to specify CMD or ENTRYPOINT - nginx already has one to start the web server.
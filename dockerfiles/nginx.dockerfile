FROM nginx:stable-alpine

WORKDIR /etc/nginx/conf.d

COPY nginx/nginx.config .

RUN mv nginx.conf default.conf # rename nginx to default

WORKDIR /var/www/html

COPY src .
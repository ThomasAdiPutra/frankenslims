FROM dunglas/frankenphp:php8.4-alpine

RUN apk add --no-cache zip && \
    install-php-extensions \
    pdo_mysql \
    mysqli \
    gd \
    gettext \
    mbstring

COPY Caddyfile /etc/frankenphp/Caddyfile

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
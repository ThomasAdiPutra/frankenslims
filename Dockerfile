FROM dunglas/frankenphp:php8.4-alpine

RUN apk add --no-cache \
    zip \
    yaz \
    yaz-dev \
    icu-dev \
    oniguruma-dev \
    autoconf g++ make
    
RUN install-php-extensions \
    pdo_mysql \
    mysqli \
    gd \
    gettext \
    mbstring \
    intl

COPY Caddyfile /etc/frankenphp/Caddyfile

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

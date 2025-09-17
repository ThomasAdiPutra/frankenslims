FROM dunglas/frankenphp:php8.3-alpine

RUN apk add --no-cache \
    build-base \
    icu-dev \
    oniguruma-dev \
    autoconf g++ make wget

# Build yaz dari source
RUN wget http://ftp.indexdata.dk/pub/yaz/yaz-5.34.0.tar.gz \
 && tar -xvzf yaz-5.34.0.tar.gz \
 && cd yaz-5.34.0 \
 && ./configure && make && make install
    
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

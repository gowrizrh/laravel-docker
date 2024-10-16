FROM php:8.3-fpm-bullseye AS php

COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/

RUN install-php-extensions @composer opcache redis pdo_pgsql pcntl

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get --no-install-recommends --assume-yes --quiet install nodejs git \
    && rm -rf /var/lib/apt/lists/*

COPY --chown=root:root config /

ADD https://github.com/mailhog/mhsendmail/releases/download/v0.2.0/mhsendmail_linux_amd64 /usr/local/bin/mhsendmail

RUN chmod +x /usr/local/bin/mhsendmail

RUN mkdir -p /var/www/html

WORKDIR /var/www/html

FROM php AS php-debug

USER root

RUN install-php-extensions xdebug

COPY --chown=root:root config-debug /

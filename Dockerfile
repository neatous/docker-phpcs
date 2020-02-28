FROM neatous/phpbase
MAINTAINER Martin Venuš <martin.venus@neatous.cz>

RUN docker-php-ext-install pcntl

RUN echo "memory_limit=-1" > $PHP_INI_DIR/conf.d/memory-limit.ini

WORKDIR /var/www/html/
CMD ["vendor/bin/phpcs"]

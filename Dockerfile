FROM wordpress:4.9.8-php7.2-apache

RUN docker-php-ext-install exif
RUN apt-get update && apt-get install -y libmemcached-dev zlib1g-dev \
  && pecl install memcached-3.0.3 \
  && docker-php-ext-enable memcached

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["apache2-foreground"]

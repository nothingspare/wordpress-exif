FROM "wordpress:4.9.8-php7.2-apache"

RUN docker-php-ext-install exif

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["apache2-foreground"]

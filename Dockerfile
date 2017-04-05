FROM php:7-apache
MAINTAINER Phy <dockerfile@phy25.com>

ADD index.html /var/www/index.html

EXPOSE 80
VOLUME ["/var/www"]
CMD ["apache2-foreground"]
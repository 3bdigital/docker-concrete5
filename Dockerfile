FROM php:5.6-apache

RUN apt-get update
RUN apt-get install virt-what unzip wget php5-mysql php5-curl patch php5-mcrypt php5-gd -y
RUN a2enmod rewrite

EXPOSE 80 443

CMD ["apache2-foreground"]
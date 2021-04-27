# Desde donde voy a obtener la imagen base

FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get -y install \
    apache2 \
    php7.4 \
    php7.4-cli \
    libapache2-mod-php7.4 \
    php7.4-gd \
    php7.4-curl \
    php7.4-json \
    php7.4-mbstring \
    php7.4-mysql \
    php7.4-xml \
    php7.4-xsl \
    php7.4-zip

RUN a2enmod php7.4
RUN a2enmod rewrite

RUN sed -i "s/short_open_tag = Off/short_open_tag = On/" /etc/php/7.4/apache2/php.ini
RUN sed -i "s/error_reporting = .*$/error_reporting = E_ERROR | E_WARNING | E_PARSE/" /etc/php/7.4/apache2/php.ini

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid

#ADD apache-config.conf /etc/apache2/sites-enabled/000-default.conf

COPY code /var/www/

CMD /usr/sbin/apache2ctl -D FOREGROUND



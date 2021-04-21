# Desde donde voy a obtener la imagen base

FROM ubuntu

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update 

RUN apt -y install apache2

COPY code /var/www

CMD ["apache2"]



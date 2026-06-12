FROM phpmyadmin:apache

USER root

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

USER www-data

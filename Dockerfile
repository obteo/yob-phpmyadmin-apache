FROM phpmyadmin:apache

USER root

# SOLO fix minimo compatibilità Pterodactyl
RUN mkdir -p /var/run/apache2 \
    && chown -R www-data:www-data /var/run/apache2

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

USER www-data

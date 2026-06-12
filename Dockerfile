FROM phpmyadmin:apache

USER root

RUN mkdir -p /var/run/apache2 /var/lib/apache2 /tmp/phpmyadmin \
    && chown -R www-data:www-data /var/run/apache2 /var/lib/apache2 /tmp/phpmyadmin \
    && echo "ServerName localhost" >> /etc/apache2/apache2.conf

ENV APACHE_RUN_DIR=/tmp
ENV APACHE_PID_FILE=/tmp/apache2.pid
ENV APACHE_RUN_USER=www-data
ENV APACHE_RUN_GROUP=www-data

#  FORZA AVVIO CORRETTO
CMD ["apache2-foreground"]

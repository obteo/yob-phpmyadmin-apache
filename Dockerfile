FROM phpmyadmin:apache

USER root

# Fix SOLO permessi runtime
RUN mkdir -p /var/run/apache2 /tmp/phpmyadmin \
    && chown -R www-data:www-data /var/run/apache2 /tmp/phpmyadmin

USER www-data

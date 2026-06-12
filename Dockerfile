FROM phpmyadmin:apache

USER root

# Fix compatibilità Pterodactyl (read-only FS issues)
RUN mkdir -p /var/run/apache2 /var/lib/apache2 /tmp/phpmyadmin \
    && chown -R www-data:www-data /var/run/apache2 /var/lib/apache2 /tmp/phpmyadmin \
    && echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Sposta runtime su directory scrivibile
ENV APACHE_RUN_DIR=/tmp
ENV APACHE_PID_FILE=/tmp/apache2.pid

USER www-data

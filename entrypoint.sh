#!/bin/bash

echo "Starting phpMyAdmin (Pterodactyl stable)..."

APACHE_PORT=${SERVER_PORT:-80}

echo "Configuring Apache on port $APACHE_PORT"

sed -i "s/Listen 80/Listen ${APACHE_PORT}/g" /etc/apache2/ports.conf
sed -i "s/:80/:${APACHE_PORT}/g" /etc/apache2/sites-enabled/000-default.conf

exec apache2-foreground

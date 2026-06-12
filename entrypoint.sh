#!/bin/bash

echo "Starting phpMyAdmin (Pterodactyl stable build)..."

export APACHE_RUN_DIR=/tmp
export APACHE_PID_FILE=/tmp/apache2.pid
export APACHE_RUN_USER=www-data
export APACHE_RUN_GROUP=www-data

exec apache2-foreground

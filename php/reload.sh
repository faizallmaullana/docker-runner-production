#!/bin/bash

# Reload Docker Compose
docker exec -it php-app /bin/sh -c "apache2ctl stop"

docker compose down

docker rmi my-php-app:latest

docker compose up

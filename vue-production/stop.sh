#!/bin/bash

# Stop Docker Compose
docker compose down

docker rmi vue-app:prod

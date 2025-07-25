#!/bin/bash

echo "🧹 Apagando contenedores y limpiando entorno..."

docker compose down
docker container prune -f
# docker volume prune -f
docker network prune -f

echo "✅ Entorno limpio"
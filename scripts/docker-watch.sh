#!/bin/bash
CONTAINER="my-site"
LOG_FILE=~/my-awesome-site/logs/docker-watch.log

if ! docker ps --format '{{.Names}}' | grep -q "$CONTAINER"; then
    echo "[$(date)] $CONTAINER упал, поднимаю..." >> "$LOG_FILE"
    docker start "$CONTAINER" 2>/dev/null || docker run -d --name "$CONTAINER" -p 8080:80 -v ~/my-awesome-site/docs:/usr/share/nginx/html nginx:alpine
else
    echo "[$(date)] $CONTAINER жив" >> "$LOG_FILE"
fi

#!/bin/bash
DATE=$(date +%Y%m%d_%H%M%S)
BACKUP_DIR=~/backups/my-awesome-site-$DATE

mkdir -p ~/backups
cp -r ~/my-awesome-site "$BACKUP_DIR"

echo "✅ Бэкап сохранён в $BACKUP_DIR"

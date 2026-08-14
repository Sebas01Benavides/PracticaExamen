#!/bin/bash
FECHA=$(date +%Y%m%d_%H%M%S)
mkdir -p /tmp/backups
docker exec -t postgres-db pg_dump -U cafeboreal cafeboreal_db > "/tmp/backups/backup_${FECHA}.sql"
echo "Backup completado: /tmp/backups/backup_${FECHA}.sql"

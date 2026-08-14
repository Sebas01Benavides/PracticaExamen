#!/bin/bash
BACKUP_FILE=$1
if [ -z "$BACKUP_FILE" ]; then
    echo "Uso: ./restore.sh <archivo_backup.sql>"
    exit 1
fi
docker exec -i postgres-db psql -U cafeboreal -d cafeboreal_db < "$BACKUP_FILE"
echo "Restauración completada desde $BACKUP_FILE"

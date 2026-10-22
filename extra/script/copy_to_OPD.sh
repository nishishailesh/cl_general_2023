#!/bin/bash
IP="172.16.2.17"
SOURCE="/root/backup.new.240"
DESTINATION="root@$IP:/root/restored_data/"

sshpass -p dnarna123 rsync -avz -e --progress "$SOURCE" "$DESTINATION"

echo "Sync completed! Only new or updated files were copied."

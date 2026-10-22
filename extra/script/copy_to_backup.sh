#!/bin/bash
IP="172.16.2.11"
SOURCE="/root/backup.new.240"
DESTINATION="root@$IP:/root/restored_data/"

sshpass -p DNARNA123 rsync -avuh --progress "$SOURCE" "$DESTINATION"

echo "Sync completed! Only new or updated files were copied."

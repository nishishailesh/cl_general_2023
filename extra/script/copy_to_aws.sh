#!/bin/bash
IP="13.203.160.201"
SOURCE="/root/backup.new.240"
DESTINATION="root@$IP:/root/restored_data/"

sshpass -p DNArna@123 rsync -avz -e "ssh -o StrictHostKeyChecking=no" --progress "$SOURCE" "$DESTINATION"

echo "Sync completed! Only new or updated files were copied."

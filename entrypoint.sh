#!/bin/bash



# Start the first process
./usr/lib/x86_64-linux-gnu/proxmox-backup/proxmox-backup-api &
sleep 10
# Start the second process
./usr/lib/x86_64-linux-gnu/proxmox-backup/proxmox-backup-proxy &

while /bin/true; do
  sleep 60
done
#!/bin/bash



# Start the second process
./usr/lib/x86_64-linux-gnu/proxmox-backup/proxmox-backup-api &

# Start the second process
./usr/lib/x86_64-linux-gnu/proxmox-backup/proxmox-backup-proxy &

while /bin/true; do
  sleep 60
done
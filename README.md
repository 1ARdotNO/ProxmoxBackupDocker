
# ProxmoxBackupDocker
![Docker Image CI](https://github.com/OvrAp3x/ProxmoxBackupDocker/workflows/Docker%20Image%20CI/badge.svg?branch=master)

Docker container for running proxmox backup server in docker,
Ref:[https://pbs.proxmox.com/](https://pbs.proxmox.com/)

Docker Hub link: https://hub.docker.com/repository/docker/einar/proxmoxbackup
This image is by no means ready for production, but if you want to take PBS for a quick test spin, then this is for you.

Current limitations:

 - Only storage that is mapped with dicrectory will work.
 - ZFS might be janky(untested) password must be set manually for root
   so that you can log in (attach to container and run passwd, recommend
   to mount the /etc/passwd file so that it can be stored permanantly)

NOTE! Currently PBS is in beta, this should not be used for production!

    # docker-compose.yml
    version: '2'
    services:
      pbs:
        image: einar/proxmoxbackup
        ports:
          - 8007:8007
        volumes:
          - /etc/shadow:/etc/shadow:ro #Mounts your hosts password file as read-only, your host root password can be used to sign in
          - /pbs/config:/etc/proxmox-backup
          - /pbs/datastore:/datastore


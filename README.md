# ProxmoxBackupDocker

Docker container for running proxmox backup server in docker,

Current limitations,
Only storage that is mapped with dicrectory will work.
ZFS might be janky(untested)
password must be set manually for root so that you can log in (attach to container and run passwd, recommend to mount the /etc/passwd file so that it can be stored permanantly)
NOTE! Currently PBS is in beta, this should not be used for production!



docker run -v /var/run/docker.sock:/var/run/docker.sock \
     -v /var/lib/docker/vfs/dir:/var/lib/docker/vfs/dir patrocinio/docker-backup -addr /var/run/docker.sock $*
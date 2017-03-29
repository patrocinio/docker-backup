docker run -v /var/run/docker.sock:/docker.sock \
     -v /var/lib/docker/vfs/dir:/var/lib/docker/vfs/dir patrocinio/docker-backup -addr /docker.sock $*
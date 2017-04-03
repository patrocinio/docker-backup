docker run -v /var/run/docker.sock:/var/run/docker.sock \
     -v /var/lib/docker/vfs/dir:/var/lib/docker/vfs/dir -e DOCKER_API_VERSION=1.24 patrocinio/docker-backup -addr /var/run/docker.sock $*
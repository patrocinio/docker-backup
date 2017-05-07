docker run -v /var/run/docker.sock:/var/run/docker.sock \
     -v /var/lib/docker/volumes:/var/lib/docker/volumes -e DOCKER_API_VERSION=1.24 \
     patrocinio/docker-backup -addr /var/run/docker.sock $*
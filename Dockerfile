FROM       alpine
MAINTAINER Johannes 'fish' Ziemke <fish@docker.com> (@discordianfish)

ENV  GOPATH /go
ENV APPPATH $GOPATH/src/github.com/docker-infra/docker-backup
COPY . $APPPATH
RUN apk add --update -t build-deps go git && cd $APPPATH 

WORKDIR    /docker-backup
ENTRYPOINT [ "/bin/sh" ]

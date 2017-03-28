FROM       alpine
MAINTAINER Johannes 'fish' Ziemke <fish@docker.com> (@discordianfish)

ENV  GOPATH /go
ENV APPPATH $GOPATH/src/github.com/docker-infra/docker-backup
RUN apk add --update -t build-deps go git 
COPY . $APPPATH
RUN cd $APPPATH && go get -d

WORKDIR    /docker-backup
ENTRYPOINT [ "/bin/sh" ]

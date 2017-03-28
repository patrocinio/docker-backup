FROM       alpine
MAINTAINER Johannes 'fish' Ziemke <fish@docker.com> (@discordianfish)

ENV  GOPATH /go
ENV APPPATH $GOPATH/src/github.com/patrocinio/docker-backup
RUN apk add --update -t build-deps go git 
COPY . $APPPATH
RUN cd $APPPATH && go get -d -v

WORKDIR    /docker-backup
ENTRYPOINT [ "/bin/sh" ]
